import requests
import glob
import pathlib
import re
import os
from os import listdir
from os.path import isfile, join
import sys

def getFileNamesWithTranslations():
    sys.stdout.write("Get all Strings to translate...\n")

    libPathString = str(pathlib.Path.cwd().parent.resolve())

    allStringsToTranslate = []
    fileNamesWithTranslation = {}

    for path in glob.glob(libPathString + "/**", recursive=True):
        if ".dart" in path :
            with open(path, 'r+', encoding="utf-8") as file:
                data = [line.strip() for line in file.readlines()]
                data = ''.join(data)
                words = re.findall(r"'[^'\\]*(?:\\.[^'\\]*)*'\s*\.tr\b", data)
                translationForSpecificFile = []
                if words:
                    for word in words:
                        # avoid duplicates
                        if word not in allStringsToTranslate:
                            allStringsToTranslate.append(word)
                            translationForSpecificFile.append(word[:-3])
                    
                    if translationForSpecificFile:
                        fileName = os.path.basename(path)
                        fileNamesWithTranslation[fileName] = translationForSpecificFile
    sys.stdout.write("✅ Done!\n\n\n")

    return fileNamesWithTranslation


def write_translations_to_base_file(fileNamesWithTranslation):
    sys.stdout.write("Update base translation file...\n")

    basePath = str(pathlib.Path.cwd().resolve()) + "/translations/base_translations/de.dart"

    with open(basePath, 'r',  encoding="utf-8") as fileInput:
        fileData = fileInput.read().strip()[:-2]

        firstLine = fileData.partition('\n')[0]
        
        with open(basePath, 'w+',  encoding="utf-8") as fileOutput:
            fileOutput.write(firstLine)
            
            for fileName in fileNamesWithTranslation.keys():  
                # add file-name as "header" for a better overview   
                fileOutput.write( '\n\n// '  + fileName)
                for translation in fileNamesWithTranslation[fileName]:                   
                    fileOutput.write('\n\t' + translation + ': ' + translation + ',')
            
            fileOutput.write('\n};')

    sys.stdout.write("✅ Done! \n\n\n")
    

def translate_text_with_deepl(text_to_translate, target_lang_code):
    URL = "https://api-free.deepl.com/v2/translate"
    params = {
        "auth_key": "5bcb1202-12d5-2e63-f8ca-b087c47cad1b:fx", #TODO: dotenv package for auth key from .env,
        "Content-Type": "application/x-www-form-urlencoded",
        "text": text_to_translate,
        "target_lang": target_lang_code,
        "source_lang": "DE"
    }
    re = requests.post(URL, params)
    return re.json()["translations"][0]["text"]

def update_translations(path, fileNamesWithTranslation):
    sys.stdout.write("Update translations in " + os.path.basename(path) +  "...\n")

    allTranslations = []
    for translationsForSpecificFile in fileNamesWithTranslation.values():
        allTranslations += translationsForSpecificFile

    missingTranslationCounter = 0

    with open(path, 'r',  encoding="utf-8") as fileInput:
        fileData = fileInput.read().strip()[:-2]

        firstLine = fileData.partition('\n')[0]

        oldTranslations = {}
   
        keysAndValuesWithoutFirstLine = re.sub(r'^.*?{', '', fileData)

        keysAndValuesWithoutFileNameComments =re.sub(r'^//.*\n?', '', keysAndValuesWithoutFirstLine, flags=re.MULTILINE)

        splittedKeysAndValues = keysAndValuesWithoutFileNameComments.split(',\n')
        for keyAndValue in splittedKeysAndValues:
            # last elemnt is empty so this check is necessary
            if '\':' in keyAndValue:
                keyAndValueSeperated = keyAndValue.split('\':')
                oldTranslations[keyAndValueSeperated[0].strip() + '\''] = keyAndValueSeperated[1].strip()
        for key in list(oldTranslations.keys()):
            if key not in allTranslations:
                del oldTranslations[key]
        
        with open(path, 'w+',  encoding="utf-8") as fileOutput:
            fileOutput.write(firstLine)
            for fileName in fileNamesWithTranslation.keys():  
                # add file-name as "header" for a better overview   
                fileOutput.write( '\n\n// '  + fileName)
                for translation in fileNamesWithTranslation[fileName]:
                    translation_stripped = translation[1:-1]
                    
                    translated_text = translate_text_with_deepl(text_to_translate=translation_stripped, target_lang_code=os.path.basename(path)[:-len('.dart')])
                    fileOutput.write('\n\t' + translation + ': ' + '\'' +  translated_text + '\'' +  ',')
            
            fileOutput.write('\n};')

            sys.stdout.write("✅ Done!\n")
            sys.stdout.write("💡  " + str(missingTranslationCounter) + (" missing translation.\n\n\n" if missingTranslationCounter == 1 else " missing translations.\n\n\n"))

def write_translations_to_all_translation_files(fileNamesWithTranslation):
    cwd = str(pathlib.Path.cwd().resolve()) + "/translations/"
    translationFilePaths = [os.path.join(cwd, f) for f in os.listdir(cwd) if os.path.isfile(os.path.join(cwd, f))]
    for path in translationFilePaths:
        update_translations(path=path, fileNamesWithTranslation=fileNamesWithTranslation)

    sys.stdout.write("🍻🍻🍻 Successfully updated translations! 🍻🍻🍻\n\n\n")    

fileNamesWithTranslation = getFileNamesWithTranslations()

write_translations_to_base_file(fileNamesWithTranslation = fileNamesWithTranslation)
write_translations_to_all_translation_files(fileNamesWithTranslation=fileNamesWithTranslation)




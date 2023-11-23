import os
import shutil
from pathlib import Path
import xml.etree.ElementTree as ET
import xml

# --------------------------------------------------------------------------
# find element in tree
def find_element(tree, name, value):
    parents = []

    for element in tree.iter():
        # parent = remove_brackets(element.tag)
        if name in element.attrib and element.attrib[name] == value:
            results = get_element_ancestry(tree, element)
            for result in results:
                if result.tag == 'Selector':
                    parents.append(result)
            return element, parents

    return None, None

# --------------------------------------------------------------------------
# find ancestors of element
def get_element_ancestry(root, element):
    result = []
    xet = xml.etree.ElementTree
    if not xet.iselement(root) or not xet.iselement(element):
        return result
    xpath = './/' + element.tag \
        + ''.join(["[@%s='%s']" % a for a in element.items()])
    parent = root
    while parent != None:
        result.append(parent)
        for child in parent.findall('*'):
            if child == element:
                result.append(element)
                return result
            if child.findall(xpath).count(element):
                parent = child
                break
        else:
            return []
    return result

# --------------------------------------------------------------------------
# find tag in tree
def find_tag(tree, name):
    for element in tree.iter():
        if name in remove_brackets(element.tag) == name:
            return element
    return None

def remove_brackets(text): 
    start = text.find('{') 
    end = text.find('}') 
    if start != -1 and end != -1: 
        return text[:start] + text[end+1:] 
    else: return text
                                                                  
# --------------------------------------------------------------------------
# delete directory contents
def delete_directory_contents(directory_path):
    try:
        # Get a list of all the files and directories in the directory
        files_and_directories = os.listdir(directory_path)

        # Iterate over the files and directories
        for file_or_directory in files_and_directories:

            # If the file or directory is a file, delete it
            if os.path.isfile(os.path.join(directory_path, file_or_directory)):
                os.remove(os.path.join(directory_path, file_or_directory))

            # If the file or directory is a directory, recursively delete it
            elif os.path.isdir(os.path.join(directory_path, file_or_directory)):
                shutil.rmtree(os.path.join(directory_path, file_or_directory))
    except Exception as e:
        print(e)

# --------------------------------------------------------------------------
# Replaces old_text with new_text in file_path.
def replace_text_in_file(file_path: str, old_text: str, new_text: str):
    file = Path(file_path)
    text = file.read_text()
    text = text.replace(old_text, new_text)
    file.write_text(text)
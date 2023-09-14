
# --------------------------------------------------------------------------
# evaluate parameter
def evaluate_attrib(variable_name, rootConversion, elem, rootDependencies, dependencies, phasing_mode, temperature_sensor, temperature_model, temperature_model_calc_method):
    entry = ''

    # --------------------------------------------------------------------------
    # handle entry not found
    if rootConversion.find(elem.attrib['Name']) == None:
        entry = '// ERROR: ' + elem.attrib['Name'] + ' not found in conversion table. Old value was ' + elem.attrib['Value']
        return entry

    # --------------------------------------------------------------------------
    # check if entry has a dependency
    if 'Dependency' in rootConversion.find(elem.attrib['Name']).attrib:
        dependency = rootConversion.find(elem.attrib['Name']).attrib['Dependency'].split(';')

        # check all dependencies
        for element in dependency:

            # make sure dependency was not already activated
            if not element in dependencies:
                entry += variable_name + rootDependencies.find(element).attrib['Entry']+ '\n\t'
                dependencies.append(element)

    # --------------------------------------------------------------------------
    # handle comments
    if rootConversion.find(elem.attrib['Name']).attrib['Entry'].startswith('//'):
        entry += rootConversion.find(elem.attrib['Name']).attrib['Entry']
    
    # --------------------------------------------------------------------------
    # handle special objects PHASING_MODE
    elif '%PHASING_MODE%' in rootConversion.find(elem.attrib['Name']).attrib['Entry']:
        if phasing_mode != '':
            entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry'].replace('%PHASING_MODE%', phasing_mode)
        else:
            entry = '// ERROR: Phasing mode does not match parameter ' + elem.attrib['Name']
 
    # --------------------------------------------------------------------------
   # handle special objects TEMP_SENSOR
    elif '%TEMP_SENSOR%' in rootConversion.find(elem.attrib['Name']).attrib['Entry']:
        if temperature_sensor != '':
            entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry'].replace('%TEMP_SENSOR%', temperature_sensor)
        else:
            entry = '// ERROR: Temperature sensor does not match parameter ' + elem.attrib['Name']

    # --------------------------------------------------------------------------
    # handle special objects TEMP_MODEL
    elif '%TEMP_MODEL%' in rootConversion.find(elem.attrib['Name']).attrib['Entry']:
        if temperature_model != '':
            entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry'].replace('%TEMP_MODEL%', temperature_model).replace('%TEMP_MODEL_CALC_METHOD%', temperature_model_calc_method)
        else:
            entry = '// ERROR: Temperature model does not match parameter ' + elem.attrib['Name']

    # --------------------------------------------------------------------------
    # handle regular entries
    else:
        entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry']

    return entry
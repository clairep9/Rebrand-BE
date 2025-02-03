const db = require("../db/index");


const getAllPropertyTypes = async () => {
    try {
        const propertyTypes = await db.any('SELECT id, property_type_name FROM property_type');
        return propertyTypes;
    } catch (error) {
        console.error('Error fetching property types:', error);
        throw new Error('Could not retrieve property types. Please try again later.');
    }
}


const getEmissionFactorByPropertyTypeId = async (propertyTypeId) => {
    try {
        const result = await db.one('SELECT emission_factor FROM property_type WHERE id = $1', [propertyTypeId]);
        return result.emission_factor;  
    } catch (error) {
        console.error('Error fetching emission factor:', error);
        throw new Error('Could not retrieve emission factor. Please try again later.');
    }
}

module.exports = {  
    getAllPropertyTypes,
    getEmissionFactorByPropertyTypeId
}

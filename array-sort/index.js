module.exports = function(array) {
    // let array = [3, 2, 4, 1, 7, 1, 8, 5, 9];
    let MAPPINGS = [];
    MAPPINGS[16] = [0,4,8,12,13,14,15,11,7,3,2,1,5,9,10,6];
    MAPPINGS[9] = [0,3,6,7,8,5,2,1,4];
    MAPPINGS[25] = [0,5,10,15,20,21,22,23,24,19,14,9,4,3,2,1,6,11,16,17,18,13,8,7,12];
    
    let resultArray = [];
    let mapped = MAPPINGS[array.length];
    for (var i = 0; i < array.length; i++) {
        resultArray[i] = array[mapped[i]];
    }

    return resultArray;
};

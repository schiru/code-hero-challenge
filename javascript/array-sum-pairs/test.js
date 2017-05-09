const assert = require('chai').assert;
const getPairs = require('./index');

const testData = [
    {
        array: [1, 4, 8, 7, 3, 15],
        sum: 8,
        solution: [1, 7]
    },
    {
        array: [1, -2, 3, 0, -6, 1],
        sum: -6,
        solution: [0, -6]
    },
    {
        array: [20, -13, 40],
        sum: -7,
        solution: undefined
    },
    {
        array: [1, 2, 3, 4, 1, 0],
        sum: 2,
        solution: [1, 1]
    },
    {
        array: [10, 5, 2, 3, 7, 5],
        sum: 10,
        solution: [3, 7]
    },
    {
        array: [4, -2, 3, 3, 4],
        sum: 8,
        solution: [4, 4]
    },
    {
        array: [0, 2, 0],
        sum: 0,
        solution: [0, 0]
    },
    {
        array: [5, 9, 13, -3],
        sum: 10,
        solution: [13, -3]
    }
];

testData.forEach(function(test) {
    assert.deepEqual(
        getPairs(test.array, test.sum),
        test.solution,
        `getPairs(${JSON.stringify(test.array)}, ${test.sum})`
    );
});


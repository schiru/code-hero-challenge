const assert = require('chai').assert;
const fns = require('./index');

const numbers = [
    { str: 'one', num: 1 },
    { str: 'two', num: 2 },
    { str: 'three', num: 3 },
    { str: 'four', num: 4 },
    { str: 'five', num: 5 },
    { str: 'six', num: 6 },
    { str: 'seven', num: 7 },
    { str: 'eight', num: 8 },
    { str: 'nine', num: 9 }
];

const arithmetics = {
    plus: (a, b) => a + b,
    minus: (a, b) => a - b,
    times: (a, b) => a * b,
    dividedBy: (a, b) => a / b
};


Object
.keys(arithmetics)
.forEach(function(arithmetic) {
    return numbers
        .slice(0, -1)
        .forEach(function(_, i) {
            const left = numbers[i];
            const right = numbers[i];

            const stringified = `${left.str}(${arithmetic}(${right.str}()))`;
            const result = fns[left.str](fns[arithmetic](fns[right.str]()));
            const solution = arithmetics[arithmetic](left.num, right.num);

            assert.equal(result, solution, stringified);
        });
});

// Tier 1
// 1.
function returnDataTypeParameter(p) {
    return typeof p;
}

// 2
let a = function returnProduct() {
    let product = 1;
    for(i = 0; i < arguments.length; i++) {
        product *=arguments[i];
    }
    return product;
}

// 3
function iterateOverInteger(arr) {
    let sum = 0;
    for(i = 0; i < p.length; i++) {
        sum += arr[i];
    }
    return sum;
}

// 4 not sure about this one, but I'm submitting what I have
const sArray = (arr) => {
    let string = arr.toString().split('');
    let array = string.length;
    let sum = 0;
    string.forEach(i => {
        sum+= string.Math.pow(i, array)
    })
    return sum == arr;
}
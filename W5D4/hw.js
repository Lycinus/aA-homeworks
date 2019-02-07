const isSubstring = (searchString, subString) => {
    return searchString.includes(subString);
};

const fizzBuzz = array => {
    let result = [];
    for (let i = 0; i < array.length; i++) {
        let n = array[i];
        if (n % 5 === 0 && n % 3 === 0) { continue; }
        else if (n % 5 === 0 || n % 3 === 0) { result.push(n); }
        else { continue; }
    }
    return result;
};

const factors = number => {
    const factors = [];
    for (i = 2; i < number; i++) {
        if (number % i === 0) {factors.push(i)}
    }
    return factors;
}

const isPrime = number => {
    if (number > 1 && factors(number).length === 0 ) {return true}
    else {return false}
}


const firstNPrimes = number => {
    const primes = []
    for (let i = 1; i>0; i++) {
        if (isPrime(i)) {primes.push(i);}
        if (primes.length === number) {break;}
    }
    return primes;
}

let sumOfNPrimes = n => {
    return firstNPrimes(n).reduce( (acc, val) => acc + val, 0 )
}

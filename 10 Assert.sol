pragma solidity ^0.6.0;

contract Assert {
    // Only for testing INTERNAL  errors
    // *internal functions*

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c;
        c = a + b;
        assert(c >= a);
        return c;
    }

    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }
        uint256 c;
        c = a * b;
        assert(c / a == b);
        return c;
    }
}

/*

assert()

- check for overflow/underflow
- check invariants
- validate contract state `after` making changes
- avoid conditions which should never, ever be possible
- generally, you should use `assert` less often
- generally, it will be used towards the ned of a function

*/


pragma solidity ^0.6.0;

contract Modifiers {
    address public seller;

    modifier onlySeller {
        // Modifier, define your own modifier
        require(msg.sender == seller); // usually used for restrictions
        _; // placeholder for rest of the code
    }

    function abort() public onlySeller {
        // Modifier usage
        // ...
    }
}

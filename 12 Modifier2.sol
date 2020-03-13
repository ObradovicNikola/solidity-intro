pragma solidity ^0.6.0;

contract owned {
    address owner;
    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "You don't own this!");
        _;
    }
}

contract mortal is owned {
    function close() public onlyOwner {
        // Modifier are inheritable properties of contracts
        // Modifiers can also be redeclared
    }
}

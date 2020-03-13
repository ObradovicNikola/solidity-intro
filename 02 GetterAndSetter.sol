pragma solidity >=0.4.0 <=0.6.1;

contract GetterAndSetter {
    uint256 value;

    constructor() public {
        value = 100;
    }

    // Getter Function
    function getValue() public view returns (uint256) {
        return value;
    }

    // Setter Function
    function setValue(uint256 newValue) public {
        value = newValue;
    }
}

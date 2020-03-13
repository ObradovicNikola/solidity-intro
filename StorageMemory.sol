pragma solidity ^0.6.0;

contract StorageMemory {
    uint8[3] a = [1, 2, 3];

    function getA() public view returns (uint8[3] memory) {
        return a;
    }

    function update() public {
        firstUpdate(a);
        firstUpdate(a);
    }

    function firstUpdate(uint8[3] storage x) internal {
        x[0] = 4;
    }

    function secondUpdate(uint8[3] memory x) internal pure {
        x[0] = 5;
    }
}

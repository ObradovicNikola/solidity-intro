pragma solidity ^0.6.0;

contract DynamicArray {
    uint24[] score;

    function addScore(uint24 s) public returns (uint24[] memory) {
        score.push(s);
        return score;
    }

    function getLength() public view returns (uint256) {
        return score.length;
    }

    function clearArray() public returns (uint24[] memory) {
        delete score;
        return score;
    }
}

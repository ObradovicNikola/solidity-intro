pragma solidity ^0.6.0;

contract FixedSizeArray {
    uint8[3] nums = [10, 20, 30];

    function getNums() public returns (uint8[3] memory) {
        nums[0] = 11;
        nums[1] = 22;
        nums[2] = 33;
        return nums;
    }

    function getLength() public view returns (uint256) {
        return nums.length;
    }
}

pragma solidity ^0.6.0;

contract Struct {
    struct Account {
        address addr;
        uint256 amount;
    }

    Account public acc = Account({
        addr: 0x21b3015dc87346755c60f060beCCdB3774c8499D,
        amount: 50
    });

    function addAmount(uint256 amount) public {
        acc.amount += amount;
    }

    function withdrawAmount(uint256 amount) public {
        acc.amount -= amount;
    }
}

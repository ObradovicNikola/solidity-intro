pragma solidity ^0.6.0;

contract Require {
    mapping(address => uint256) public accounts;

    function deposit() public payable {
        // Number can't be higher then max uint
        // We make sure that when we add money,
        // the new balance is higher then the old one
        require(
            accounts[msg.sender] + msg.value >= accounts[msg.sender],
            "Overflow error"
        );
        accounts[msg.sender] += msg.value;
    }

    function withdraw(uint256 money) public {
        require(money <= accounts[msg.sender], "Insufficient funds!");
        accounts[msg.sender] -= money;
    }
}

/*

require()

- validate user inputs
- validate the response from an external contract
- ie. use require (external.send(mount))
- validate state conditions prior to executing state changing
	operations, for example in an `owned` contract situation
- generally, you should use `require` more often,
- generally, it will be used towards the beginning of a function

*/


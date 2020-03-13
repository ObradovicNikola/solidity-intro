pragma solidity ^0.6.0;
import "https://github.com/ObradovicNikola/solidity-intro/blob/master/13%20SafeMath.sol";

contract LibraryUsage {
    mapping(address => uint256) public accounts;
    using SafeMath for uint256;

    function deposit() public payable {
        require(
            accounts[msg.sender] + msg.value >= accounts[msg.sender],
            "Overflow error"
        );
        accounts[msg.sender] = accounts[msg.sender].add(msg.value);
    }

    function withdraw(uint256 money) public {
        require(money <= accounts[msg.sender], "Insufficient funds");
        accounts[msg.sender] = accounts[msg.sender].sub(money);
    }
}

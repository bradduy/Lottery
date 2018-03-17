pragma solidity ^0.4.0;

contract Voting {
  uint public value;
  address public owner;

  modifier ownerFunc {
      require(owner == msg.sender);
      _;
  }
  function Voting(uint amount) public {
      value = amount;
      owner = msg.sender;
  }  
}

contract MyContract is Voting(1) {
    string private name;

    function setName(string newName) {
        name = newName;
    }

    function getName() returns (string) {
        return name;
    }
}
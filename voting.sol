pragma solidity ^0.4.0;

interface Regulator {
    function checkValue(uint amount) returns (bool);
}

contract Voting {
  uint private value;
  address public owner;

  modifier ownerFunc {
    require(owner == msg.sender);
    _;
    }
    function Voting(uint amount) public {
        value = amount;
        owner = msg.sender;
    }

    function deposit(uint amount) ownerFunc {
        value += amount;
    }

    function withdraw(uint amount) ownerFunc {
        if (checkValue(amount)) {
        value -= amount;
        }
    }  

    function balance() returns (uint) {
        return value;
    }

    function checkValue(uint amount) returns (bool) {
        return value >= amount;
    }

    function checkAmount(uint amount) returns(bool) {
    if (amount >= 1 && amount <= 10) {
        return true;
    } else {
        return false;
    }
  }
}

    function pickNumber(uint amount) public payable {
        if (checkAmount(amount)){
                function random() private view returns (uint) {
                    return uint8(uint256(keccak256(block.timestamp, block.difficulty))%10);
                }
            }
        }
    }
}


contract MyContract is Voting(1) {
    string private name;
    //Set candidate's name
    function setName(string newName) {
        name = newName;
    }
    // Get candidate's name
    function getName() returns (string) {
        return name;
    }
}

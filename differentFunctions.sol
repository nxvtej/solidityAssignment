pragma solidity ^0.8.13;

contract ViewAndPure {
    uint public x = 5;

    // Promise not to modify the state.
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // Promise not to modify or read from the state.
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}



pragma solidity ^0.8.15; 

contract payableContract {

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit () external payable {}

    function getBalance () external view returns (uint) {
        return address(this).balance;
    }
    

}


// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

// Contract between two people A and B if it rains tomorrow A will pay 100 to B
// If it doesn't rain tomorrow B will pay 50 to A.

contract PayIfRainTomorrow {

    address public personA;
    address public personB;

    constructor() payable {
        personA = msg.sender;
    }

    modifier onlyPersonA() {
        require(msg.sender == personA, "Only person A can do this action");
        _;
    }

    modifier onlyPersonB() {
        require(msg.sender == personB, "Only person B can do this action");
        _;
    }

    function setPersonB(address _personB) public onlyPersonA {
        personB = _personB;
    }

    function payPersonA() public onlyPersonB {
        payable(personA).transfer(50);
    }

    function payPersonB() public onlyPersonA {
        payable(personB).transfer(100);
    }

}

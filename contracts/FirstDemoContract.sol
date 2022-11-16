// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

contract FirstDemoContract {

    uint storageData1;
    uint value;

    address public creator;

    constructor(uint _storageData1) payable {
        storageData1 = _storageData1;
        creator = msg.sender;
        value = msg.value;
    }

    modifier onlyCreator() {
        require(msg.sender == creator, "Only creator can do this action");
        _;
    }

    modifier onlyAbove(uint addValue) {
        if (addValue > 5) {
            _;
        } else {
            revert("You have to increase the data value by more than 5");
        }
    }

    function addMemory(uint inputData1, uint inputData2) public pure returns (uint) {
        return inputData1 + inputData2;
    }


    function getStorage() public view returns (uint) {
        return storageData1;
    }


    function addStorage(uint inputData1) public view returns (uint) {
        return storageData1 + inputData1;
    }


    function setStorage(uint _storageData1) public onlyCreator {
        storageData1 = _storageData1;
    }


    function addAndSetStorage(uint inputData1) public onlyCreator onlyAbove(inputData1) {
        storageData1 = storageData1 + inputData1;
    }

    function payAccount(address payable receiver) public onlyCreator {
        receiver.transfer(value);
    }


}

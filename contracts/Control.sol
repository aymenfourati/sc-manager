// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract control {

    uint public unlockPayment;
    uint public amount;

    address payable public owner;
    address payable public receiver;

    constructor(uint _unlockPayment, address payable _receiver, uint _amount) payable {

    unlockPayment = _unlockPayment;
    owner = payable(msg.sender);
    receiver = _receiver;
    amount = _amount;
    }

function withdraw() public {

    require(unlockPayment >= 3, "Unsufficient amount of sales to withdraw");
    require(msg.sender == owner, "You aren't the owner");   

    receiver.transfer(amount);

}


}
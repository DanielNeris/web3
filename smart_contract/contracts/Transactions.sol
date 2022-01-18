// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Transactions {
    uint256 transactionCount;
    using SafeMath for uint256;


    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] trnasactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message,  string memory keyword) public {
        transactionCount = transactionCount.add(1);
        trnasactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return trnasactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
} 
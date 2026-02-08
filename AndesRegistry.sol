// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract AndesRegistry {
    address public owner;

    // We log the "Invoice ID" so Stripe can see the business data
    event InvoiceLogged(address indexed client, string memo, uint256 timestamp);

    constructor() {
        owner = msg.sender;
    }

    // Notice: We removed 'payable' because Tempo doesn't do native transfers
    function logInvoice(string memory _memo) public {
        emit InvoiceLogged(msg.sender, _memo, block.timestamp);
    }
}

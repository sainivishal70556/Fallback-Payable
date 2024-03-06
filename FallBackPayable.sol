// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherReceiver {
    // Event emitted when ether is received
    event Received(address sender, uint amount);

    // Fallback function to receive ether
    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    // Fallback function to handle any unrecognized calls
    fallback() external payable {
        // You can add custom logic here to handle unrecognized calls
        // For example, you could revert the transaction or forward the call to another contract
        revert("Unrecognized function call");
    }
}

# Fallback-Payable
Solidity smart contract that accepts Ether and handles any unrecognized calls using a fallback function:

# Explanation:

The receive() function acts as the fallback function to receive Ether. When someone sends Ether to the contract without specifying a function, this fallback function is invoked automatically.
The fallback() function is another fallback function that handles any unrecognized function calls. It simply reverts the transaction with an error message indicating that the function call is unrecognized.
The emit Received(msg.sender, msg.value) statement inside the receive() function emits an event indicating that Ether has been received, along with the sender's address and the amount of Ether sent. You can use events to log important information about contract interactions.
With this contract, you can send Ether to it, and if someone tries to call a function that doesn't exist in the contract, the transaction will be reverted with an error message.

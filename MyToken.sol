// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*For this project, 
write a smart contract that implements the require(), assert() and revert() statements.
*/
contract MyToken {

    string public tokenName = "DRACHMA";
    string public tokenAbbrv = "DRC";
    uint public totalSupply=0;
    address senderAddress;
      mapping(address => uint) public balances;

    constructor() { 
        senderAddress = msg.sender; //address deploying transaction should also be identified as th owner
    } 

    function mint(uint _tokenAmount) public {
        totalSupply += _tokenAmount;
        balances[senderAddress] += _tokenAmount;
        assert(balances[senderAddress]<= totalSupply);
    }
    error InsufficientBalance(uint currentBalance, uint tokenAmount);

    function burn(uint _tokenAmount) public{
        if (_tokenAmount >=balances[senderAddress]) {
            revert InsufficientBalance(
                {currentBalance:balances[senderAddress], tokenAmount: _tokenAmount} 
                );
        }
        totalSupply -= _tokenAmount;
        balances[senderAddress] -= _tokenAmount;
    }

    function transfer (address _receiverAddress, uint _tokenAmount) public{
        require(senderAddress != _receiverAddress, "You cannot send money to your own account");
        require(balances[senderAddress] >= _tokenAmount, "Amount of tokens to be transferred exceeds balance for this sender account");
        balances[senderAddress]-= _tokenAmount;
        balances[_receiverAddress]+= _tokenAmount;
    }

    function assertTransactionOwnership () public view {
       //asserts to check that sender address is always the same to the address that is currently deploying transaction
        assert (msg.sender == senderAddress);
    }

}

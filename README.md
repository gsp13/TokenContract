# MyToken

This is a simple contract created in Solidity that is a basic demonstration of how ethereum tokens work with error handling techniques ( assert,revert and require). It has three functions, mint, burn and transact which will allow the user to update and retrieve the token's overall supply as well as the balances of the available addresses.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the  code into the file.Afterwards,click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile MyToken.sol" button. If there are any errors recheck if there are discrepancies with the code in the website and in the provided sol file.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by running the following functions which should be displayed in the deployed contracts sidebar

### Mint Function
```
Example Input:
   _tokenAmount: 500
```
Increases the total supply and  sender address(address deploying the contract) with the inputted token amount.
Verify that this is working as intended by calling balances and totalsupply


### Burn Function
```
Example Input:
   _tokenAmount: 200
```
Decreases the total supply of account deploying the contract with the inputted token amount.
It will issue an error code and will not decrease the amount if the value is greater than the balance of the address deplyoying the contract.
Verify that this is working as intended by calling balances and totalsupply 



### Burn Function
```
Example Input:
   _receiverAddress: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
   _tokenAmount: 200
```
Transfers the provided amount from address deploying the contract to the provided receiver address. It will issue an error code if provided address is same as the deployed contract(or attempting to send money to your own account) or if the balance of sender is insufficient to facilitate the transfer to receiver address.

## Authors

Gian Nicole L. Pangan

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

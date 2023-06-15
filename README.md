# MyToken

This is a simple contract created in Solidity that is meant to represent a token instantiation. It has two functions, mint and burn which will allow the user to update and retrieve the token's overall supply as well as the balances of the sender addresses.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the  code into the file.Afterwards,click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile MyToken.sol" button. If there are any errors recheck if there are discrepancies with the code in the website and in the provided sol file.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by running the following functions which should be displayed in the deployed contracts sidebar

### Mint Function
```
Example Input:
   _senderAddress: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
   _tokenAmount: 500
```
Increases the total supply and  provided sender address balance with the inputted token amount.
Verify that this is working as intended by calling balances and totalsupply


### Burn Function
```
Example Input:
   _senderAddress: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
   _tokenAmount: 200
```
Decreases the total supply and  provided sender address balance with the inputted token amount.
It will run but will not decrease the amount if the value is greater than the balance of the provided sender address.
Verify that this is working as intended by calling balances and totalsupply

## Authors

Gian Nicole L. Pangan

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

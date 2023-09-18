# Contracts
- EthProofVar.sol
- IfElse.sol
- Loop.sol
- Maths.sol
- MyToken.sol
- Wallet.sol

# MyToken.sol
This smart contract is a simple program that demonstrates minting and burning of tokens.

### Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by right clicking on the contracts folder in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:
```js
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string public tokenName = "CyberGA";
    string public tokenAbbr = "CGA";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _target, uint _amount) public {
        totalSupply += _amount;
        balances[_target] += _amount;
    }

    // burn function
     function burn(address _target, uint _amount) public {
        if (balances[_target] >= _amount) {
            totalSupply -= _amount;
        balances[_target] -= _amount;
        }
    }

}
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" , and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the various function function.

`mint` - this is to mint tokens to a target address and updates the total supply. To call this, enter the target address and amount.

`burn` - this is to burn tokens from a target address and total supply. To call this, enter the target address and amount.
> **Important**\
> The target address must have tokens greater or equal to the amount of token that is to be burnt.

You can see the token name by clicking on `tokenName`

You can see the token abbreviaton by clicking on `tokenAbbr`

You can check the token supply by clicking on `totalSupply`

You can view the balance of an address by passing the address to balances and clicking of  `balances`

## Authors

Gbenga Etomu
[@CyberGA](https://gbenga-etomu.vercel.app/)


## License

This project is licensed under the MIT License











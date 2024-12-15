# ERC-721 BalanceOf Function Error

This repository contains a Solidity smart contract with an error in the `balanceOf` function. The `balanceOf` function should return the number of NFTs held by the account. However, the function does not consider the ERC-721 standard's definition of the balance as a mapping from owner address to the IDs of the NFTs held by the owner.  The current implementation returns a single integer, which is not the correct way to determine the balance of ERC-721 tokens.

## Bug Description
The `balanceOf` function in this Dapp does not consider the ERC-721 token standard.  The standard defines token balances as a mapping from the owner address to token IDs. The `balanceOf` function in this example only returns the balance of the account, which is a single integer representing the number of tokens. This incorrect approach doesn't accurately reflect the balance of NFTs in an ERC-721 context. 

## Solution
The solution corrects the implementation of the `balanceOf` function to conform to the ERC-721 standard. This involves mapping the owner address to an array of token IDs, then returning the length of this array to reflect the correct NFT balance.
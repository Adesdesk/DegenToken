// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    constructor() ERC20("Degen", "DGN") {}

        // only owner can mint tokens
        // tokens can be minted directly to any address (players)
        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }

    // players are able to transfer their tokens to others
    function transferTokens(address to, uint256 amount) public {
        _transfer(msg.sender, to, amount);
    }

    function exchangeTokensForProduct(uint256 amount) public {
        // Add logic for product exchange using tokens
        // Ensure that the product exchange rate and other conditions are implemented
        // Update the following line accordingly
        require(balanceOf(msg.sender) >= amount, "Insufficient tokens");
        _burn(msg.sender, amount);
        // Add logic for product exchange here
    }

    // unrestricted functionality to help any player check their token balance at any time
    function checkTokenBalance() public view returns (uint256) {
        return balanceOf(msg.sender);
    }

    // anyone can burn tokens that they own or that are no longer needed
    function burnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}


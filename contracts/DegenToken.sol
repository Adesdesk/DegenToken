// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    enum ItemType { Item_I, Item_II }

    uint256 public constant ITEM_I_COST = 10;
    uint256 public constant ITEM_II_COST = 100;

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) // Set deployer as the owner
    {}
    
    // Function for only owner to mint new tokens
    function mint(address player, uint256 amount) public onlyOwner {
        _mint(player, amount);
    }

    // Function for users to transfer tokens to others
    function transferTokens(address to, uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        approve(msg.sender, amount);
        transferFrom(msg.sender, to, amount);
    }

    // Function for users to redeem tokens for items in the in-game store
    function redeemTokensForItems(ItemType itemType) external {
        if (itemType == ItemType.Item_I) {
            require(balanceOf(msg.sender) >= ITEM_I_COST, "Insufficient tokens to redeem for item_I");
            _burn(msg.sender, ITEM_I_COST); // Burn tokens upon successful transaction
        } else if (itemType == ItemType.Item_II) {
            require(balanceOf(msg.sender) >= ITEM_II_COST, "Insufficient tokens to redeem for item_II");
            _burn(msg.sender, ITEM_II_COST); // Burn tokens upon successful transaction
        } else {
            revert("Invalid item type");
        }
    }

    // Function for users to check their token balance
    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }
    
    // Function for users to burn their tokens
    function burn(uint256 amount) public override {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }
}

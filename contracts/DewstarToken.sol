// DewstarToken contract
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Uncomment this line to use console.log
import "hardhat/console.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
contract DewstarToken is ERC20Capped,ERC20Burnable{
    address payable public owner;
    uint256 public blockReward;
    constructor(uint256 cap, uint256 reward) ERC20("DewstarToken","DEW") ERC20Capped(cap * (10 ** decimals())) {
        owner = payable(msg.sender); //since it is declared payable it should also be wrapped with that 
        _mint(owner, 10000 * (10 ** decimals()));
        setBlockReward(reward);
    }

    function _update(address from, address to, uint256 value) internal virtual override(ERC20,ERC20Capped){ // override should also mention the contracts it overrides
        require(ERC20.totalSupply() + value <= cap(), "ERC20Capped: cap exceeded");
        if (!(from == address(0) && to == block.coinbase)) {
            _mintMinerReward();
        }
        super._update(from, to, value);
    }
    function _mintMinerReward() internal {
        _mint(block.coinbase, blockReward);
    }

    function destroy() public onlyOwner(){
        selfdestruct(owner);
    }
    function setBlockReward(uint256 _reward) public onlyOwner() {
        blockReward = _reward * (10 ** decimals());
    }

    modifier onlyOwner {
        require(msg.sender == owner, "only the owner can call this function");
        _;
    }

}

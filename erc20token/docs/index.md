# Solidity API

## DewstarToken

### owner

```solidity
address payable owner
```

### blockReward

```solidity
uint256 blockReward
```

### constructor

```solidity
constructor(uint256 cap, uint256 reward) public
```

### _update

```solidity
function _update(address from, address to, uint256 value) internal virtual
```

### _mintMinerReward

```solidity
function _mintMinerReward() internal
```

### destroy

```solidity
function destroy() public
```

### setBlockReward

```solidity
function setBlockReward(uint256 _reward) public
```

### onlyOwner

```solidity
modifier onlyOwner()
```


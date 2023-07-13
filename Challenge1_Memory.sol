pragma solidity ^0.8.0;

contract StorageAndMemory {

  // Storage variable
  uint256 public storageVar = 10;

  // Memory variable
  uint256 public memoryVar = 20;

  function incrementStorageVar() public {
    storageVar++;
  }

  function incrementMemoryVar() public {
    memoryVar++;
  }

}

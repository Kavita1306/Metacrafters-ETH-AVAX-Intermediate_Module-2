// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Proxy {

  function upgradeTo(address newImplementation) public {
  }

}

contract Upgradeable {

  // The proxy contract that will be used to upgrade this contract
  address public proxy;

  constructor() {
    proxy = address(new Proxy());
  }

  // Function to upgrade this contract
  function upgrade(address newImplementation) public {
    // Cast the proxy variable to the Proxy type
    Proxy proxyContract = Proxy(proxy);
    proxyContract.upgradeTo(newImplementation);
  }

} 

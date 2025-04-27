// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DidRegistry {
  mapping(string => address) public controllers;

  function createDID(string memory did, address controller) public {
    controllers[did] = controller;
  }

  function updateController(string memory did, address newController) public {
    controllers[did] = newController;
  }

  function getController(string memory did) public view returns (address) {
    return controllers[did];
  }
}

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

import "forge-std/Script.sol"; // Import the Script contract
import "../src/SimpleStorage.sol"; // Import the SimpleStorage contract

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // Any transaction we want to send need to be inside these two: vm.startBroadcast() and vm.stopBroadcast()
        vm.startBroadcast(); // only work in foundry, is a cheatcode
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}

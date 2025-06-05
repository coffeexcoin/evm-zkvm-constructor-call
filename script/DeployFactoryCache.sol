// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {FactoryCache} from "../src/FactoryCache.sol";

contract DeployFactoryCache is Script {
    FactoryCache public factoryCache;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        factoryCache = new FactoryCache();

        vm.stopBroadcast();
    }
}

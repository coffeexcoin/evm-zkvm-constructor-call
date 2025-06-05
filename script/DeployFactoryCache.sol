// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {FactoryCache} from "../src/FactoryCache.sol";

contract DeployFactoryCache is Script {
    FactoryCache public factoryCache;

    function setUp() public {}

    function run() public {
        address uniswapPositionManager = vm.envAddress("UNISWAP_POSITION_MANAGER");
        
        vm.startBroadcast();

        factoryCache = new FactoryCache(uniswapPositionManager);

        vm.stopBroadcast();
    }
}

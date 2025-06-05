// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IUniswapPositionManager} from "./IUniswapPositionManager.sol";

contract FactoryCache {
    address public factory;

    constructor(address uniswapPositionManager) {
        factory = IUniswapPositionManager(uniswapPositionManager).factory();
    }
}

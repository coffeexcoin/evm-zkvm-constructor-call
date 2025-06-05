// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IUniswapPositionManager} from "./IUniswapPositionManager.sol";

contract FactoryCache {
    address public factory;

    constructor() {
        factory = IUniswapPositionManager(0x069f199763c045A294C7913E64bA80E5F362A5d7).factory();
    }
}

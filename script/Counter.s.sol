// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SuryaErc721Contracts} from "../src/SuryaErc721Contracts.sol";


contract CounterScript is Script {
    SuryaErc721Contracts public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new SuryaErc721Contracts("Surya", "SURYA", 1);

        vm.stopBroadcast();
    }
}

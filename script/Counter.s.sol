// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SuryaErc721Contracts} from "../src/SuryaErc721Contracts.sol";


contract CounterScript is Script {
    SuryaErc721Contracts public counter;

    function setUp() public {}

    address[] _address = [
        0xE05BAe76Cc91ef60981d8EA58c3062708e15C2C2,
        0xcA7D2301DDd6456c6F494bB5759A323089C88b07
    ];

    function run() public {

        uint256 privateKey = vm.envUint("PRIVATE_KEY");
        address sender = vm.addr(privateKey);

        console.log("Address : ", sender);

        vm.startBroadcast(privateKey);

        counter = new SuryaErc721Contracts("DUMMY CONTRACT TESTING", "DCT", 100, "https://api.spacedoodles.xyz/");
        counter.publicMint(2);
        counter.airdropTokens(_address, 1);
        vm.stopBroadcast();
    }
}

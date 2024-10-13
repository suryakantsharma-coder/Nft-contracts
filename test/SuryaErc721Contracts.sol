// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {SuryaErc721Contracts} from "../src/SuryaErc721Contracts.sol";

contract CounterTest is Test {
    SuryaErc721Contracts public sec;

    address[] _address = [
        0xE05BAe76Cc91ef60981d8EA58c3062708e15C2C2,
        0xcA7D2301DDd6456c6F494bB5759A323089C88b07
    ];

    function setUp() public {
        sec = new SuryaErc721Contracts("Surya", "SURYA", 20);
    }

    function test_Increment() public {
        sec.airdropTokens(_address, 2);
        console.log("Airdrop Completed");
        // assertEq(sec.totalSupply(), 3);
    }

    function test_publicMint() public {
        for (uint i =1; i <= 6 ; i ++) {
            sec.publicMint(1);
            console.log("Mint Successfull", i);
        }
    }

    // function testFuzz_SetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
}

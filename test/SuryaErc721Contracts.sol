// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {SuryaErc721Contracts} from "../src/SuryaErc721Contracts.sol";

contract CounterTest is Test {
    SuryaErc721Contracts public sec;

    function setUp() public {
        sec = new SuryaErc721Contracts("Surya", "SURYA", 10);
    }

    function test_Increment() public {
        // sec.publicMint(1);
        // console.log("Minted Successfully 1");
        // sec.publicMint(1);
        // console.log("Minted Successfully 2");
        // assertEq(sec.totalSupply(), 3);
        // sec.publicMint(1);
        // console.log("Minted Successfully 3");
        

        for (uint i =1; i <= 10 ; i ++) {
            sec.publicMint(1);
            console.log("Mint Successfull", i);
        }
    }

    // function testFuzz_SetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
}

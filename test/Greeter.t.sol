// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {Test, console2} from "forge-std/Test.sol";
import { Greeter } from '../contracts/Greeter.sol';

contract GreeterTest is Test {
    Greeter public greeter;

    function setUp() public {
        greeter = new Greeter("Hello Blockchain");
    }

    function test_Greet() public view {
        assertEq(greeter.greet(), "Hello Blockchain");
    }

    function test_SetGreeting() public {
        greeter.setGreeting("Hi");
        assertEq(greeter.greet(), "Hi");
    }
}

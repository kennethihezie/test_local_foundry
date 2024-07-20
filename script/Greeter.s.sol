// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import { Script, console2 } from "forge-std/Script.sol";
import { Greeter } from '../contracts/Greeter.sol';
import "forge-std/console.sol";

contract GreeterScript is Script {
    string constant PRIVATE_KEY = "PRIVATE_KEY";

    function setUp() public {}

    function run() public {
        uint256 deployer = vm.envUint(PRIVATE_KEY);

        vm.startBroadcast(deployer);

        Greeter deployedAddress = new Greeter("Hello we are deploying you.");

        console.log("Deployed Address:", address(deployedAddress));

        vm.stopBroadcast();
    }
}

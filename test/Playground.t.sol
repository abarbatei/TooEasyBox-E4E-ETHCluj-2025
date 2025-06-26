// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {TooEasyBox} from "src/TooEasyBox.sol";


contract Playground is Test {

    uint256 constant A_GAZILLION_DOLLARS = 1_000_000_000 ether;

    address currier = makeAddr("currier");
    TooEasyBox tooEasyBox;    
    address joe = makeAddr("Random Joe");
    address dude = makeAddr("Random dude");
    address dudette = makeAddr("Random dudette");
    address marcy = makeAddr("Marcy");
    address attacker = makeAddr("That uncle nobody in the family likes");

    function setUp() public {
        tooEasyBox = new TooEasyBox();
        deal(currier, A_GAZILLION_DOLLARS);
        deal(attacker, 1 ether);
    }

    function test_normalOperations() public {
        vm.startPrank(currier);
        tooEasyBox.deposit{value: 10 ether}(joe);
        tooEasyBox.deposit{value: 5 ether}(dude);
        tooEasyBox.deposit{value: 25 ether}(dudette);
        tooEasyBox.deposit{value: 1 ether}(marcy);
        vm.stopPrank();

        vm.startPrank(attacker);
        hackerGonnaHack();
        vm.stopPrank();
        assertEq(tooEasyBox.getContractBalance(), 0, "Hacker didn't hack! Too Easy Box was not that easy for ya? balance isn't 0!");
    }

    function hackerGonnaHack() private {
        console.log("Hacker gonna hack!");
        // add code here
    }
}

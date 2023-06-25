// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Memory.sol";

contract CounterTest is Test {
    Memory public mem;

    function setUp() public {
        mem = new Memory();
    }

    function testArgs() public {
        (
            bytes32 location,
            bytes32 index0,
            bytes32 index1,
            bytes32 index2,
            bytes32 index3
        ) = mem.args([1, 2, 3, 4]);

        assertEq(
            location,
            0x0000000000000000000000000000000000000000000000000000000000000080
        );
        assertEq(
            index0,
            0x0000000000000000000000000000000000000000000000000000000000000001
        );
        assertEq(
            index1,
            0x0000000000000000000000000000000000000000000000000000000000000002
        );
        assertEq(
            index2,
            0x0000000000000000000000000000000000000000000000000000000000000003
        );
        assertEq(
            index3,
            0x0000000000000000000000000000000000000000000000000000000000000004
        );
    }
}

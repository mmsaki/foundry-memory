// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Memory.sol";

contract MemoryTest is Test {
    Memory public mem;
    event Debug(
        bytes32 indexed location,
        bytes32 indexed index0,
        bytes32 index1,
        bytes32 index2,
        bytes32 index3
    );

    function setUp() public {
        mem = new Memory();
    }

    function testArgs() public {
        vm.expectEmit(true, true, true, true);
        emit Debug(
            0x0000000000000000000000000000000000000000000000000000000000000080, // location
            0x0000000000000000000000000000000000000000000000000000000000000001, // arr[0]
            0x0000000000000000000000000000000000000000000000000000000000000002, // arr[1]
            0x0000000000000000000000000000000000000000000000000000000000000003, // arr[2]
            0x0000000000000000000000000000000000000000000000000000000000000004 // arr[3]
        );
        mem.args([1, 2, 3, 4]);
    }
}

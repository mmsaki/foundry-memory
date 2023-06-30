// SPDX-License-Identifier: GLP-3.0
pragma solidity ^0.8.0;

contract Memory {
    event Debug(
        bytes32 indexed location,
        bytes32 indexed index0,
        bytes32 index1,
        bytes32 index2,
        bytes32 index3
    );

    function args(uint8[4] memory arr) external {
        bytes32 location;
        bytes32 index0;
        bytes32 index1;
        bytes32 index2;
        bytes32 index3;

        assembly {
            location := arr
            index0 := mload(location)
            index1 := mload(add(location, 0x20))
            index2 := mload(add(location, 0x40))
            index3 := mload(add(location, 0x60))
        }

        assert(index0 == bytes32(uint(arr[0])));
        assert(index1 == bytes32(uint(arr[1])));
        assert(index2 == bytes32(uint(arr[2])));
        assert(index3 == bytes32(uint(arr[3])));

        emit Debug(location, index0, index1, index2, index3);
    }
}

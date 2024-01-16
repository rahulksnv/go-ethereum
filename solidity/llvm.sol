// SPDX-License-Identifier: GPL 3.0

pragma solidity ^0.8.20;

contract LlvmInference {
    function invoke_llvm(bytes calldata data) public view returns (bytes memory output) {
        (bool ok, bytes memory out) = address(10).staticcall(data);
        require(ok);
        return (out);
    }
}

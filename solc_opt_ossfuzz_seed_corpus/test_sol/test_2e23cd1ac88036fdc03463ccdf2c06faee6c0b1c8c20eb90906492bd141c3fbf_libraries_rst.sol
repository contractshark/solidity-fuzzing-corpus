// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.14 <0.8.0;

library L {
    function f(uint256) external {}
}

contract C {
    function g() public pure returns (bytes4) {
        return L.f.selector;
    }
}




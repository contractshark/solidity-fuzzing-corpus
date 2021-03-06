// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.8.0;

abstract contract Updateable {
    function run() public view virtual returns (bool);
    function update() public virtual;
}

abstract contract Upgradable {
    function run() public view virtual returns (bool);
    function upgrade() public virtual;
}

contract Source is Updateable, Upgradable {
    constructor() public {}

    function run()
        public
        view
        override(Updateable,Upgradable)
        returns (bool) {}

    function update() public override {}
    function upgrade() public override {}
}

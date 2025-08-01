// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0;

contract Base {
    uint8 data = 1;

    constructor(uint8 x) {
        assert(data + 2 == x);
    }
}

contract Derive {
    constructor() {
        Base x = new Base(2);
    }
}

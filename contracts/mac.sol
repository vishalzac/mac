// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract register {
    uint256 addnumber;

    struct more {
        uint256 id;
        string name;
    }
    more[] public More;
    mapping(uint256 => string) public find;

    function input(uint256 Addnumber) public {
        addnumber = Addnumber;
    }

    function see() public view returns (uint256) {
        return addnumber;
    }

    function info(uint256 ID, string memory Name) public {
        More.push(more(ID, Name));
        find[ID] = Name;
    }
}

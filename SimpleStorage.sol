// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SimpleStorage {
    uint256 favNumber;

    mapping(string => uint256) public nameToFavNumver;

    struct People {
        uint256 favNumber;
        string name;
    }

    // uint256[] public favNumberList;

    People[] public people;

    function store(uint256 _favNumber) public virtual {
        favNumber = _favNumber;
    }

    function retrieve() public view returns (uint256) {
        return favNumber;
    }

    function addPerson(string memory _name, uint256 _favNumber) public {
        People memory newPerson = People({favNumber: _favNumber, name: _name});
        people.push(newPerson);
        nameToFavNumver[_name] = _favNumber;
    }
}

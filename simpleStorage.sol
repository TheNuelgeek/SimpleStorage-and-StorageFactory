// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract simpleStorage{

    // A simple storage to store favourite numbers, retrive favourite numberes and
    // add people's favourite numbers too.

    // VARIABLES
    uint256 favouriteNumber;

    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    Person[] people;

    mapping(string => uint256) public nameToFavouriteNumber;

    // FUNCTIONS 
    // Function to store, retrive and add people to favourite  number

    function _storeFavouriteNumber(uint256 _favouriteNumber) public{
        favouriteNumber = _favouriteNumber;
    }

    function _retriveFavouriteNumber() public view returns(uint256){
        return favouriteNumber;
    }

   //{favouriteNumber: _favouriteNum, name:_name}
    function addPeopleFavNumAndName(uint256 _favouriteNum, string memory _name) public {
        Person memory _person = Person(_favouriteNum, _name);
        people.push(_person);
       
       // people.push(Person(_favouriteNum, _name));
        nameToFavouriteNumber[_name] = _favouriteNum;
    }
}
// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Info {
    uint256 public age;
    string public name;
    address public wallet;
    bool public isAdult;

    // settter functions
    function setAge(uint256 _age) public returns (uint256) {
        age = _age;
        return age;
    }

    function setName(string memory _name) public returns (string memory) {
        name = _name;
        return name;
    }

    function setWallet(address _addr) public returns (address) {
        wallet = _addr;
        return wallet;
    }

    function setAdulthood() public returns (bool) {
        isAdult = age > 18;
        return isAdult;
    }

    // getters funcitons
    function getAge() public view returns (uint) {
        return age;
    }
    function getName() public view returns (string memory) {
        return name;
    }
    function getWallet() public view returns (address) {
        return wallet;
    }
    function getEligibility() public view returns (bool) {
        return isAdult;
    }

}

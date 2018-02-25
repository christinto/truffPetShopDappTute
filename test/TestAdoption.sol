pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

//run truffle test on this..

contract TestAdoption {
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    // Testing the adopt() function
    //Upon success it returns the given petId. We can ensure an ID was returned and that it's correct by comparing the return value of adopt() to the ID we passed in
    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(8);

        uint expected = 8;

        Assert.equal(returnedId, expected, "Adoption of pet ID 8 should be recorded.");
    }

        //Testing retrieval of all pet owners
        //Since arrays can only return a single value given a single key, we create our own getter for the entire array

    // Testing retrieval of a single pet's owner
    function testGetAdopterAddressByPetId() public {
        // Expected owner is this contract
        address expected = this;

        address adopter = adoption.adopters(8);

        Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded.");
    }



// Testing retrieval of all pet owners
function testGetAdopterAddressByPetIdInArray() public {
// Expected owner is this contract
address expected = this;

// Store adopters in memory rather than contract's storage
address[16] memory adopters = adoption.getAdopters();

Assert.equal(adopters[8], expected, "Owner of pet ID 8 should be recorded.");

    }
//Since adopters is an array, and we know from the first adoption test that we adopted pet 8, we compare the testing contracts address with location 8 in the array.
}

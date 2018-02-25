pragma solidity ^0.4.17;

contract Adoption {

    address[16] public adopters;

    // Adopting a pet

    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

/* Require() should be used to ensure valid conditions (inputs) or contract state variables are met or to validate return calls to external contracts. I think of require() as guarding against transactions that you would not want to execute although the function would allow it if require() was omitted. For example, you might require() that the transaction be initiated from a certain address or require() that a transaction only be allowed to execute prior to a certain time. From a beginner perspective, one of the most important lessons in learning Solidity is how and when to use require() as you shape the appropriate and secure user inputs. Unlike throw, with require(), any remaining gas is returned to the sender, yet similar to throw, state conditions are rolled back as well. */

    // Retrieving the adopters.. specify return type for adopters
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
}
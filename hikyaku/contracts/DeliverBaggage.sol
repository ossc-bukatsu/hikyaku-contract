pragma solidity ^0.4.22;

contract DeliverBaggage {
  struct Baggage {
    address currentOwner;
    address dest;
    address finalDest;
    uint locX;
    uint locY;
  }

  Baggage[] public baggages;
  
  mapping (uint => address) public baggageToOwner;
  mapping (address => uint) ownerBaggageCount;

  function _createBaggage(address _currentOwner, address _dest, address _finalDest, uint _locX, uint _locY) public {
    uint id = baggages.push(Baggage(_currentOwner, _dest, _finalDest, _locX, _locY)) - 1;
    baggageToOwner[id] = msg.sender;
    ownerBaggageCount[msg.sender]++;
  }
  
  function _deliverBaggages(uint _baggageId, address _dest, address _nextOwner, uint _locX, uint _locY) public {
    require(msg.sender == baggages[_baggageId].currentOwner);
    baggages[_baggageId].dest = _dest; 
    baggages[_baggageId].currentOwner = _nextOwner;
    baggages[_baggageId].locX = _locX;
    baggages[_baggageId].locY = _locY;
  }	
}

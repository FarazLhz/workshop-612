// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Counter {
  uint public count = 0;

  event Increament(uint value);
  event Decreament(uint value);

  function getCount() view public returns(uint) {
    return count;
  }

  function increament() public {
    count +=1;
    emit Increament(count);
  }
  
  function decreament() public {
    count -= 1;
    emit Decreament(count);
  }
}
pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {

  event SetPurpose(address sender, string purpose);

  string public purpose = "Building Unstoppable Apps!!!";

  constructor() payable {
    // what should we do on deploy?
  }

  function fib(uint8 n) public view returns(uint32) {
      if(n < 2) {
        // console.log(0);
        // console.log(1);
      }

      uint32 curFib = 0;
      uint32 oneFibAgo = 1;
      uint32 twoFibAgo = 0;
      for(uint i = 2; i < n; i++) {
        curFib = oneFibAgo + twoFibAgo;
        twoFibAgo = oneFibAgo;
        oneFibAgo = curFib;
      }

      return curFib;
  }
  function setPurpose(string memory newPurpose) public {
      purpose = newPurpose;
      // console.log(msg.sender,"set purpose to",purpose);
      emit SetPurpose(msg.sender, purpose);
  }

  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}

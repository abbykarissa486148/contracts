pragma solidity ^0.4.24;

// ----------------------------------------------------------------------------
// 'Bell' token contract
//
// Deployed to : 0x5A86f0cafD4ef3ba4f0344C138afcC84bd1ED111
// Symbol      : Bell
// Name        : 0 Fucks Token
// Total supply: 100000000
// Decimals    : 18
//
// Enjoy.
//
// (c) by Moritz Neto with BokkyPooBah / Bok Consulting Pty Ltd Au 2017. The MIT Licence.
// ----------------------------------------------------------------------------


// ----------------------------------------------------------------------------
// Safe maths
// ----------------------------------------------------------------------------
contract SafeMath {
 function safeAdd(uint a, uint b) public pure returns (uint c) {
 c = a + b;
        require(c >= a);
 }
    function safeSub(uint a, uint b) public pure returns (uint c) {
  require(b <= a);
        c = a - b;
  }
    function safeMul(uint a, uint b) public pure returns (uint c) {
    c = a * b;
        require(a == 0 || c / a == b);
}
    function safeDiv(uint a, uint b) public pure returns (uint c) {
 require(b > 0);
        c = a / b;
 }
}


// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20-token-standard.md

// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.4;

// We will need to call the Whitelist Contract that were deployed to check for addresses that were whitelisted and give them presale access.
// As we only need to call mapping(address => bool) public whitelistedAddresses; We can create an interface for Whitelist Contract with a 
// function only for this mapping, this way we would save gas as we would not need to inherit and deploy the entire Whitelist Contract but only part of it


interface IWhitelist {
    function whitelistedAddresses(address) external view returns (bool);
}
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract GenshinNFT is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  // We need to pass the name of our NFTs token and its symbol.
  constructor() ERC721 ("SquareNFT", "SQUARE") {
    console.log("This is my NFT contract. Woah!");
  }

  function makeAnEpicNFT() public {

    uint256 newItemId = _tokenIds.current();

    _safeMint(msg.sender, newItemId);

   _setTokenURI(newItemId, "xiao = https://jsonkeeper.com/b/6XZD");
   console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);
  }
}

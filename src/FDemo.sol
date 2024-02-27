// SPDX-License-Identifier: UNLICENSED
pragma solidity ^ 0.8.13;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract FDemo is ERC721URIStorage {
    
    uint256 private _tokenId = 0;

    constructor() ERC721("FDemo", "FDM") {
        
}

function mint(string memory tokenUri) external returns (uint256) {
    uint newTokenId = _tokenId;


    _mint(msg.sender, newTokenId);
    _setTokenURI(newTokenId, tokenUri);

    _tokenId = _tokenId + 1;

    return newTokenId;

}

}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract mockNft is ERC721, Ownable {
    uint256 public _tokenIds;
    constructor() ERC721("MockNFT", "MNFT") Ownable(){
        _tokenIds = 0;
    }

    function mint() public {
        _tokenIds++;
        _safeMint(msg.sender, _tokenIds);
    }

    function mintHundred() public {
        for(uint i = 0; i<100; i++) {
            _safeMint(msg.sender, _tokenIds);
        }
    }
}
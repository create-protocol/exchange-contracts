// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract mockNFT is ERC721, Ownable {
    uint256 public _tokenIds;
    constructor() ERC721("MockNFT", "MNFT") Ownable(){
        _tokenIds = 0;
    }

    function mint() public {
        ++_tokenIds;
        _safeMint(msg.sender, _tokenIds);
    }

    function mintHundred(uint32 n) public {
        for(uint i = 0; i<n; i++) {
            ++_tokenIds;
            _safeMint(msg.sender, _tokenIds);
        }
    }
}
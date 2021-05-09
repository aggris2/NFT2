pragma solidity >=0.4.22 <0.9.0;

import "./ERC721Full.sol";

contract Cat is ERC721Full {

  constructor() ERC721Full("Cat", "CAT") public {
  }

  function mint(address _to, string memory _tokenURI) public returns(bool) {
  	uint _tokenId = totalSupply().add(1);
  	_mint(_to, _tokenId);
  	_setTokenURI(_tokenId, _tokenURI);
  	return true;
  }
}

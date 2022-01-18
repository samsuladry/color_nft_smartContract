// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Color is ERC721 {
  string[] public colors;
  mapping(string => bool) _colorExists;
// string public hello;

  constructor() ERC721("Color", "COLOR") {
    //   hello = "Hello World";
  }

  // E.G. color = "#FFFFFF"
  function mint(string memory _color) public {
    require(!_colorExists[_color]);
    colors.push(_color);
    uint _id = colors.length;
    _mint(msg.sender, _id);
    _colorExists[_color] = true;
  }

}
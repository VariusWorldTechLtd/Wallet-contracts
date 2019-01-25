pragma solidity ^0.4.24;

import "./openzeppelin/token/ERC20/StandardToken.sol";

contract SampleToken is StandardToken {
    string public name = "VWT Login Token";
    uint public decimals = 18;
    string public symbol = "VSSO";

    address public creator = 0x0;

    constructor() public {
        creator = msg.sender;
    }

    function issueTokens(address receipient, uint amount) public {
        _mint(receipient, amount);
    }

    function newAccounrIssueTokens(address receipient) public {
        if(balanceOf(receipient) == 0) {
            _mint(receipient, 100 * 1e18); //10000 tokens
        }
    }
}

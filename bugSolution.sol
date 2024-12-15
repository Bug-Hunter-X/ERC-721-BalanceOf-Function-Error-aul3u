function balanceOf(address account) public view returns (uint256) {
        return tokenIds[account].length;
    } 
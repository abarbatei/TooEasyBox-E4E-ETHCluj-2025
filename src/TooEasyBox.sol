// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TooEasyBox {
    mapping(address => uint256) public balances;

    function deposit(address account) external payable {
        require(account != address(0), "deposit account must exist");
        balances[account] += msg.value;
    }

    function withdraw() external {
        uint256 balance = balances[msg.sender];
        require(balance > 0, "Insufficient balance");

        (bool sent, ) = msg.sender.call{value: balance}("");
        require(sent, "Failed to send Ether");

        balances[msg.sender] = 0;
    }

    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

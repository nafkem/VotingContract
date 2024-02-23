// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./Voting.sol";

contract VotingPollFactory {
    address[] public polls;

    function createVotingPoll(string[] memory _optionNames) external {
        address newPoll = address(new VotingPoll(_optionNames));
        polls.push(newPoll);
    }

    function getPolls() external view returns (address[] memory) {
        return polls;
    }
}
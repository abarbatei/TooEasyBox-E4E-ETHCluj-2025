# TooEasyBox-E4E-ETHCluj-2025

## Requirements

Participants must have Foundry installed and have basic CLI knowledge.

Foundry can be installed by following the instructions [from here](https://getfoundry.sh/introduction/installation/).

Requires Solidity compiler for `0.8.20` minimum, `forge` should install the requirement automatically when running the test (in a later step).

## Setup

Setup should be already done default, just clone the repo with submodules:

```
git clone --recurse-submodules git@github.com:abarbatei/TooEasyBox-E4E-ETHCluj-2025.git
```

If for-whatever reason, the OpenZeppelin library is not found, you can re-add it as:

```sh
forge install OpenZeppelin/openzeppelin-contracts --no-commit
```

Running the task (with a minimum of 2 `v`s, for verbosity, can be 3):

```sh
forge test -vv
```

# Description

The `TooEasyBox` contract is used to house packages (ETH) for users. The currier places funds for each to withdraw. 
An attacker sees that there are a lot of packages (ETH) in the TooEasyBox and sets out to steal it all.
Task: 

# Task

In the `Playground.t.sol::hackerGonnaHack` function, implement what is necessary for the attacker to have stolen, at the end of the function call, all the ETH from the `TooEasyBox` contract.

_You cannot use any vm cheat codes._

Note: running the test without finish the task successfully will result in an error similar to this:

```
Ran 1 test for test/Kingdom.t.sol:Playground
Failing tests:
Encountered 1 failing test in test/Playground.t.sol:Playground
[FAIL. Reason: Hacker didn't hack! Too Easy Box was not that easy for ya? balance isn't 0!: 41000000000000000000 != 0] test_normalOperations() (gas: 145220)
```

When the test passes, you know you completed the task.

# Context

*Part of a [security workshop](https://github.com/ethcluj/Ethereum-for-Everyone-ETHCluj-2025-Book/blob/main/en/08-security-audits.md) of the Ethereum for Everyone 2025 book, a public good created to help Web2 users begin their journey into Web3. The book brings together a series of practical workshops presented at the EthCluj conference, aiming to make blockchain, Ethereum, and decentralized technologies more accessible to a wider audience.*
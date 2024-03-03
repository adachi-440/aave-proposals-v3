---
title: "Add sFRAX to Aave v3 Ethereum Pool"
author: "Tomo"
discussions: ""
---

## Simple Summary

## Motivation

## Specification

The table below illustrates the configured risk parameters for **sFRAX**

| Parameter                          |                                      Value |
| ---------------------------------- | -----------------------------------------: |
| Isolation Mode                     |                                       true |
| Borrowable                         |                                   DISABLED |
| Collateral Enabled                 |                                       true |
| Supply Cap (sFRAX)                 |                                 10,000,000 |
| Borrow Cap (sFRAX)                 |                                          0 |
| Debt Ceiling                       |                                      USD 0 |
| LTV                                |                                       70 % |
| LT                                 |                                       75 % |
| Liquidation Bonus                  |                                        6 % |
| Liquidation Protocol Fee           |                                       20 % |
| Reserve Factor                     |                                       10 % |
| Base Variable Borrow Rate          |                                        0 % |
| Variable Slope 1                   |                                        6 % |
| Variable Slope 2                   |                                       80 % |
| Uoptimal                           |                                       80 % |
| Stable Borrowing                   |                                   DISABLED |
| Stable Slope1                      |                                       13 % |
| Stable Slope2                      |                                      300 % |
| Base Stable Rate Offset            |                                        3 % |
| Stable Rate Excess Offset          |                                        8 % |
| Optimal Stable To Total Debt Ratio |                                       20 % |
| Flashloanable                      |                                    ENABLED |
| Siloed Borrowing                   |                                   DISABLED |
| Borrowable in Isolation            |                                   DISABLED |
| Oracle                             | 0xB9E1E3A9feFf48998E45Fa90847ed4D467E8BcfD |

## References

- Implementation: [AaveV3Ethereum](https://github.com/bgd-labs/aave-proposals-v3/blob/main/src/20240303_AaveV3Ethereum_AddSFRAXToAaveV3EthereumPool/AaveV3Ethereum_AddSFRAXToAaveV3EthereumPool_20240303.sol)
- Tests: [AaveV3Ethereum](https://github.com/bgd-labs/aave-proposals-v3/blob/main/src/20240303_AaveV3Ethereum_AddSFRAXToAaveV3EthereumPool/AaveV3Ethereum_AddSFRAXToAaveV3EthereumPool_20240303.t.sol)
- [Snapshot](TODO)
- [Discussion](TODO)

## Copyright

Copyright and related rights waived via [CC0](https://creativecommons.org/publicdomain/zero/1.0/).

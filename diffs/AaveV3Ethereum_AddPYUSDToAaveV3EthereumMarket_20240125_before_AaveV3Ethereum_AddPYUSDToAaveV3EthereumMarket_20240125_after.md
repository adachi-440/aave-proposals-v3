## Reserve changes

### Reserves added

#### PYUSD ([0x6c3ea9036406852006290770BEdFcAbA0e23A0e8](https://etherscan.io/address/0x6c3ea9036406852006290770BEdFcAbA0e23A0e8))

| description | value |
| --- | --- |
| decimals | 6 |
| isActive | true |
| isFrozen | false |
| supplyCap | 10,000,000 PYUSD |
| borrowCap | 9,000,000 PYUSD |
| debtCeiling | 0 $ |
| isSiloed | false |
| isFlashloanable | true |
| eModeCategory | 0 |
| oracle | [0x8f1dF6D7F2db73eECE86a18b4381F4707b918FB1](https://etherscan.io/address/0x8f1dF6D7F2db73eECE86a18b4381F4707b918FB1) |
| oracleDecimals | 8 |
| oracleDescription | PYUSD / USD |
| oracleLatestAnswer | 0.99946 |
| usageAsCollateralEnabled | false |
| ltv | 0 % |
| liquidationThreshold | 0 % |
| liquidationBonus | 0 % |
| liquidationProtocolFee | 0 % |
| reserveFactor | 20 % |
| aToken | [0x0C0d01AbF3e6aDfcA0989eBbA9d6e85dD58EaB1E](https://etherscan.io/address/0x0C0d01AbF3e6aDfcA0989eBbA9d6e85dD58EaB1E) |
| aTokenImpl | [0x7EfFD7b47Bfd17e52fB7559d3f924201b9DbfF3d](https://etherscan.io/address/0x7EfFD7b47Bfd17e52fB7559d3f924201b9DbfF3d) |
| variableDebtToken | [0x57B67e4DE077085Fd0AF2174e9c14871BE664546](https://etherscan.io/address/0x57B67e4DE077085Fd0AF2174e9c14871BE664546) |
| variableDebtTokenImpl | [0xaC725CB59D16C81061BDeA61041a8A5e73DA9EC6](https://etherscan.io/address/0xaC725CB59D16C81061BDeA61041a8A5e73DA9EC6) |
| stableDebtToken | [0x5B393DB4c72B1Bd82CE2834F6485d61b137Bc7aC](https://etherscan.io/address/0x5B393DB4c72B1Bd82CE2834F6485d61b137Bc7aC) |
| stableDebtTokenImpl | [0x15C5620dfFaC7c7366EED66C20Ad222DDbB1eD57](https://etherscan.io/address/0x15C5620dfFaC7c7366EED66C20Ad222DDbB1eD57) |
| borrowingEnabled | true |
| stableBorrowRateEnabled | false |
| isBorrowableInIsolation | false |
| interestRateStrategy | [0xAC4f9019608f3A359Ba6a576DC4deC9561D2e514](https://etherscan.io/address/0xAC4f9019608f3A359Ba6a576DC4deC9561D2e514) |
| aTokenName | Aave Ethereum PYUSD |
| aTokenSymbol | aEthPYUSD |
| isPaused | false |
| stableDebtTokenName | Aave Ethereum Stable Debt PYUSD |
| stableDebtTokenSymbol | stableDebtEthPYUSD |
| variableDebtTokenName | Aave Ethereum Variable Debt PYUSD |
| variableDebtTokenSymbol | variableDebtEthPYUSD |
| optimalUsageRatio | 80 % |
| maxExcessUsageRatio | 20 % |
| baseVariableBorrowRate | 0 % |
| variableRateSlope1 | 6 % |
| variableRateSlope2 | 80 % |
| baseStableBorrowRate | 9 % |
| stableRateSlope1 | 13 % |
| stableRateSlope2 | 300 % |
| optimalStableToTotalDebtRatio | 20 % |
| maxExcessStableToTotalDebtRatio | 80 % |
| interestRate | ![ir](/.assets/7dc62027c00efdf4a27a7ad723f8f7ca99f89d77.svg) |


## Raw diff

```json
{
  "reserves": {
    "0x6c3ea9036406852006290770BEdFcAbA0e23A0e8": {
      "from": null,
      "to": {
        "aToken": "0x0C0d01AbF3e6aDfcA0989eBbA9d6e85dD58EaB1E",
        "aTokenImpl": "0x7EfFD7b47Bfd17e52fB7559d3f924201b9DbfF3d",
        "aTokenName": "Aave Ethereum PYUSD",
        "aTokenSymbol": "aEthPYUSD",
        "borrowCap": 9000000,
        "borrowingEnabled": true,
        "debtCeiling": 0,
        "decimals": 6,
        "eModeCategory": 0,
        "interestRateStrategy": "0xAC4f9019608f3A359Ba6a576DC4deC9561D2e514",
        "isActive": true,
        "isBorrowableInIsolation": false,
        "isFlashloanable": true,
        "isFrozen": false,
        "isPaused": false,
        "isSiloed": false,
        "liquidationBonus": 0,
        "liquidationProtocolFee": 0,
        "liquidationThreshold": 0,
        "ltv": 0,
        "oracle": "0x8f1dF6D7F2db73eECE86a18b4381F4707b918FB1",
        "oracleDecimals": 8,
        "oracleDescription": "PYUSD / USD",
        "oracleLatestAnswer": 99946000,
        "reserveFactor": 2000,
        "stableBorrowRateEnabled": false,
        "stableDebtToken": "0x5B393DB4c72B1Bd82CE2834F6485d61b137Bc7aC",
        "stableDebtTokenImpl": "0x15C5620dfFaC7c7366EED66C20Ad222DDbB1eD57",
        "stableDebtTokenName": "Aave Ethereum Stable Debt PYUSD",
        "stableDebtTokenSymbol": "stableDebtEthPYUSD",
        "supplyCap": 10000000,
        "symbol": "PYUSD",
        "underlying": "0x6c3ea9036406852006290770BEdFcAbA0e23A0e8",
        "usageAsCollateralEnabled": false,
        "variableDebtToken": "0x57B67e4DE077085Fd0AF2174e9c14871BE664546",
        "variableDebtTokenImpl": "0xaC725CB59D16C81061BDeA61041a8A5e73DA9EC6",
        "variableDebtTokenName": "Aave Ethereum Variable Debt PYUSD",
        "variableDebtTokenSymbol": "variableDebtEthPYUSD"
      }
    }
  },
  "strategies": {
    "0xAC4f9019608f3A359Ba6a576DC4deC9561D2e514": {
      "from": null,
      "to": {
        "baseStableBorrowRate": "90000000000000000000000000",
        "baseVariableBorrowRate": 0,
        "maxExcessStableToTotalDebtRatio": "800000000000000000000000000",
        "maxExcessUsageRatio": "200000000000000000000000000",
        "optimalStableToTotalDebtRatio": "200000000000000000000000000",
        "optimalUsageRatio": "800000000000000000000000000",
        "stableRateSlope1": "130000000000000000000000000",
        "stableRateSlope2": "3000000000000000000000000000",
        "variableRateSlope1": "60000000000000000000000000",
        "variableRateSlope2": "800000000000000000000000000"
      }
    }
  }
}
```
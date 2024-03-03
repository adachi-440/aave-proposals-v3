import {ConfigFile} from '../../generator/types';
export const config: ConfigFile = {
  rootOptions: {
    pools: ['AaveV3Ethereum'],
    title: 'Add sFRAX to Aave v3 Ethereum Pool',
    shortName: 'AddSFRAXToAaveV3EthereumPool',
    date: '20240303',
    author: 'Tomo',
    discussion: '',
    snapshot: '',
  },
  poolOptions: {
    AaveV3Ethereum: {
      configs: {
        ASSET_LISTING: [
          {
            assetSymbol: 'sFRAX',
            decimals: 18,
            priceFeed: '0xB9E1E3A9feFf48998E45Fa90847ed4D467E8BcfD',
            ltv: '70',
            liqThreshold: '75',
            liqBonus: '6',
            debtCeiling: '0',
            liqProtocolFee: '20',
            enabledToBorrow: 'DISABLED',
            flashloanable: 'ENABLED',
            stableRateModeEnabled: 'DISABLED',
            borrowableInIsolation: 'DISABLED',
            withSiloedBorrowing: 'DISABLED',
            reserveFactor: '10',
            supplyCap: '10000000',
            borrowCap: '0',
            rateStrategyParams: {
              optimalUtilizationRate: '80',
              baseVariableBorrowRate: '0',
              variableRateSlope1: '6',
              variableRateSlope2: '80',
              stableRateSlope1: '13',
              stableRateSlope2: '300',
              baseStableRateOffset: '3',
              stableRateExcessOffset: '8',
              optimalStableToTotalDebtRatio: '20',
            },
            eModeCategory: 'AaveV3EthereumEModes.NONE',
            asset: '0xA663B02CF0a4b149d2aD41910CB81e23e1c41c32',
          },
        ],
      },
      cache: {blockNumber: 19353118},
    },
  },
};

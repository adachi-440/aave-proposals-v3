// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3Ethereum, AaveV3EthereumEModes} from 'aave-address-book/AaveV3Ethereum.sol';
import {AaveV3Ethereum} from 'aave-address-book/AaveV3Ethereum.sol';
import {AaveV3PayloadEthereum} from 'aave-helpers/v3-config-engine/AaveV3PayloadEthereum.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {IV3RateStrategyFactory} from 'aave-helpers/v3-config-engine/IV3RateStrategyFactory.sol';
import {IERC20} from 'solidity-utils/contracts/oz-common/interfaces/IERC20.sol';
import {SafeERC20} from 'solidity-utils/contracts/oz-common/SafeERC20.sol';

/**
 * @title Add sFRAX to Aave v3 Ethereum Pool
 * @author Tomo
 * - Snapshot: TODO
 * - Discussion: TODO
 */
contract AaveV3Ethereum_AddSFRAXToAaveV3EthereumPool_20240303 is AaveV3PayloadEthereum {
  using SafeERC20 for IERC20;

  address public constant sFRAX = 0xA663B02CF0a4b149d2aD41910CB81e23e1c41c32;
  uint256 public constant sFRAX_SEED_AMOUNT = 1e18;

  function _postExecute() internal override {
    IERC20(sFRAX).forceApprove(address(AaveV3Ethereum.POOL), sFRAX_SEED_AMOUNT);
    AaveV3Ethereum.POOL.supply(sFRAX, sFRAX_SEED_AMOUNT, address(AaveV3Ethereum.COLLECTOR), 0);
  }

  function newListings() public pure override returns (IAaveV3ConfigEngine.Listing[] memory) {
    IAaveV3ConfigEngine.Listing[] memory listings = new IAaveV3ConfigEngine.Listing[](1);

    listings[0] = IAaveV3ConfigEngine.Listing({
      asset: sFRAX,
      assetSymbol: 'sFRAX',
      priceFeed: 0xB9E1E3A9feFf48998E45Fa90847ed4D467E8BcfD,
      eModeCategory: AaveV3EthereumEModes.NONE,
      enabledToBorrow: EngineFlags.DISABLED,
      stableRateModeEnabled: EngineFlags.DISABLED,
      borrowableInIsolation: EngineFlags.DISABLED,
      withSiloedBorrowing: EngineFlags.DISABLED,
      flashloanable: EngineFlags.ENABLED,
      ltv: 70_00,
      liqThreshold: 75_00,
      liqBonus: 6_00,
      reserveFactor: 10_00,
      supplyCap: 10_000_000,
      borrowCap: 0,
      debtCeiling: 0,
      liqProtocolFee: 20_00,
      rateStrategyParams: IV3RateStrategyFactory.RateStrategyParams({
        optimalUsageRatio: _bpsToRay(80_00),
        baseVariableBorrowRate: _bpsToRay(0),
        variableRateSlope1: _bpsToRay(6_00),
        variableRateSlope2: _bpsToRay(80_00),
        stableRateSlope1: _bpsToRay(13_00),
        stableRateSlope2: _bpsToRay(300_00),
        baseStableRateOffset: _bpsToRay(3_00),
        stableRateExcessOffset: _bpsToRay(8_00),
        optimalStableToTotalDebtRatio: _bpsToRay(20_00)
      })
    });

    return listings;
  }
}

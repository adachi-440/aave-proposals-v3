// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3BNBAssets} from 'aave-address-book/AaveV3BNB.sol';
import {AaveV3PayloadBnb} from 'aave-helpers/v3-config-engine/AaveV3PayloadBnb.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';

/**
 * @title Harmonize USDT Risk Parameters on Aave V3 Markets
 * @author Aave Chan Initiative
 * - Snapshot: https://snapshot.org/#/aave.eth/proposal/0x285c3f9ef8ae3e0286ce18b45dc7605174c3fb61edf1df34ed5d8f5aa621ab9d
 * - Discussion: https://governance.aave.com/t/arfc-harmonize-usdt-risk-parameters-on-aave-v3-markets/15815
 */
contract AaveV3BNB_HarmonizeUSDTRiskParametersOnAaveV3Markets_20240115 is AaveV3PayloadBnb {
  function collateralsUpdates()
    public
    pure
    override
    returns (IAaveV3ConfigEngine.CollateralUpdate[] memory)
  {
    IAaveV3ConfigEngine.CollateralUpdate[]
      memory collateralUpdate = new IAaveV3ConfigEngine.CollateralUpdate[](1);

    collateralUpdate[0] = IAaveV3ConfigEngine.CollateralUpdate({
      asset: AaveV3BNBAssets.USDT_UNDERLYING,
      ltv: 77_00,
      liqThreshold: EngineFlags.KEEP_CURRENT,
      liqBonus: EngineFlags.KEEP_CURRENT,
      debtCeiling: EngineFlags.KEEP_CURRENT,
      liqProtocolFee: EngineFlags.KEEP_CURRENT
    });

    return collateralUpdate;
  }
}

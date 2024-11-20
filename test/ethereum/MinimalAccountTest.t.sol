// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Test} from "forge-std/Test.sol";
import {MinimalAccount} from "src/ethereum/MinimalAccount.sol";
import {DeployMinimal} from "script/DeployMinimal.s.sol";
import {HelperConfig} from "script/HelperConfig.s.sol";
import {ERC20Mock} from "@openzeppelin/contracts/mocks/token/ERC20Mock.sol";

contract MinimalAccountTest is Test {

    HelperConfig helperConfig;
    MinimalAccount minimalAccount;
    ERC20Mock usdc;

    function setUp() public {
        // deploy minimal account
        DeployMinimal deployMinimal = new DeployMinimal();
        (HelperConfig helperConfig, MinimalAccount minimalAccount) = deployMinimal.deployMinimalAccount();
        usdc = new ERC20Mock();
        // deploy helper config
        // call deployMinimalAccount
    }

    //USDC Approval

    function testOwnerCanExecuteCommands() public {
        // Arrange
        assertEq(usdc.balanceOf(address(minimalAccount)), 0);
        address dest = address(usdc);
        uint256 value = 0;
        bytes memory funcData = abi.encodeWithSelector(ERC20Mock.mint.selector);

        //Act
    }

    function test() public {
        // deploy minimal account
        // deploy helper config
        // call deployMinimalAccount
    }
}
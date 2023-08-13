// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

abstract contract IFriendTechSharesV1 {
    mapping(address => mapping(address => uint256)) public sharesBalance;
    mapping(address => uint256) public sharesSupply;

    function subjectFeePercent() external virtual;

    function getBuyPrice(
        address sharesSubject,
        uint256 amount
    ) external view virtual returns (uint256);

    function getBuyPriceAfterFee(
        address sharesSubject,
        uint256 amount
    ) external view virtual returns (uint256);

    function getSellPriceAfterFee(
        address sharesSubject,
        uint256 amount
    ) external view virtual returns (uint256);

    function getSellPrice(
        address sharesSubject,
        uint256 amount
    ) external view virtual returns (uint256);

    function buyShares(
        address sharesSubject,
        uint256 amount
    ) external payable virtual;

    function sellShares(
        address sharesSubject,
        uint256 amount
    ) external payable virtual;
}

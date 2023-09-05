// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;
import "IngeritanceDemo/Ownable.sol";
import "IngeritanceDemo/SecretValut.sol";

contract MyContract is Ownable {

    address secretVault;
    string secret;

    constructor(string memory _secret) public {
        SecretVault _secretVault = new SecretVault(_secret);
        secret = _secretVault.getSecretValue();
        // secretVault = address(_secretVault);
        super;
    }

    function getSecret() public view onlyOwner returns (string memory) {
        // SecretVault _secretVault = SecretVault(secretVault);
        // return _secretVault.getSecretValue();
        return secret;
    }
}
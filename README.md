## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

forge verify-contract 0xYourContractAddress src/MyContract.sol:MyContract --chain 1 --verifier etherscan --etherscan-api-key YOUR_ETHERSCAN_API_KEY

forge verify-contract 0x0F37626a6A84CB346C666222a553893B8DE3AAF1 src/SuryaErc721Contracts.sol:SuryaErc721Contracts --chain 80002 --verifier etherscan --etherscan-api-key HUET86S8QRJ5DPUT34PMHK64SMXM55VC34

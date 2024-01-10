# Project Title

Project: Degen Token (ERC-20): Unlocking the Future of Gaming

## Description

The Creation of a token that can be earned by players in the Degen Gaming studio and then exchanged for rewards in an in-game store. For illustration, this project uses an enum to provide two item options, Item_I and Item_II either of which players can redeem from the store by committing some of their earned tokens. The tokens are destroyed (burned) upon successful item redemption.

## Getting Started

### Installing

* clone a copy of this project by running the following command in a terminal pointed to your choice location for the project.

```
git clone https://github.com/Adesdesk/DegenToken.git
```
* Once done, navigate (cd) into the DegenToken project folder and install dependencies in the same terminal by running the following commands in the same order
```
cd DegenToken
npm install
```

### Executing program

* Open the project folder in your preferred IDE
* Add a .env file to the project's root folder and paste the following in it, ensuring to replace placeholder values with specific values that apply
```
PRIVATE_KEY='your_wallet_private_key'
SNOWTRACE_API_KEY='snowtrace'
``` 
* To deploy and verify a version of this contract for yourself, run the following commands in the same order, one after the other is completed. 

```
npx hardhat run scripts/deploy.js --network fuji
npx hardhat verify <TOKEN ADDRESS> --network fuji
```

## Help

* You must have sufficient test AVAX tokens in your preferred wallet to successfully deploy this contract

## Author(s)

Name: Adeola David Adelakun

Email: adesdesk@outlook.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details

## Deployment details

Degen token deployed to 0x17C748C0c32Ca6E7Cf4749F056c6de3f13573BB5

Successfully verified contract DegenToken on the block explorer.
https://testnet.snowtrace.io/address/0x17C748C0c32Ca6E7Cf4749F056c6de3f13573BB5#code

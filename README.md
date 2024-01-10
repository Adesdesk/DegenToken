# Project Title

Project: Degen Token (ERC-20): Unlocking the Future of Gaming

## Description

The Creation of a token that can be earned by players in the Degen Gaming studio and then exchanged for rewards in an in-game store.

## Getting Started

### Installing

* clone a copy of this project by running the following command in a terminal pointed to your choice location for the project.

```
git clone https://github.com/Adesdesk/DegenToken.git
```
* Once done, navigate (cd) into the DegenToken project and install dependencies in the same terminal by running the following commands in the same order
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
* To deploy this contract for yourself, run the following command 

```
npx hardhat run scripts/deploy.js --network fuji
npx hardhat verify <TOKEN ADDRESS> --network fuji
```

## Help

Ensure that the smart contract file you create is named with a ".sol" file extension

## Author(s)

Name: Adeola David Adelakun

Email: adesdesk@outlook.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details

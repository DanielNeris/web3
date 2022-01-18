const dotenv = require("dotenv");
dotenv.config();

require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: `${process.env.ROPSTEN_URL}`,
      accounts: [`${process.env.METAMASK_PRIVATE_KEY_ACCOUNT}`],
    },
  },
};

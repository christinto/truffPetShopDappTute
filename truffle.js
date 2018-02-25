module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  //7545 for ganache.. 8545 for ganache-cli.
  networks: {
    development: {
      //host: "localhost",
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // Match any network id
    }
  }
};

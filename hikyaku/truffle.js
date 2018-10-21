/*
 * NB: since truffle-hdwallet-provider 0.0.5 you must wrap HDWallet providers in a 
 * function when declaring them. Failure to do so will cause commands to hang. ex:
 * ```
 * mainnet: {
 *     provider: function() { 
 *       return new HDWalletProvider(mnemonic, 'https://mainnet.infura.io/<infura-key>') 
 *     },
 *     network_id: '1',
 *     gas: 4500000,
 *     gasPrice: 10000000000,
 *   },
 */
module.exports = {
  networks: {
    development: {
      host: '192.168.13.164',
      port: 8540,
      network_id: "*",
      from: '0x00a329c0648769a73afac7f9381e08fb43dbea72'
    }
  }
};

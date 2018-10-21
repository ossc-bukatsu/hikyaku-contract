var DeliverBaggage = artifacts.require("./DeliverBaggage.sol")

module.exports = function(deployer) {
	    deployer.deploy(DeliverBaggage);
};

var FirstDemoContract = artifacts.require("FirstDemoContract");
var PayIfRainTomorrow = artifacts.require("PayIfRainTomorrow");
// var SimpleStorage = artifacts.require("SimpleStorage");

module.exports = async function(deployer, network, accounts) {
  deployer.deploy(FirstDemoContract, 1000)
  deployer.deploy(PayIfRainTomorrow)
  //access information about your deployed contract instance
  // const instance1 = await FirstDemoContract.deployed();
  // const instance2 = await PayIfRainTomorrow.deployed();
};

// exports = {}

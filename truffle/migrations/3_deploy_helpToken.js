const helpToken = artifacts.require("helpToken");

module.exports = function (deployer) {
  deployer.deploy(helpToken);
};

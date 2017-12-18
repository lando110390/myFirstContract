const ContractNameService = artifacts.require('./ContractNameService.sol'),
    CourseTro = artifacts.require('./CourseTro.sol');

module.exports = function(deployer) {
  return deployer.deploy(CourseTro, ContractNameService.address).then(function() {
    return ContractNameService.deployed();
  })
};
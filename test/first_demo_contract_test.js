const FirstDemoContractTest = artifacts.require("FirstDemoContractTest");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("FirstDemoContractTest", function (/* accounts */) {
  it("should assert true", async function () {
    await FirstDemoContractTest.deployed();
    return assert.isTrue(true);
  });
});

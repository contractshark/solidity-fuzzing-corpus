contract Test {
function test() public returns (uint ret) { return uint(address(uint128(type(uint200).max))); }
}
// ====
// compileViaYul: also
// ----
// test() -> 0xffffffffffffffffffffffffffffffff

pragma experimental SMTChecker;

contract C {
	uint x = 2;
	constructor () {
		assert(x == 2);
		assert(x == 3);
	}
}
// ----
// Warning 4661: (97-111): Assertion violation happens here

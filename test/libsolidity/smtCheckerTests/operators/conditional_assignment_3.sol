pragma experimental SMTChecker;

contract C {
	function f(uint a, uint b) public pure {
		require(a < 10);
		require(b <= a);

		uint c = (b > 4) ? a++ : b++;
		assert(c > a);
	}
}
// ----
// Warning 6328: (161-174): CHC: Assertion violation happens here.\nCounterexample:\n\na = 6\nb = 5\n\n\nTransaction trace:\nconstructor()\nf(5, 5)

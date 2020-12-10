pragma experimental SMTChecker;

contract D
{
	uint x;
}

contract C
{
	function f(D c, D d) public pure {
		assert(c == d);
	}
}
// ----
// Warning 6328: (109-123): CHC: Assertion violation happens here.\nCounterexample:\n\nc = 1\nd = 0\n\n\nTransaction trace:\nconstructor()\nf(1, 0)

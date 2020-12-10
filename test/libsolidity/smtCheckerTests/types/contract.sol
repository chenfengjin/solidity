pragma experimental SMTChecker;

contract C
{
	function f(C c, C d) public pure {
		assert(c == d);
	}
}
// ----
// Warning 6328: (84-98): CHC: Assertion violation happens here.\nCounterexample:\n\nc = 1\nd = 0\n\n\nTransaction trace:\nconstructor()\nf(1, 0)

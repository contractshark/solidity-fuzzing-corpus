{
        function foo(x) {
		for {} x { x := mload(0) } {
	                for {} x { x := mload(0) mstore(0, 0)} {}
		}
        }
        mstore(0, 1337)
        foo(42)
        sstore(0, mload(0))
}

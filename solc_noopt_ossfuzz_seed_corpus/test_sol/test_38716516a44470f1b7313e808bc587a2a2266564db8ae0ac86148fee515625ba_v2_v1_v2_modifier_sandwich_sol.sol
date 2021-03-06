==== Source: A ====
pragma experimental ABIEncoderV2;

struct Data {
bool flag;
}

contract A {
function get() public view returns (Data memory) {}
}
==== Source: B ====
import "A";

contract B {
modifier validate() {
    A(0x00).get();
    _;
}
}
==== Source: C ====
pragma experimental ABIEncoderV2;

import "B";

contract C is B {
function foo()
    public
    validate()
{}
}
// ----
// TypeError 2428: (B:60-73): The type of return parameter 1, struct Data, is only supported in ABIEncoderV2. Use "pragma experimental ABIEncoderV2;" to enable the feature.

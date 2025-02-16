# Phase 1: Basic CLI Calculator
Goal: Perform simple arithmetic operations (+, -, *, /) with error handling.
Key Concepts Used

- [ ] Functions – Define add, subtract, multiply, divide.

- [ ] Errors – Handle division by zero using error{DivideByZero}.

- [ ] Structs – Store the last computed result for future calculations.

- [ ] Loops & Switch – Keep the program running, allowing multiple calculations.

- [ ] Testing – Ensure correctness for all operations.

Why This Step? It reinforces functions, errors, loops, and structs in a tangible way.

# Phase 2: Expression Evaluator

Goal: Extend the calculator to evaluate entire expressions like "3 + 5 * 2" using parsing techniques.

New Concepts Introduced

- [ ] Slices & Arrays – Tokenize the input (["3", "+", "5", "*", "2"]).

- [ ] Enums & Unions – Represent different token types (Number, Operator).

- [ ] Comptime & Anytype – Allow different numeric types (i32, f64).

- [ ] Error Handling – Catch invalid expressions (error{InvalidSyntax}).

Why This Step? It introduces slices, enums, and comptime, helping you see how Zig handles dynamic data efficiently.

# Phase 3: Custom Formula Solver

Goal: Let users define formulas (e.g., "area = length * width") and solve them dynamically.

New Concepts Introduced

- [ ] Structs & Arrays – Store user-defined formulas in memory.

- [ ] Pointers & Slices – Efficiently handle variable storage.

- [ ] Comptime – Generate functions for formulas at compile-time for max performance.

- [ ] Testing & Error Handling – Ensure user-defined formulas are valid.

Why This Step?

It brings everything together: functions, structs, pointers, enums, errors, and comptime to build an interactive, high-performance tool.
Final Goal: A Fast, Type-Safe Math Engine

By the end of this project, you’ll have:

✅ A fully interactive math solver that processes user-defined formulas.

✅ Deep knowledge of Zig’s type safety, performance optimizations, and compile-time capabilities.

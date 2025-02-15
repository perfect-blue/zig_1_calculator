const std = @import("std");
const testing = std.testing;

pub fn main() !void {
    var result = Calculator{
        .total = 0,
    };

    std.debug.print("result: {!}\n", .{result.total});
    calculate(&result, ArithmeticOperation.add, 10);
    calculate(&result, ArithmeticOperation.substract, 4);
    calculate(&result, ArithmeticOperation.divide, 3);
    calculate(&result, ArithmeticOperation.multiply, 4);
    std.debug.print("result: {!}\n", .{result.total});
}

pub const Calculator = struct {
    total: u64,
};

const ArithmeticOperation = enum {
    add,
    substract,
    multiply,
    divide,
};

fn calculate(calculator: *Calculator, operation: ArithmeticOperation, a: u64) void {
    calculator.total = switch (operation) {
        .add => calculator.total + a,
        .substract => calculator.total - a,
        .multiply => calculator.total * a,
        .divide => calculator.total / a,
    };
}

test "calculate" {
    var calc = Calculator{ .total = 10 };

    calculate(&calc, .add, 5);
    try testing.expectEqual(@as(u64, 15), calc.total);

    calculate(&calc, .substract, 3);
    try testing.expectEqual(@as(u64, 12), calc.total);

    calculate(&calc, .multiply, 2);
    try testing.expectEqual(@as(u64, 24), calc.total);

    calculate(&calc, .divide, 4);
    try testing.expectEqual(@as(u64, 6), calc.total);
}

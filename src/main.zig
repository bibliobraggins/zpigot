const std = @import("std");
const message = @import("./message.zig");

pub fn main() !void {
    // todo: start a type of socket server based on input/config
    const stdout_file = std.io.getStdOut().writer();

    var bw = std.io.bufferedWriter(stdout_file);

    const stdout = bw.writer();

    try stdout.print(message.Version, .{});

    try bw.flush(); // don't forget to flush!
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}

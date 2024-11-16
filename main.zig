const std = @import("std");

pub fn main() !void {
    var timer = try std.time.Timer.start();
    var array = [_]usize{0} ** 10000;
    for (0..10000) |i| {
        for (0..100000) |j| {
            array[i] = array[i] + j;
        }
    }
    const elapsed = timer.read();
    std.debug.print("Elapsed: {}\n", .{std.fmt.fmtDuration(elapsed)});
}

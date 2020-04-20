export fn gcd(a: i32, b: i32) i32 {
    var va = a;
    var vb = b;
    if (a < b) {
        va = b;
        vb = a;
    }
    var r = @rem(a, b);
    while (r != 0) {
        va = vb;
        vb = r;
        r = @rem(va, vb);
    }
    return vb;
}

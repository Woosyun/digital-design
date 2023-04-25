module circuit_7 (y,a,b,c,d);
    input a, b, c, d;
    output y;
    // wire [22:0]w, tw1, tw2;
    // and G1(w[1:1], a, b);
    // or G2(w[2:2], b, c);
    // nand3 G3(w[3:3], b, c, d);
    // not G4(w[4:4], c);
    // not G5(w[5:5], b);
    // nor G6(w[6:6], w[4:4], c);
    // nand G7(w[7:7], w[5:5], w[6:6]);
    // not G8(w[8:8], w[5:5]);
    // not G9(w[9:9], w[4:4]);
    // not G10(w[10:10], w[3:3]);
    // nor G11(w[11:11], w[1:1], w[2:2]);
    // nand G12(w[12:12], w[2:2], b);
    // nor G13(w[13:13], w[3:3], w[1:1]);
    // nand G14(w[14:14], w[7:7], w[13:13]);
    // nand G15(w[15:15], w[14:14], w[12:12]);
    // or G16(w[16:16], w[12:12], w[8:8]);
    // or3 G17(w[17:17], w[13:13], w[9:9], w[10:10]);
    // xor G18(w[18:18], w[11:11], w[12:12]);
    // xor G19(w[19:19], w[11:11], w[12:12]);
    // and G20(w[20:20], w[19:19], w[18:18]);
    // xor3 G21(w[21:21], w[19:19], w[17:17], w[16:16]);
    // xor3 G22(y, w[20:20], w[21:21], w[15:15]);
    wire [6:0]w;
    or G1(w[1:1], a, b);
    not G2(w[2:2], c);
    nand G3(w[3:3], w[2:2], a);
    and G4(w[4:4], a, d);
    nand G5(w[5:5], w[1:1], w[3:3]);
    xor G6(y, w[5:5], w[4:4]);
    
endmodule

module nand3 (
    w, x, y, z
);
    input x,y,z;
    output w;
    wire w1, w2;
    and G1(w1, x, y);
    and G2(w2, w1, z);
    not G3(w, w2);
endmodule

module or3(
    w, a, b, c
);
    input a, b, c;
    output w;
    wire w1;
    or G1(w1, a, b);
    or G2(w, w1, c);
endmodule

module xor3(
    w, a, b, c
);
    input a, b, c;
    output w;
    wire w1;
    xor G1(w1, a, b);
    xor G2(w, w1, c);
endmodule
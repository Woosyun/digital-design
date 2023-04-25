module assignment();
    integer i;
    reg [7:0] x;
    wire y;
    circuit_7 c2(y, x[3:3], x[2:2], x[1:1], x[0:0]);

    initial begin
        $display("%4s   ", "time y");

        $monitor("%4t   %2b %2b %2b %2b %2b",
        $time, x[3:3], x[2:2], x[1:1], x[0:0], y);

        for(i=0; i<(2**4); i=i+1)
            begin
                x=i;
                #1;
            end
        $finish;
    end
    initial
        begin
            $dumpfile("test_assignment.vcd");
        end
endmodule
/*
iverilog -o test1 assignment.v circuit_7.v
vvp test1
*/
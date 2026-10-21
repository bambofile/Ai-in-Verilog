module ai;
reg  signed [15:0] W [0:4];
reg  signed [15:0] F = 2; 
reg  signed [15:0] D, A, L ;
reg  signed [15:0] N1 ,N2 ,N3 ,N4 ,N5;
initial begin
    W[0] = 5; //left 70degrees distance
    W[1] = 1; //left 45degrees distance
    W[2] = 0; // in front distance
    W[3] = 0; //right 45degres distance
    W[4] = 0; //right 70degres distance


    N1 = (+ W[1] / 2 - W[0]);
    N2 = (W[3] + N1);
    N3 = (W[2] * F);

    N5 = (N3 / 2 - W[4]);
    N4 = (W[1] + N5);
     
    A = (N1 * F + N2);
    L = (N2 + N4 + N3);
    D = (N5 * F + N4);
    
    $display("A = %d", A);
    $display("W = %d", L);
    $display("D = %d", D);
    end 
endmodule

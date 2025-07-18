module DataMemory (clk,memWrite,addr,writeData,readData);
    input clk;
    input memWrite;     
    input [31:0] addr;         
    input [31:0] writeData;    
    output wire [31:0] readData; 

    
    reg [31:0] memory [0:1023];

    
    assign readData = memory[addr[11:2]]; 


    
    always @(posedge clk) begin
        if (memWrite) begin
            memory[addr[11:2]] <= writeData;
        end
    end

    initial begin
        memory[0]  = 32'b11001010110110011100010101100010;
        memory[1]  = 32'b00010000100001101010101100010101;
        memory[2]  = 32'b10101010001011110101100000110101;
        memory[3]  = 32'b01101100010100100111010111110111;
        memory[4]  = 32'b11111101110100011101101011001100; // Largest
        memory[5]  = 32'b00011101000100000011100001010111;
        memory[6]  = 32'b01010011011010101100110100100101;
        memory[7]  = 32'b11100001010011111101101110110011;
        memory[8]  = 32'b00010111000001000101000011110101;
        memory[9]  = 32'b10001110111100011110111010100000;
        memory[10] = 32'b01110100001100101010101101101110;
        memory[11] = 32'b00101001011000111001111110010000;
        memory[12] = 32'b10011100010110010001001100011100;
        memory[13] = 32'b00001101111011111100011101101011;
        memory[14] = 32'b11000010100001101101010110100101;
        memory[15] = 32'b01011111110110110100101100110111;
        memory[16] = 32'b10110001110000010111000001111000;
        memory[17] = 32'b00100110100111101010110000000001;
        memory[18] = 32'b11010100001101110110101010111010;
        memory[19] = 32'b01100011101111000011110110010001;
    end

endmodule

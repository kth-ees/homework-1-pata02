module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  always_comb begin

    //Keep the BCD as the same as binary for values 0-9
    //For values 10-15, use the values 0-5

    case (binary)
      4'd0 : bcd = binary;
      4'd1 : bcd = binary;
      4'd2 : bcd = binary;
      4'd3 : bcd = binary;
      4'd4 : bcd = binary;
      4'd5 : bcd = binary;
      4'd6 : bcd = binary;
      4'd7 : bcd = binary;
      4'd8 : bcd = binary;
      4'd9 : bcd = binary;
      4'd10: bcd = 4'd0;
      4'd11: bcd = 4'd1;
      4'd12: bcd = 4'd2;
      4'd13: bcd = 4'd3;
      4'd14: bcd = 4'd4;
      4'd15: bcd = 4'd5;
      default: bcd = 4'd0;
    endcase

    //Set the carry output if binary input is greater than 9
    carry = (binary > 4'd9) ? 1'b1 : 1'b0;
  end
endmodule

module moore_100(clk,rst,seq_in,det_out);
  input clk,rst,seq_in;
  output reg det_out;
  reg [2:0] ps,ns;

  parameter idle=3'b000;
  parameter s1  =3'b001;
  parameter s2  =3'b010;
  parameter s3  =3'b011;

  // Present State
  always @(posedge clk or negedge rst)
  begin
    if(!rst)
      ps <= idle;
    else
      ps <= ns;
  end

  // Next State Logic
  always @(*)
begin
    case(ps)

        idle:
        begin
            if(seq_in)
                ns = s1;
            else
                ns = idle;
        end

        s1:
        begin
            if(seq_in)
                ns = s1;
            else
                ns = s2;
        end

        s2:
        begin
            if(seq_in)
                ns = s1;
            else
                ns = s3;
        end

        s3:
        begin
            if(seq_in)
                ns = s1;      // Overlapping
            else
                ns = idle;
        end

        default:
            ns = idle;

    endcase
end
  // Moore Output Logic
always @(*)
begin
    case(ps)
        s3: det_out = 1;
        default: det_out = 0;
    endcase
end

endmodule
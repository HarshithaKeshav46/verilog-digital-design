module fsm_melay_1010(clk,rst,seq_in,det_out);
  input clk,rst,seq_in;
  output reg det_out;
  reg[1:0]ps,ns;//declare state region
  
  parameter idle=2'b00;
  parameter s1=2'b01;
  parameter s2=2'b10;
  parameter s3=2'b11;
  
  //always block for state register
  
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        ps<=idle;
      else
        ps<=ns;
    end
  
  //always block for next state decoder and output decoder
  
  always@(ps,seq_in)
    begin
      case(ps)
        idle:if(seq_in)
          begin
            ns=s1;
            det_out=0;
          end
        else
          begin
            ns=idle;
            det_out=0;
          end
        
        s1:if(seq_in)
          begin
            ns=s1;
            det_out=0;
          end
        else
          begin
            ns=s2;
            det_out=0;
          end
        
        s2:if(seq_in)
          begin
            ns=s3;
            det_out=0;
          end
        else
          begin
            ns=s2;
            det_out=0;
          end
        
        s3:if(seq_in)
          begin
            ns=s1;
            det_out=0;
          end
        else
          begin
            ns=s2;//overlapping
            //ns=idle; non overlapping
            det_out=1;
          end
        
        default:begin
          ns=idle;
          det_out=0;
        end
        
      endcase
    end
endmodule  
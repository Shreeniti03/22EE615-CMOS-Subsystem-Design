<h1># 22EE615-CMOS-Subsystem-Design</h1>

This repository contains the Verilog Code and Testbench of different types of adders.
Adders are digital circuits that perform arithmetic addition operations. They are a fundamental component of digital systems, used in various applications such as computers, calculators, and embedded systems.


<h2># Content [ADDERS]:</h2>

**1.<i>4-Bit Carry Propagate Adder</i>**
  Basic adder that propagates carry from one bit to the next.

   # Waveform:
   ![Screenshot_(277) 1](https://github.com/user-attachments/assets/76d51edc-46d8-43c6-b962-c4918cb228aa)
   
   # Schematic:
   ![Screenshot_(278) 2](https://github.com/user-attachments/assets/6201b1a6-f967-4507-b122-3541ed7c9c9f)

**2.<i>8-Bit Carry Look-Ahead Adder</i>** 
  A Carry Look-Ahead Adder (CLA) is a digital circuit that uses a separate carry generation network to predict and generate carries in advance, reducing propagation delay and increasing speed.
   # Waveform:
   ![Screenshot_(280) 1](https://github.com/user-attachments/assets/280fe4c8-0cd1-4851-9608-7967acdb1258)

   # Schematic:
   ![Screenshot_(281) 1](https://github.com/user-attachments/assets/60380ea3-a6e3-4abc-9a90-ea3295a39aa4)

**3.<i>8-Bit Carry Save Adder ( Multi Operand)</i>**  
  Adder that saves carry bits instead of propagating them.
   # Waveform:
   ![Screenshot_(282) 1](https://github.com/user-attachments/assets/4b519779-1957-486d-9208-8da2c1066017)

   # Schematic:
   ![Screenshot_(283) 1](https://github.com/user-attachments/assets/30ed8aa1-1cf9-4510-a6d7-a7c38ce24111)

**4.<i>8-Bit Carry Bypass ( Skip ) Adder</i>** 
  Adder that bypasses carry propagation for certain bits.
   # Waveform:
   ![Screenshot_(284) 1](https://github.com/user-attachments/assets/92416c29-6bce-43e3-99b6-7cf3344c119a)

   # Schematic:
   ![Screenshot_(285) 2](https://github.com/user-attachments/assets/08c47fa5-f34e-4e3e-9b01-6b366bfed628)

**5.<i>8-Bit Conditional Sum Adder</i>** 
  Adder that computes two possible sums and selects the correct one based on the carry.
   
   # Waveform:
   ![Screenshot_(286) 1](https://github.com/user-attachments/assets/f7e5010e-d7ff-4b5c-a029-8efe16f20931)

   # Schematic:
   ![Screenshot_(287) 1](https://github.com/user-attachments/assets/ec2ec26c-7b8d-4fe2-88a3-211d93eb0f3e)



   

import cocotb
from cocotb.triggers import Timer
import random

@cocotb.test()
async def koggetb(dut):
    """Test for 5 + 10"""

    A = 55500
    B = 5500
    Cin = 0
    # input driving
    dut.A.value = A
    dut.B.value = B
    dut.Cin.value = Cin

    await Timer(2, units='ns')
    dut._log.info(f'A={A:05} B={B:05} model={A+B:05} DUT={int(dut.S.value):05}')
    assert dut.S.value == A+B, f"Adder result is correct"
    
@cocotb.test()
async def adder_randomised_test(dut):
    """Test for adding 2 random numbers multiple times"""

    for i in range(500):

        A = random.randint(0, 60000)
        B = random.randint(0, 5536)
        Cin = 0
        dut.A.value = A
        dut.B.value = B
        dut.Cin.value = Cin
            # print("welcome to ctb vjkr")
        await Timer(2, units='ns')
        
        dut._log.info(f'A={A:05} B={B:05} model={A+B:05} DUT={int(dut.S.value):05}')
        assert dut.S.value == A+B, "Randomised test failed with: {A} + {B} = {S}".format(
            A=dut.A.value, B=dut.B.value, S=dut.S.value)


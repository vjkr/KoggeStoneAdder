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

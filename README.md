# Solidity Calculator (Educational)

A minimal Solidity smart contract that implements a basic calculator with add, subtract, multiply, divide, power, and square root operations, plus examples of modifiers and events.

## Features
- Addition, subtraction, multiplication, division, power, and square root with events.
- Multiplication over a state variable (`resultado`).
- Simple validation modifiers (`checkNumber`, `checkDivisionByZero`).
- Internal functions used for subtraction and square root logic.

## Contract Summary
**State**
- `uint256 public resultado = 10;`

**Modifier**
- `checkNumber(uint256 num1_)`: reverts if `num1_` is not `10`.
- `checkDivisionByZero(uint256 num1_)`: reverts if `num1_` is `0`.

**Events**
- `Addition(uint256 number1, uint256 number2, uint256 resultado)`
- `Substract(uint256 number1, uint256 number2, uint256 resultado)`
- `Multiply(uint256 number1, uint256 number2, uint256 resultado)`
- `Divide(uint256 number1, uint256 number2, uint256 resultado)`
- `Power(uint256 number1, uint256 number2, uint256 resultado)`
- `Sqrt(uint256 number1, uint256 resultado)`

**Public Functions**
- `addition(uint256 num1_, uint256 num2_) returns (uint256)`
  - Returns the sum and emits `Addition`.
- `substraction(uint256 num1_, uint256 num2_) returns (uint256)`
  - Returns the subtraction and emits `Substract`.
- `multiplier(uint256 num1_, uint256 num2_) returns (uint256)`
  - Returns the product and emits `Multiply`.
- `division(uint256 num1_, uint256 num2_) returns (uint256)`
  - Returns the quotient and emits `Divide`. Reverts if `num2_` is `0`.
- `power(uint256 num1_, uint256 num2_) returns (uint256)`
  - Returns `num1_ ** num2_` and emits `Power`.
- `sqrt(uint256 num1_) returns (uint256)`
  - Returns the integer square root of `num1_` and emits `Sqrt`.
- `multiplier2(uint256 num1_)`
  - Same as `multiplier`, but requires `num1_ == 10` via the modifier.

**Internal Function**
- `substraction_logic(uint256 num1_, uint256 num2_) internal pure returns (uint256)`
  - Reusable subtraction logic used by `substraction`.
- `sqrt_logic(uint256 num1_) internal pure returns (uint256)`
  - Integer square root implementation used by `sqrt`.

## Usage Example (Pseudo)
```solidity
Calculadora calc = new Calculadora();
uint256 r1 = calc.addition(3, 4);      // 7
uint256 r2 = calc.substraction(10, 2); // 8
uint256 r3 = calc.multiplier(3, 5);    // 15
uint256 r4 = calc.division(10, 2);     // 5
uint256 r5 = calc.power(2, 3);         // 8
uint256 r6 = calc.sqrt(16);            // 4
calc.multiplier2(10);                  // resultado = 100 (starts at 10)
```

## Solidity Version
- `pragma solidity 0.8.24;`

## Notes
- This contract is purely educational.
- `division` will revert if `num2_` is `0`.
- `multiplier2` will revert unless `num1_` equals `10`.

## License
See the SPDX header in `Calculadora.sol`.

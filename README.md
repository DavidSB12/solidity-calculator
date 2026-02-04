# Solidity Calculator (Educational)

A minimal Solidity smart contract that implements a basic calculator with add, subtract, and multiply operations, plus examples of a modifier and events.

## Features
- Addition and subtraction with events.
- Multiplication over a state variable (`resultado`).
- Simple validation modifier (`checkNumber`).
- Internal function used for subtraction logic.

## Contract Summary
**State**
- `uint256 public resultado = 10;`

**Modifier**
- `checkNumber(uint256 num1_)`: reverts if `num1_` is not `10`.

**Events**
- `Addition(uint256 number1, uint256 number2, uint256 resultado)`
- `Substraction(uint256 number1, uint256 number2, uint256 resultado)`

**Public Functions**
- `addition(uint256 num1_, uint256 num2_) returns (uint256)`
  - Returns the sum and emits `Addition`.
- `substraction(uint256 num1_, uint256 num2_) returns (uint256)`
  - Returns the subtraction and emits `Substraction`.
- `multiplier(uint256 num1_)`
  - Multiplies `resultado` by `num1_`.
- `multiplier2(uint256 num1_)`
  - Same as `multiplier`, but requires `num1_ == 10` via the modifier.

**Internal Function**
- `substraction_logic(uint256 num1_, uint256 num2_) internal pure returns (uint256)`
  - Reusable subtraction logic used by `substraction`.

## Usage Example (Pseudo)
```solidity
Calculadora calc = new Calculadora();
uint256 r1 = calc.addition(3, 4);      // 7
uint256 r2 = calc.substraction(10, 2); // 8
calc.multiplier(2);                    // resultado = 20 (starts at 10)
calc.multiplier2(10);                  // resultado = 200
```

## Solidity Version
- `pragma solidity 0.8.24;`

## Notes
- This contract is purely educational.
- `multiplier2` will revert unless `num1_` equals `10`.

## License
See the SPDX header in `Calculadora.sol`.

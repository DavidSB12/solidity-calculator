# Calculadora.sol

Contrato inteligente educativo en Solidity que implementa una calculadora basica con operaciones de suma, resta y multiplicacion, ademas de un ejemplo de `modifier` y `event`.

## Caracteristicas
- Suma y resta con eventos.
- Multiplicacion sobre una variable de estado (`resultado`).
- `modifier` de validacion simple (`checkNumber`).
- Funcion interna para la logica de resta.

## Version de Solidity
- `pragma solidity 0.8.24;`

## Contrato
### Estado
- `uint256 public resultado = 10;`

### Modifiers
- `checkNumber(uint256 num1_)`: revierte si `num1_` es distinto de 10.

### Events
- `Addition(uint256 number1, uint256 number2, uint256 resultado)`
- `Substraction(uint256 number1, uint256 number2, uint256 resultado)`

### Funciones publicas
- `addition(uint256 num1_, uint256 num2_) returns (uint256)`
  - Devuelve la suma y emite `Addition`.
- `substraction(uint256 num1_, uint256 num2_) returns (uint256)`
  - Devuelve la resta y emite `Substraction`.
- `multiplier(uint256 num1_)`
  - Multiplica `resultado` por `num1_`.
- `multiplier2(uint256 num1_)`
  - Igual que `multiplier`, pero exige `num1_ == 10` mediante el `modifier`.

### Funcion interna
- `substraction_logic(uint256 num1_, uint256 num2_) internal pure returns (uint256)`
  - Logica de resta reutilizada por `substraction`.

## Ejemplo de uso (pseudo)
```solidity
Calculadora calc = new Calculadora();
uint256 r1 = calc.addition(3, 4);      // 7
uint256 r2 = calc.substraction(10, 2); // 8
calc.multiplier(2);                    // resultado = 20 (inicia en 10)
calc.multiplier2(10);                  // resultado = 200
```

## Notas
- Este contrato es meramente educativo.
- La funcion `multiplier2` fallara si `num1_` es distinto de 10.

## Licencia
Revisar el encabezado SPDX en `Calculadora.sol`.

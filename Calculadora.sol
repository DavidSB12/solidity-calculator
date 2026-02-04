// SPDX-License-Identifier: LGPL-3.0-only

// Versión solidity
pragma solidity 0.8.24;

// Contrato
contract Calculadora {

    //Variables 
    uint256 public resultado = 10;

    //Modifiers
    modifier checkNumber(uint256 num1_) {
        if(num1_ != 10) revert();
        _;
    }

    modifier checkDivisionByZero(uint256 num1_) {
        if(num1_ == 0) revert();
        _;
    }

    //Events
    event Addition(uint256 number1, uint256 number2, uint256 resultado);
    event Substract(uint256 number1, uint256 number2, uint256 resultado);
    event Multiply(uint256 number1, uint256 number2, uint256 resultado);
    event Divide(uint256 number1, uint256 number2, uint256 resultado);
    event Power(uint256 number1, uint256 number2, uint256 resultado);
    event Sqrt(uint256 number1, uint256 resultado);

    //External Functions
    function addition(uint256 num1_, uint256 num2_) public returns (uint256 resultado_) {
        resultado_ = num1_ + num2_;
        emit Addition(num1_, num2_, resultado_);
    }

    function substraction(uint256 num1_, uint256 num2_) public returns (uint256 resultado_) {
        resultado_ = substraction_logic(num1_, num2_);
        emit Substract(num1_, num2_, resultado_);
    }

    function multiplier(uint256 num1_, uint256 num2_) public returns (uint256 resultado_) {
        resultado_ = num1_ * num2_;
        emit Multiply(num1_, num2_, resultado_);
    }

    function division(uint256 num1_, uint256 num2_) public checkDivisionByZero(num2_) returns (uint256 resultado_) {
        resultado_ = num1_ / num2_;
        emit Divide(num1_, num2_, resultado_);
    }

    function multiplier2(uint256 num1_) public checkNumber(num1_) {
        resultado = resultado * num1_;
    }

    function power(uint256 num1_, uint256 num2_) public returns (uint256 resultado_) {
        resultado_ = num1_ ** num2_;
        emit Power(num1_, num2_, resultado_);
    }
    
    function sqrt(uint256 num1_) public returns (uint256 resultado_) {
        resultado_ = sqrt_logic(num1_);
        emit Sqrt(num1_, resultado_);
    }

    //Internal Functions
    function substraction_logic(uint256 num1_, uint256 num2_) internal pure returns (uint256 resultado_) {
        resultado_ = num1_ - num2_;
    }

    function sqrt_logic(uint256 num1_) internal pure returns (uint256 resultado_) {
        uint256 z = (num1_ + 1) / 2;
        resultado_ = num1_;
        while (z < resultado_) {
            resultado_ = z;
            z = (num1_ / z + z) / 2;
        }
    }
}


//
//  CalculateBrain.swift
//  swiftPractice
//
//  Created by JihoonPark on 19/01/2019.
//  Copyright © 2019 JihoonPark. All rights reserved.
//

import Foundation

class CalculateBrain {
    var operand : Double = 0.0
    var waitingOperand : Double = 0.0
    var waitingOperation : String = ""
    
    func performOperation(operation : String) -> Double {
        if operation.isEqual("sqrt") {
            operand = sqrt(operand)
        }
        else{
            performWaitingOperation()
            waitingOperation = operation
            waitingOperand = operand
        }
        return operand
    }
    
    func performWaitingOperation() {
        if waitingOperation.isEqual("+") {
            operand = waitingOperand + operand;
        }
        else if waitingOperation.isEqual("-"){
            operand = waitingOperand - operand;
        }
        else if self.waitingOperation.isEqual("*"){
            operand = waitingOperand * operand;
        }
        else{
            if !operand.isEqual(to: 0){
                operand = waitingOperand / operand;
            }
        }
    }
}

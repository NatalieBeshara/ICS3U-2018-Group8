// Created on: Dec-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program find the roots of a parabola
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let instructions2Label = UILabel()
    let xSquaredLabel = UILabel()
    let xLabel = UILabel()
    let firstNumberTextField = UITextField()
    let secondNumberTextField = UITextField()
    let thirdNumberTextField = UITextField()
    let calculateButton = UIButton ()
    let answerLabel = UILabel()
    
    func isItAnInt (a : String) -> Bool{
        // got this code from this website: https://rosettacode.org/wiki/Determine_if_a_string_is_numeric#Swift
        
        return Double(a) != nil
    }
    
    func convertToDouble (toDouble : String) -> Double{
        return Double(toDouble)!
    }
    
    func findingRoots(coefficantA : Float, coefficantB : Float, coefficantC : Float) -> [Double] {
        //  
        //c=(a+b)/2
        
        let a = coefficantA
        var b = coefficantB
        let c = coefficantC
        var squareRooting : Double = 0
        var x : Double = 0
        var operationNegative = false
        var operation : Double = 0
        var answerArray: [Double] = []
        
        while operationNegative == false {
            operation = (-1.00)
            
            squareRooting = Double((pow(b,2)-4*a*c).squareRoot())
            
            x = Double((0 - b)) + (operation)*(squareRooting)
            x = x / 2.0
            
            answerArray.append(x)
            
            operationNegative = true
        }
        
        if operationNegative == true {
            operation = (1.00)
            
            squareRooting = Double((pow(b,2)-4*a*c).squareRoot())
            
            x = Double((0 - b)) + (operation)*(squareRooting)
            x = x / 2.0
            
            answerArray.append(x)
        }
        
        
        return answerArray
    }
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Enter the all numerical coefficants in your quadratic equation, and we will tell you its roots."
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        instructions2Label.text = "Make sure you fill in all the squares with every coeeficant in your equation or else it won't work."
        instructions2Label.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructions2Label)
        instructions2Label.translatesAutoresizingMaskIntoConstraints = false
        instructions2Label.topAnchor.constraint(equalTo: instructionsLabel.topAnchor, constant: 30).isActive = true
        instructions2Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        firstNumberTextField.borderStyle = UITextField.BorderStyle.roundedRect
        firstNumberTextField.placeholder = "   "
        view.addSubview(firstNumberTextField)
        firstNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        firstNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        firstNumberTextField.bottomAnchor.constraint(equalTo: instructions2Label.topAnchor, constant: 80).isActive = true
        
        xSquaredLabel.text = "x^2 + "
        xSquaredLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(xSquaredLabel)
        xSquaredLabel.translatesAutoresizingMaskIntoConstraints = false
        xSquaredLabel.topAnchor.constraint(equalTo: instructions2Label.topAnchor, constant: 60).isActive = true
        xSquaredLabel.leadingAnchor.constraint(equalTo: firstNumberTextField.leadingAnchor, constant: 50).isActive = true
        
        secondNumberTextField.borderStyle = UITextField.BorderStyle.roundedRect
        secondNumberTextField.placeholder = "   "
        view.addSubview(secondNumberTextField)
        secondNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        secondNumberTextField.leadingAnchor.constraint(equalTo: xSquaredLabel.leadingAnchor, constant: 50).isActive = true
        secondNumberTextField.bottomAnchor.constraint(equalTo: instructions2Label.topAnchor, constant: 80).isActive = true
        
        xLabel.text = "x +"
        xLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(xLabel)
        xLabel.translatesAutoresizingMaskIntoConstraints = false
        xLabel.topAnchor.constraint(equalTo: instructions2Label.topAnchor, constant: 60).isActive = true
        xLabel.leadingAnchor.constraint(equalTo: secondNumberTextField.leadingAnchor, constant: 50).isActive = true
        
        thirdNumberTextField.borderStyle = UITextField.BorderStyle.roundedRect
        thirdNumberTextField.placeholder = "   "
        view.addSubview(thirdNumberTextField)
        thirdNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        thirdNumberTextField.leadingAnchor.constraint(equalTo: xLabel.leadingAnchor, constant: 50).isActive = true
        thirdNumberTextField.bottomAnchor.constraint(equalTo: instructions2Label.topAnchor, constant: 80).isActive = true
        
        calculateButton.setTitle("Calculate", for: UIControl.State.normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(calculatingAnswer), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        calculateButton.topAnchor.constraint(equalTo: thirdNumberTextField.bottomAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        answerLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        answerLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        
    }
    @objc func calculatingAnswer() {
        //  
        
        var firstCoefficent : String = (firstNumberTextField.text!)
        var secondCoefficent : String = (secondNumberTextField.text!)
        var thirdCoefficent : String = (thirdNumberTextField.text!)
        //
        
        // 
        var coefficent1 = isItAnInt(a: String(firstCoefficent))
        
        var coefficent2 = isItAnInt(a: String(secondCoefficent))
        
        var coefficent3 = isItAnInt(a : String(thirdCoefficent))
        
        
        if coefficent1 == false  || coefficent2 == false || coefficent3 == false {
            answerLabel.text = "You need to enter a valid number."
        }
        else {
            
            var firstCoefficent = convertToDouble(toDouble: String(firstCoefficent))
            var secondCoefficent = convertToDouble(toDouble: String(secondCoefficent))
            var thirdCoefficent = convertToDouble(toDouble: String(thirdCoefficent))
            
            if (pow(secondCoefficent,2) - 4 * firstCoefficent * thirdCoefficent) < 0{
                
                answerLabel.text = "There are no x-intercepts"
            }
            else {
                var answer = findingRoots(coefficantA: Float(firstCoefficent), coefficantB: Float(secondCoefficent), coefficantC: Float(thirdCoefficent))
                
                
                answerLabel.text = "The roots are \(answer)"
                
            }
        }
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

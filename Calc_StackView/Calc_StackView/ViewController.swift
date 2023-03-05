//
//  ViewController.swift
//  Calc_StackView
//
//  Created by 이치훈 on 2023/03/03.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    
    var resultLabel: UILabel!
    var buttonTable: UIView!
    var stackFirst: UIStackView!
    var stackSecond: UIStackView!
    var stackThird: UIStackView!
    var stackFourth: UIStackView!
    
    var btn1: UIButton!
    var btn2: UIButton!
    var btn3: UIButton!
    var btn4: UIButton!
    var btn5: UIButton!
    var btn6: UIButton!
    var btn7: UIButton!
    var btn8: UIButton!
    var btn9: UIButton!
    var btnPlus: UIButton!
    var btnEqual: UIButton!

    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
       // self.setButtonLayout()
    }


}

extension ViewController {
    
    fileprivate func initUI(){
        resultLabel = UILabel()
        self.view.addSubview(resultLabel)
        resultLabel.backgroundColor = .systemGray
        resultLabel.text = "Result Value"
        resultLabel.layer.cornerRadius = 30
        resultLabel.layer.masksToBounds = true
        
        
        buttonTable = UIView()
        self.view.addSubview(buttonTable)
        
        
        stackFirst = UIStackView()
        stackSecond = UIStackView()
        stackThird = UIStackView()
        stackFourth = UIStackView()
        
        buttonTable.addSubview(stackFirst)
        buttonTable.addSubview(stackSecond)
        buttonTable.addSubview(stackThird)
        buttonTable.addSubview(stackFourth)
        
        stackFirst.axis = .horizontal
        stackSecond.axis = .horizontal
        stackThird.axis = .horizontal
        stackFourth.axis = .horizontal
        
        stackFirst.distribution = .fillEqually
        stackSecond.distribution = .fillEqually
        stackThird.distribution = .fillEqually
        stackFourth.distribution = .fillEqually
        
        stackFirst.spacing = 10
        stackSecond.spacing = 10
        stackThird.spacing = 10
        stackFourth.spacing = 10
        
        btn1 = self.makeNormalButton("1")
        btn2 = self.makeNormalButton("2")
        btn3 = self.makeNormalButton("3")
        stackFirst.addArrangedSubview(btn1)
        stackFirst.addArrangedSubview(btn2)
        stackFirst.addArrangedSubview(btn3)
    
        btn4 = self.makeNormalButton("4")
        btn5 = self.makeNormalButton("5")
        btn6 = self.makeNormalButton("6")
        stackSecond.addArrangedSubview(btn4)
        stackSecond.addArrangedSubview(btn5)
        stackSecond.addArrangedSubview(btn6)

        btn7 = self.makeNormalButton("7")
        btn8 = self.makeNormalButton("8")
        btn9 = self.makeNormalButton("9")
        stackThird.addArrangedSubview(btn7)
        stackThird.addArrangedSubview(btn8)
        stackThird.addArrangedSubview(btn9)

        btnEqual = UIButton()
        btnEqual.translatesAutoresizingMaskIntoConstraints = false
        btnEqual.heightAnchor.constraint(equalToConstant: 30).isActive = true
        btnEqual.widthAnchor.constraint(equalToConstant: 70).isActive = true
        btnEqual.setTitle("=", for: .normal)
        btnEqual.backgroundColor = .black
        btnEqual.layer.cornerRadius = 47
        
        btnPlus = UIButton()
        btnPlus.translatesAutoresizingMaskIntoConstraints = false
        btnPlus.heightAnchor.constraint(equalToConstant: 30).isActive = true
        btnPlus.widthAnchor.constraint(equalToConstant: 30).isActive = true
        btnPlus.setTitle("+", for: .normal)
        btnPlus.backgroundColor = .black
        btnPlus.layer.cornerRadius = 47
        
        stackFourth.addArrangedSubview(btnEqual)
        stackFourth.addArrangedSubview(btnPlus)
        
        self.initConstraint()
    }
    
    fileprivate func makeNormalButton(_ buttonString: String) -> UIButton {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        btn.widthAnchor.constraint(equalToConstant: 30).isActive = true
        btn.setTitle(buttonString, for: .normal)
        btn.backgroundColor = .black
        
        btn.layer.cornerRadius = 48
        //btn.layer.masksToBounds = true
        
        return btn
    }
//
//    fileprivate func setButtonLayout() {
//        btn1.layer.cornerRadius = 30
//        print(btn1.)
//        btn2.layer.cornerRadius = btn2.bounds.height / 2
//        btn3.layer.cornerRadius = btn3.bounds.height / 2
//        btn4.layer.cornerRadius = btn4.bounds.height / 2
//        btn5.layer.cornerRadius = btn5.bounds.height / 2
//        btn6.layer.cornerRadius = btn6.bounds.height / 2
//        btn7.layer.cornerRadius = btn7.bounds.height / 2
//        btn8.layer.cornerRadius = btn8.bounds.height / 2
//        btn9.layer.cornerRadius = btn9.bounds.height / 2
//        btnEqual.layer.cornerRadius = btnEqual.bounds.height / 2
//        btnPlus.layer.cornerRadius = btnPlus.bounds.height / 2
//
//    }
    
    //MARK: - Constraint
    
    fileprivate func initConstraint() {
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        resultLabel.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 40).isActive = true
        resultLabel.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -40).isActive = true
        resultLabel.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        buttonTable.translatesAutoresizingMaskIntoConstraints = false
        buttonTable.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 40).isActive = true
        buttonTable.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
        buttonTable.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 40).isActive = true
        buttonTable.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -40).isActive = true
        
        
        //Stack Setting
        stackFirst.translatesAutoresizingMaskIntoConstraints = false
        stackFirst.topAnchor.constraint(equalTo: buttonTable.topAnchor, constant: 10).isActive = true
        stackFirst.bottomAnchor.constraint(equalTo: stackSecond.topAnchor, constant: -10).isActive = true
        stackFirst.leftAnchor.constraint(equalTo: buttonTable.leftAnchor, constant: 0).isActive = true
        stackFirst.rightAnchor.constraint(equalTo: buttonTable.rightAnchor, constant: 0).isActive = true
        stackFirst.heightAnchor.constraint(equalTo: stackSecond.heightAnchor).isActive = true
        
        stackSecond.translatesAutoresizingMaskIntoConstraints = false
        stackSecond.topAnchor.constraint(equalTo: stackFirst.bottomAnchor, constant: 10).isActive = true
        stackSecond.bottomAnchor.constraint(equalTo: stackThird.topAnchor, constant: -10).isActive = true
        stackSecond.leftAnchor.constraint(equalTo: buttonTable.leftAnchor, constant: 0).isActive = true
        stackSecond.rightAnchor.constraint(equalTo: buttonTable.rightAnchor, constant: 0).isActive = true
        stackSecond.heightAnchor.constraint(equalTo: stackThird.heightAnchor).isActive = true
        
        stackThird.translatesAutoresizingMaskIntoConstraints = false
        stackThird.topAnchor.constraint(equalTo: stackSecond.bottomAnchor, constant: 10).isActive = true
        stackThird.bottomAnchor.constraint(equalTo: stackFourth.topAnchor, constant: -10).isActive = true
        stackThird.leftAnchor.constraint(equalTo: buttonTable.leftAnchor, constant: 0).isActive = true
        stackThird.rightAnchor.constraint(equalTo: buttonTable.rightAnchor, constant: 0).isActive = true
        stackThird.heightAnchor.constraint(equalTo: stackFourth.heightAnchor).isActive = true
        
        stackFourth.translatesAutoresizingMaskIntoConstraints = false
        stackFourth.topAnchor.constraint(equalTo: stackThird.bottomAnchor, constant: 10).isActive = true
        stackFourth.bottomAnchor.constraint(equalTo: buttonTable.bottomAnchor, constant: -10).isActive = true
        stackFourth.leftAnchor.constraint(equalTo: buttonTable.leftAnchor, constant: 0).isActive = true
        stackFourth.rightAnchor.constraint(equalTo: buttonTable.rightAnchor, constant: 0).isActive = true
        stackFourth.heightAnchor.constraint(equalTo: stackFirst.heightAnchor).isActive = true
        
    }
    
}

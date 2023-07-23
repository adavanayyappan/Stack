//
//  ViewController.swift
//  Stack
//
//  Created by Adavan Ayyappan on 22/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let stackView   = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.horizontal
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 16.0
        
        let stackView2   = UIStackView()
        stackView2.axis  = NSLayoutConstraint.Axis.horizontal
        stackView2.distribution  = UIStackView.Distribution.equalSpacing
        stackView2.alignment = UIStackView.Alignment.center
        stackView2.spacing   = 16.0
        
        let stackView3   = UIStackView()
        stackView3.axis  = NSLayoutConstraint.Axis.vertical
        stackView3.distribution  = UIStackView.Distribution.equalSpacing
        stackView3.alignment = UIStackView.Alignment.center
        stackView3.spacing   = 16.0
        
        
        let nValues: String = "A , B, C, D"

         let someArray = nValues.components(separatedBy: ",")
        for (index, nValue) in someArray.enumerated() {
            let label: UILabel = UILabel()
            label.text = nValue
            label.textColor = .black
            if index <= 1 {
                stackView.addArrangedSubview(label)
            } else {
                stackView2.addArrangedSubview(label)
            }
       }
        stackView3.addArrangedSubview(stackView)
        stackView3.addArrangedSubview(stackView2)
        stackView3.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(stackView3)

        //Constraints
        stackView3.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView3.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        
    }


}


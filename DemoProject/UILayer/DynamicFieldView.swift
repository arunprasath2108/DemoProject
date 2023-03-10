//
//  DynamicFieldView.swift
//  DemoProject
//
//  Created by arun-pt6232 on 10/03/23.
//

import UIKit

class DynamicFieldView: UIView {
    
    lazy var labelView: UILabel = {
        let labelView = UILabel()
        labelView.font = .systemFont(ofSize: 18, weight: .semibold)
        labelView.translatesAutoresizingMaskIntoConstraints = false
        
        return labelView
    }()
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false

        return textField
    }()
    
    lazy var errorLabel: UILabel = {
        let label = UILabel()
//        label.backgroundColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
        configureTextField()
        configureErrorLabel()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureLabel() {
        self.addSubview(labelView)
        
        NSLayoutConstraint.activate([
            labelView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            labelView.topAnchor.constraint(equalTo: self.topAnchor),
            labelView.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func configureTextField() {
        self.addSubview(textField)
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: labelView.bottomAnchor, constant: 10),
            textField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -25),
            textField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])
    }
    
    func configureErrorLabel() {
        self.addSubview(errorLabel)
    
        NSLayoutConstraint.activate([
            errorLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            errorLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            errorLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    
}

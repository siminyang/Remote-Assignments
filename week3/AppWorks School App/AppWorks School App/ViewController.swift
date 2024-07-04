//
//  ViewController.swift
//  AppWorks School App
//
//  Created by Nicky Y on 2024/7/1.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var accountTextView: UITextView!
    @IBOutlet weak var passwordTextView: UITextView!
    @IBOutlet weak var checkLabel: UITextField!
    @IBOutlet weak var checkTextView: UITextView!
    @IBOutlet weak var checkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountTextView.layer.cornerRadius = 10
        passwordTextView.layer.cornerRadius = 10
        checkTextView.layer.cornerRadius = 10
        updateUI(for: segmentedControl.selectedSegmentIndex) // 初始化狀態為 login畫面 ( 預設segmentedControl.selectedSegmentIndex = 0 ）
    }

    // 切換登入 or 註冊狀態
    @IBAction func segmentedControlChange(_ sender: UISegmentedControl) {
        updateUI(for: sender.selectedSegmentIndex)
    }
    
    // 不同狀態下的按鈕功能
    @IBAction func checkButton(_ sender: UIButton) {
        if segmentedControl.selectedSegmentIndex == 0 { // 確認login
            login()
        } else {    // 確認signup
            signUp()
        }
    }
    
    // 依據不同頁面狀態更新 View
    func updateUI(for index: Int) {
        if index == 0 { // Login
            checkLabel.textColor = .gray
            checkTextView.isEditable = false
            checkTextView.backgroundColor = .darkGray
            checkTextView.text = ""
        } else { // Sign up
            checkLabel.textColor = .black
            checkTextView.isEditable = true
            checkTextView.backgroundColor = .white
        }
    }

    // 登入確認
    func login() {
        let account = accountTextView.text
        let password = passwordTextView.text
        if account == "appworks_school" && password == "1234" {    // show success alert
            showAlert(title: "Accept", message: "Login success")
        } else {    // show login fail alert
            showAlert(title: "Error", message: "Login Fail")
        }
    }

    // 註冊確認
    func signUp() {
        let accountInput = accountTextView.text
        let passwordInput = passwordTextView.text
        let checkInput = checkTextView.text
        
            // UITextView 的 text 屬性返回的是一個可選的 String?
            // -> 所以需要解包三種情況：nil, "", "accountInput"
        if accountInput?.isEmpty ?? true {  // 如果 accountInput 是 nil, 給右邊的default值(true) ；否則返回 isEmpty 的 Bool值（true or false)
            showAlert(title: "Error", message: "Account should not be empty.")
        } else if passwordInput?.isEmpty ?? true {
            showAlert(title: "Error", message: "Password should not be empty.")
        } else if checkInput?.isEmpty ?? true {
            showAlert(title: "Error", message: "Check Password should not be empty.")
        } else if passwordInput != checkInput {
            showAlert(title: "Error", message: "Signup fail")
        } else {
            showAlert(title: "Accept", message: "Signup success")
        }
    }

    // 提示小視窗
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}

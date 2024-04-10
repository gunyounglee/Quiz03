//
//  ViewController.swift
//  Quiz03
//
//  Created by TJ on 2022/04/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    
    @IBOutlet weak var lbMessage: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //첫 화면 문자 지우기
        lbMessage.text?.removeAll()
      
    }
    @IBAction func btncal(_ sender: UIButton) {
      
            
            var message : String
            let num2 = Int(tfNum1.text!) ?? 0
            
            if num2 % 2 == 0 {
                message = "짝수"
            }else {
                message = "홀수"
            }
            lbMessage.text = "입력하신 숫자는 \(message) 입니다."
        }
        
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


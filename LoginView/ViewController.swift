//
//  ViewController.swift
//  LoginView
//
//  Created by gdcp on 2018/3/26.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var loginText:UITextField?
    var passwdText:UITextField?
    let screensize = UIScreen.main.bounds.size
    override func viewDidLoad() {
        super.viewDidLoad()
        loginText = UITextField(frame: CGRect(x: 20, y: 80, width: screensize.width-40, height: 30))
        loginText?.borderStyle = .roundedRect
        loginText?.placeholder = "请输入用户名"
        let loginImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        loginImage.image = UIImage(named: "login_user")
        loginText?.leftView = loginImage
        loginText?.leftViewMode = .always
        
        passwdText = UITextField(frame: CGRect(x: 20, y: 130, width: screensize.width-40, height: 30))
        passwdText?.borderStyle = .roundedRect
        passwdText?.placeholder = "请输入密码"
        let passwdImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        passwdImage.image = UIImage(named: "login_pwdico")
        passwdText?.leftView = passwdImage
        passwdText?.leftViewMode = .always
        self.view.addSubview(loginText!)
        self.view.addSubview(passwdText!)
        //添加登录注册按钮
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: screensize.width/4-50, y: 180, width: 100, height: 30)
        btn.setTitle("登录", for: .normal)
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 10
        btn.backgroundColor = UIColor.cyan
        btn.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        let btn2 = UIButton(type: .system)
        btn2.frame = CGRect(x: screensize.width/4*3-50, y: 180, width: 100, height: 30)
        btn2.setTitle("注册", for: .normal)
        btn2.layer.masksToBounds = true
        btn2.layer.cornerRadius = 10
        btn2.backgroundColor = UIColor.cyan
        btn2.addTarget(self, action: #selector(regis), for: .touchUpInside)
        self.view.addSubview(btn)
        self.view.addSubview(btn2)
        
    
    }

    func regis(){
        let rsgisController = RsgisController()
        self.present(rsgisController, animated: true, completion: nil)
    }
    
    func login(){
        if loginText!.text!.isEmpty{
            let alertCon = UIAlertController(title: "温馨提示", message: "请输入用户名", preferredStyle: .alert)
            let action = UIAlertAction(title: "好的", style: .default, handler: nil)
            alertCon.addAction(action)
            self.present(alertCon, animated: true, completion: nil)
            return
        }
        
        if passwdText!.text!.isEmpty{
            let alertCon = UIAlertController(title: "温馨提示", message: "请输入密码", preferredStyle: .alert)
            let action = UIAlertAction(title: "好的", style: .default, handler: nil)
            alertCon.addAction(action)
            self.present(alertCon, animated: true, completion: nil)
            return
        }
        let alertCon = UIAlertController(title: "温馨提示", message: "登录成功", preferredStyle: .alert)
        let action = UIAlertAction(title: "好的", style: .default, handler: nil)
        alertCon.addAction(action)
        self.present(alertCon, animated: true, completion: nil)
        return
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


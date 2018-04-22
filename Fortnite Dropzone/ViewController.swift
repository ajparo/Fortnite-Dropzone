//
//  ViewController.swift
//  Fortnite Dropzone
//
//  Created by Maloney, Grant P. (MU-Student) on 4/22/18.
//  Copyright © 2018 Maloney, Grant P. (MU-Student). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainscreenLabel: UILabel!
    @IBOutlet weak var mainscreenLabelLower: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Background")
        backgroundImage.contentMode =  UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        mainscreenLabel.text = "Fortnite"
        mainscreenLabelLower.text = "Dropzone"
        
        var clockTimer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(update), userInfo: nil, repeats: false)
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc
    func update() {
        self.performSegue(withIdentifier: "moveToMain", sender: nil)
    }


}


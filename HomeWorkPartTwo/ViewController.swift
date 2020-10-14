//
//  ViewController.swift
//  HomeWorkPartTwo
//
//  Created by Евгений Шевченко on 13.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 75
        redView.alpha = 0.5
        yellowView.layer.cornerRadius = 75
        yellowView.alpha = 0.5
        greenView.layer.cornerRadius = 75
        greenView.alpha = 0.5
        
        startButton.layer.cornerRadius = 20
    }
    
    @IBAction func actionStartButton() {
        
        startButton.setTitle("Next", for: .normal)
        
        switch redView.alpha {
        case 0.5 where yellowView.alpha == 0.5 && greenView.alpha == 0.5:
            redView.alpha = 1
        case 1 where yellowView.alpha == 0.5:
            yellowView.alpha = 1
            redView.alpha = 0.5
        case 0.5 where yellowView.alpha == 1:
            yellowView.alpha = 0.5
            greenView.alpha = 1
        case 0.5 where greenView.alpha == 1:
            greenView.alpha = 0.5
            redView.alpha = 1
        default:
            break
        }
    }
}

//
//  ViewController.swift
//  SiSiGame
//
//  Created by Слава Орлов on 09.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoresLabel: UILabel!
    @IBOutlet weak var mouse: UIButton!
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameResult = .play
    }
    
    @IBAction func mouseTapped(_ sender: UIButton) {
        
        timer?.invalidate()
        
        timer = .scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
            let randomWidth = CGFloat(arc4random_uniform(UInt32(self.view.bounds.width)))
            let randomHeigh = CGFloat(arc4random_uniform(UInt32(self.view.bounds.height)))
            
                UIView.animate(withDuration: 0.2, delay: 0) {
                        self.mouse.center = CGPoint(x: randomWidth, y: randomHeigh)
        }
        })

        scores += 1
        setGameResult(in: self, for: scoresLabel)

    }
    
}

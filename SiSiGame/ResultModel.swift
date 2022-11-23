//
//  Model.swift
//  SiSiGame
//
//  Created by Слава Орлов on 09.11.2022.
//

import Foundation
import UIKit

enum GameResult{
    case win,play
}

var gameResult: GameResult = .play
var scores: Int = 0

func setGameResult(in view: UIViewController, for label: UILabel){
    
    label.text = String(scores)
    
    if scores >= 100{
        gameResult = .win
    }
    else {
        gameResult = .play
    }
    
    switch gameResult {
    case .win:
        view.view.backgroundColor = .systemGreen
        label.text = "СиСишка Выиграла!!!"
        
    case .play:
        view.view.backgroundColor = .white
    }
}

func gameResultReset(){
    scores = 0
}

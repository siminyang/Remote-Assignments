//
//  ViewController.swift
//  Part5ASimpleApp
//
//  Created by Nicky Y on 2024/6/24.
//

import UIKit

class ViewController: UIViewController {
    
    // 將Label標籤名設為textChange
    @IBOutlet weak var textChange: UILabel!
    
    // text prompt 7個選項
    let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]

    // 背景七個顏色
    let backgroundcolors: [UIColor] = [
        .red, .orange, .yellow, .green, .blue, .black, .purple
        ]
    
    // 初始化的畫面設定：紅色、Lorem
    override func viewDidLoad() {
        super.viewDidLoad()
        textChange.text = text[0]
        view.backgroundColor = backgroundcolors[0]
    }

    // 定義 Button (Show Another Fun Fact) 的功能：隨機選擇text & 背景顏色
    @IBAction func changeBackgroundAndText(_ sender: UIButton) {
        let randomTextIndex = Int.random(in: 0 ..< text.count)
        let randomColorIndex = Int.random(in: 0 ..< backgroundcolors.count)
        textChange.text = text[randomTextIndex]
        view.backgroundColor = backgroundcolors[randomColorIndex]
    }

}


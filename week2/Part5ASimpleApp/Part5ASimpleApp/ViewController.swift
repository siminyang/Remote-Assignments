//
//  ViewController.swift
//  Part5ASimpleApp
//
//  Created by Nicky Y on 2024/6/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textChange: UILabel!
    
    let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]

    let backgroundcolors: [UIColor] = [
        .red, .orange, .yellow, .green, .blue, .black, .purple
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textChange.text = text[0]
        view.backgroundColor = backgroundcolors[0]
    }

    @IBAction func changeBackgroundAndText(_ sender: UIButton) {
        UIButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        let randomTextIndex = Int.random(in: 0 ..< text.count)
        let randomColorIndex = Int.random(in: 0 ..< backgroundcolors.count)
        textChange.text = text[randomTextIndex]
        view.backgroundColor = backgroundcolors[randomColorIndex]
    }

}


//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Kelley Henican on 2/10/20.
//  Copyright © 2020 Kelley Henican. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var vocabWord: VocabularyWord?
    @IBOutlet var word: UILabel!

    @IBOutlet var definition: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let vcWord = vocabWord else { return }
        word.text = vcWord.word
        definition.text = vcWord.definition
    }
    

}


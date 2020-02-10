//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Kelley Henican on 2/10/20.
//  Copyright © 2020 Kelley Henican. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "named storage that our programs can manipulate"),
        VocabularyWord(word: "Constant", definition: "fixed values that a program may not alter during its execution"),
        VocabularyWord(word: "Function", definition: "self-contained chunks of code that perform a specific task")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        cell.textLabel?.text = vocabWords[indexPath.row].word
        
        

        return cell
    }
    

   
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//    }
    

}

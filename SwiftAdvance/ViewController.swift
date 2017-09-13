//
//  ViewController.swift
//  SwiftAdvance
//
//  Created by Toseefhusen Khilji on 8/21/17.
//  Copyright © 2017 Toseefhusen Khilji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fc2: FibonacciSpinner!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fspinner: FibonacciSpinner = FibonacciSpinner()
        self.view.addSubview(fspinner)
        fspinner.startAnimating()
        
        fc2.startAnimating()
    }

    
    
    func primes(n: Int) -> [Int] {
        var numbers = [Int](2..<n)
        for i in 0..<n-2 {
            let prime = numbers[i]
            guard prime > 0 else { continue }
            for multiple in stride(from: 2 * prime-2, to: n-2, by: prime) {
                numbers[multiple] = 0
            }
        }
        return numbers.filter { $0 > 0 }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


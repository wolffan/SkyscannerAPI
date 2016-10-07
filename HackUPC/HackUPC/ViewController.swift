//
//  ViewController.swift
//  HackUPC
//
//  Created by Raimon Lapuente on 07/10/2016.
//  Copyright © 2016 Raimon Lapuente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let skyscannerAPIKey = "prtl6749387986743898559646983194"
        
        let url = URL(string: "http://partners.api.skyscanner.net/apiservices/browsequotes/v1.0/GB/GBP/en-GB/LHR/CDG/2017-02-11/2017-02-15?apiKey=\(skyscannerAPIKey)")
        
        let request = NSMutableURLRequest(url: url! as URL)
        
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) -> Void in
            do {
                if let httpResponse = response as? HTTPURLResponse {
                    if httpResponse.statusCode != 200 {
                        print("Something went wrong... don't worry ask Skyscanner Team")
                    } else {
                        
                        //*** INTERESTING BIT ***//
                        
                        let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions()) as? [String:Any]
                        print(json?["Quotes"])
                        
                        //*** INTERESTING BIT ***//
                    }
                }
            } catch {
                print("Something went wrong... don't worry ask Skyscanner Team")
            }
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


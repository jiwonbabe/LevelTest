//
//  ViewController.swift
//  LevelTest
//
//  Created by 배지원 on 2017. 10. 11..
//  Copyright © 2017년 Jiwon Bae. All rights reserved.
//

import UIKit

struct Photo: Decodable {
    let title: String
    let image: String
    let date: String
}


class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let jsonString = """
[{\"title\":\"초록\",\"image\":\"01.jpg\",\"date\":\"20150116\"},
{\"title\":\"장미\",\"image\":\"02.jpg\",\"date\":\"20160505\"},
{\"title\":\"낙엽\",\"image\":\"03.jpg\",\"date\":\"20141212\"},
{\"title\":\"계단\",\"image\":\"04.jpg\",\"date\":\"20140301\"},
{\"title\":\"벽돌\",\"image\":\"05.jpg\",\"date\":\"20150101\"},
{\"title\":\"바다\",\"image\":\"06.jpg\",\"date\":\"20150707\"},
{\"title\":\"벌레\",\"image\":\"07.jpg\",\"date\":\"20140815\"},
{\"title\":\"나무\",\"image\":\"08.jpg\",\"date\":\"20161231\"},
{\"title\":\"흑백\",\"image\":\"09.jpg\",\"date\":\"20150102\"},
{\"title\":\"나비\",\"image\":\"10.jpg\",\"date\":\"20141225\"}]
"""
        // jsonString to json data
        let jsonData = jsonString.data(using: .utf8)
        do {
            let photo = try JSONDecoder().decode([Photo].self, from: jsonData!)
            print(photo)
        } catch let jsonerr {
            print("Json Error", jsonerr)
        }
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


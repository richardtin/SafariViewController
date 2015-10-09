//
//  ViewController.swift
//  SafariViewController
//
//  Created by Richard Ting on 10/9/15.
//  Copyright © 2015 Richard Ting. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBAction func openUrl(sender: AnyObject) {
        let webVC = SFSafariViewController(URL: NSURL(string: "https://www.apple.com")!)
        webVC.delegate = self
        self.presentViewController(webVC, animated: true, completion: nil)
    }

    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }

}


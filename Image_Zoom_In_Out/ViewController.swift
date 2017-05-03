//
//  ViewController.swift
//  Image_Zoom_In_Out
//
//  Created by Leo on 12/9/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {


    @IBOutlet weak var bgScrollView: UIScrollView!
    @IBOutlet weak var imageViewOutlet: UIView!








    override func viewDidLoad() {
        super.viewDidLoad()

        let minScale: Float = Float(bgScrollView.frame.size.width / imageViewOutlet.frame.size.width)
        bgScrollView.minimumZoomScale = CGFloat(minScale)
        bgScrollView.maximumZoomScale = 3.0
        bgScrollView.contentSize = imageViewOutlet.frame.size
        bgScrollView.delegate = self


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageViewOutlet
    }


}


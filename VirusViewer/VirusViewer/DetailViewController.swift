//
//  DetailViewController.swift
//  VirusViewer
//
//  Created by 2020-2 on 28/02/20.
//  Copyright © 2020 Maranvaraiaz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    //Anotación de que es un outlet de interface builder
    //Es una clase que puede estar vácio y por eso UIImageView es opcional y estamos asegurando qu va a haber información
    //Misma localidad de memoría que en el main
    @IBOutlet weak var imageView: UIImageView!
    var selectedImage:String?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if let selectedImage = selectedImage
        {
            imageView.image = UIImage(named: selectedImage)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

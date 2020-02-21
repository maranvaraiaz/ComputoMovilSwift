//
//  ViewController.swift
//  VirusViewer
//
//  Created by 2020-2 on 21/02/20.
//  Copyright © 2020 Maranvaraiaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //Array sin contenido
    var pictures:[String] = [String]()
    override func viewDidLoad()
    {
        //Utilizar la función de viewDidLoad del padre con super(padre).viewDidLoad()
        //Ese super es la forma de acceder al contexto superior
        super.viewDidLoad()
        //var a = 10; b = 20
        //Pide un argument label
        //var pictures:[String] = ["virus1","virus2","virus3"]
        let fm = FileManager.default
        let path = Bundle.main.resourcePath
        /*
        //Si está llena metelo en path (izq) shadow names
        if let path = path
        {
            //try! es que no haga caso ya que estamos garantizando que no hay error
            let items = try! fm.contentsOfDirectory(atPath: path)
            print("\(items)")
        }
        else
        {
            //Pantalla donde no hay un path
        }
         */
        //Aquí ya sabemos que estamos en el viewDidLoad y se cargó la vista, por lo que utilizaremos el ! (-Force Unwrapp)
        //try! es que no haga caso ya que estamos garantizando que no hay error
        let items = try! fm.contentsOfDirectory(atPath: path!) //Force Throws
        print("\(items)")
        
        for item in items
        {
            if item.hasPrefix("virus")
            {
                pictures.append(item)
                //print(item)
            }
            //if item.hasSufix("jpg")
        }
        print(pictures)
        
    }
    
    /*
    Avisarle a la app que hay que reducir el uso de memoría, si hacemos caso el sistema nos va a premiar dejándola abierta pero si no hacemos caso nos va a mandar un mensaje de que nos va a matars
    override func didReceiveMemoryWarning() {
        
    }*/
    

}


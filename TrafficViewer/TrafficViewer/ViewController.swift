//
//  ViewController.swift
//  TrafficViewer
//
//  Created by 2020-2 on 13/03/20.
//  Copyright © 2020 Maranvaraiaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func unwindToGreen(unwindSegue: UIStoryboardSegue)
    {
        
    }
    
    //Método para el Segue automático
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Condicionando el Segue pero no lo detenemos
        segue.destination.navigationItem.title = textField.text
    }
    //Para modificar el Segue de forma manual debemos tomar el Viewcontroller y lo arrastramos a la siguiente pantalla y le damos en MANUAL
    
    //Agregamos el button como parte del Viewcontroller, Action es esperar interacción y outlet es modificar una propiedad
    
    
    @IBAction func buttonSegue(_ sender: Any)
    {
        if (textField.text == "Marco")
        {
            //No mandamos nada por lo que usaremos nil
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
        else
        {
            //Alerts (Investigar)
        }
    }
}


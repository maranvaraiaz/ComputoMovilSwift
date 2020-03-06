//
//  ViewController.swift
//  VirusViewer
//
//  Created by 2020-2 on 21/02/20.
//  Copyright © 2020 Maranvaraiaz. All rights reserved.
//

import UIKit
//Cambiamos UIViewController a UITableViewController
class ViewController: UITableViewController
{
    //Array sin contenido
    var pictures:[String] = [String]()
    override func viewDidLoad()
    {
        //Utilizar la función de viewDidLoad del padre con super(padre).viewDidLoad()
        //Ese super es la forma de acceder al contexto superior
        super.viewDidLoad()
        //Acceso al navigator controler para hacer títulos grandes
        navigationController?.navigationBar.prefersLargeTitles = true
        //Propiedad del navigator controler
        title = "Virus Viewer"
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
        //print("\(items)")
        
        for item in items
        {
            if item.hasPrefix("virus")
            {
                pictures.append(item)
                //print(item)
            }
            //if item.hasSufix("jpg")
        }
        //print(pictures)
    }
    //Segmentar secciones de renglones y devolvemos el count de cuantos vamos a observar
    //Solo se manda a llamar una vez porque tenemos una sola sección
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return pictures.count
    }
    //Se manda a llamar la cantidad de veces que se ven en pantalla
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //Sácar una celda reutilizable
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        //Desenvolver opcionales es con ! pero esta es una asignación
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    //Sacar una celda del main y modificarla en código para ponerla en vista
    
    /*
    Avisarle a la app que hay que reducir el uso de memoría, si hacemos caso el sistema nos va a premiar dejándola abierta pero si no hacemos caso nos va a mandar un mensaje de que nos va a matars
    override func didReceiveMemoryWarning() {
        
    }*/
    
    //Vamos a mandar el nombre de las imágenes
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        //1. Tratar de encontrar y relacionar la vista Detail
        //El as es para garantizar que es de tipo DetailViewController
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController
        {
            //Éxito ya tengo referencia el view controler por medio del vc
            //Asignar selectImage al string que toca el usuario
            vc.selectedImage = pictures[indexPath.row]
            //3. Cambiar la vista
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}


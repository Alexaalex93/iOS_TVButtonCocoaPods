//
//  ViewController.swift
//  CocoaPodsExample
//
//  Created by cice on 22/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit
import TVButton

//Hay que añadir el framework de TVButton desde el nombre del proyecto en general abajo de todo link framework libraries y añades el que has implementado

//Hay que darle a build, si no te da errores

//Si da error vemos que las librerias esten linkadas en general si no en build phases dentro de link binary with... y si no en build settins buscamos framework search paths y le damos a mas y lo añade solo
class ViewController: UIViewController {
    
    @IBOutlet weak var tvButton: TVButton!
    
    //x:69 anchura 236
    //y:158 altura 350
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let background = TVButtonLayer(image: UIImage(named: "imagen002.png")!)
        let pattern = TVButtonLayer(image: UIImage(named: "imagen001.png")!)
       // let top = TVButtonLayer(image: UIImage(named: "imagen002.png")!)
        tvButton.parallaxIntensity = 2.0
        tvButton.layers = [background, pattern]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    


}


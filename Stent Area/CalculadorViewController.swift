//
//  CalculadorViewController.swift
//  Stent Area
//
//  Created by David Venancio - Nethol on 01/02/17.
//  Copyright © 2017 David Venancio - Nethol. All rights reserved.
//

import UIKit

class CalculadorViewController: UIViewController, UITextFieldDelegate {
  

  
  override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    return UIInterfaceOrientationMask.portrait
  }
  
  override var shouldAutorotate: Bool {
    return false
  }
  
  @IBOutlet weak var numAreaLesao: UITextField!
  @IBOutlet weak var txtDiamStent: UILabel!
  @IBAction func calculateDiametro(_ sender: Any) {
    
    
    // Calculos
    
    if numAreaLesao.text != "" {
      
      let areaLesao = lroundf(sqrt((NumberFormatter().number(from:numAreaLesao.text!)!.floatValue) / Float.pi) + 1) * 2
      
      txtDiamStent.text = "= \(areaLesao)"
      
      self.numAreaLesao.resignFirstResponder()
      
    } else {
      
      let myAlertLesao = UIAlertController(title: "Atenção", message: "Por favor, digite a área da lesão", preferredStyle: UIAlertControllerStyle.alert)
      myAlertLesao.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
      self.present(myAlertLesao, animated: true, completion: nil)
      
    }
  }
  
  
  @IBOutlet weak var raioStent: UITextField!
  @IBOutlet weak var txtAreaStent: UILabel!
  
  
  @IBAction func butCalcArea(_ sender: Any) {
    
    if raioStent.text != ""{
      
      let raio = NumberFormatter().number(from:raioStent.text!)!.floatValue
      let numRaioStent = lroundf(Float.pi * ((raio / 2) * (raio / 2)))
      txtAreaStent.text = "= \(numRaioStent)"
      self.raioStent.resignFirstResponder()
      
    } else {
      
      let myAlertCalcArea = UIAlertController(title: "Atenção!", message: "Por favor, digite o raio do Stent", preferredStyle: UIAlertControllerStyle.alert)
      myAlertCalcArea.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
      self.present(myAlertCalcArea, animated: true, completion: nil)
      
    }
    
  }
  
  func moveTextField(textField: UITextField, moveDistance: Int, up: Bool){
    let moveDuration = 0.3
    let movement: CGFloat = CGFloat(up ? moveDistance: -moveDistance)
    
    UIScrollView.beginAnimations("animateTextField", context: nil)
    UIScrollView.setAnimationBeginsFromCurrentState(true)
    UIScrollView.setAnimationDuration(moveDuration)
    self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
    self.raioStent.delegate = self
    UIScrollView.commitAnimations()
  }
  
  // keyboard shows
 func textFieldDidBeginEditing(_ textField: UITextField){
  moveTextField(textField: raioStent, moveDistance: -200, up: true)
  }

  // keyboard hides
 func textFieldDidEndEditing(_ textField: UITextField){
  moveTextField(textField: raioStent, moveDistance: -200, up: false)
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return false
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    // Do any additional setup after loading the view, typically from a nib.
    raioStent.setBottomBorder()
    numAreaLesao.setBottomBorder()
    
/*    let eula = UIAlertController(title: "EULA", message: "Mensagem", preferredStyle: UIAlertControllerStyle.alert)
    eula.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
    self.present(eula, animated: true, completion: nil)
  */  
   
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}


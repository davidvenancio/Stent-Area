//
//  NetholViewController.swift
//  Stent Area
//
//  Created by David Venancio - Nethol on 01/02/17.
//  Copyright © 2017 David Venancio - Nethol. All rights reserved.
//

import UIKit

class NetholViewController: UIViewController {
  
  
  @IBOutlet weak var netholWeb: UIWebView!
  
  @IBAction func siteNethol(_ sender: Any) {
    let netholWeb = "nethol.com.br"
    let url = URL(string: "http://\(netholWeb)")
    if #available(iOS 10.0, *) {
      UIApplication.shared.open(url!)
    } else {
      // Fallback on earlier versions
    }
  }
  
  @IBAction func emailNethol(_ sender: Any) {
    let email = "mailto:contato@nethol.com.br"
    let url = URL(string: "mailto:\(email)")
    if #available(iOS 10.0, *) {
      UIApplication.shared.open(url!)
    } else {
      // Fallback on earlier versions
    }
  }
  
  func loadHtmlCode() {
    let htmlCode = "<html><head><style type=\"text/css\">body{font-family: '-apple-system','HelveticaNeue'; font-size:17;}    </style><title>Nethol Web CG 3D</title></head><body><h2>Nethol Web</h2><ul><li><b>Identidade Visual</b>.</li><li><b>SEO</b> - Search Engine Optimization (Otimização para os Sites de Busca).</li><li><b>3D e Realidade Virtual</b>- Modelagem de Objetos, Cenas e Animações.</li><li><b>Cloud Services</b> - Gerenciamento, Manutenção de Servidores e Websites em Cloud (AWS).</li><li><b>Apps - Desenvolvimento de Aplicativos</b> Móveis e Corporativos.</li><li><b>Consultoria</b> de Ensino à Distância / T.I.</li></ul></body>"
    netholWeb.loadHTMLString(htmlCode, baseURL: nil)
  }

    override func viewDidLoad() {
        super.viewDidLoad()
          loadHtmlCode()

        // Do any additional setup after loading the view.
    }
  
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

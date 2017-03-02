//
//  VHViewController.swift
//  Stent Area
//
//  Created by David Venancio - Nethol on 01/02/17.
//  Copyright © 2017 David Venancio - Nethol. All rights reserved.
//

import UIKit
import WebKit

class VHViewController: UIViewController, WKNavigationDelegate {
  
  @IBAction func mailVH(_ sender: Any) {
    let email = "mailto:vh@vitoriahospitalar.com.br"
    let url = URL(string: "mailto:\(email)")
    if #available(iOS 10.0, *) {
      UIApplication.shared.open(url!)
    } else {
      // Fallback on earlier versions
    }
  }
  @IBAction func openVHWeb(_ sender: Any) {
    if #available(iOS 10.0, *) {
      UIApplication.shared.open(URL(string: "http://vitoriahospitalar.com.br")!, options: [:], completionHandler: nil)
    } else {
      // Fallback on earlier versions
    }
  }
  @IBOutlet weak var vhWeb: UIWebView!
  
  func loadHtmlCode() {
    // insert string with html code
  
    let htmlCode = "<html><head><meta charset=\"UTF-8\"><style type=\"text/css\">body{font-family: '-apple-system','HelveticaNeue'; font-size:17;}    </style><title>Vitória Hospitalar</title></head> <body><p>A Vitória Hospitalar é uma empresa de importação e distribuição de produtos médico-hospitalares com sede em Vitória, no Espírito Santo, e escritórios regionais de vendas em São Paulo, Minas Gerais e Rio de Janeiro.</p>    <p>No Espírito Santo é uma das únicas empresas do segmento que possui o Certificado de Boas Práticas, e ainda já conquistou a Certificação da ISO 9001/2008. Além disso, é distribuidora exclusiva no país do Hemostático Absorvível Arista, da indústria Bard, e dos Implantes de Coluna da fabricante Innovasis.</p>    <h3><b>ENDEREÇOS NO BRASIL</b>:</h3>    <p><b>Vitória</b><br />    Av. Nossa Sra dos Navegantes, 955,  Salas 611 a 613 - Enseada do Suá<br />    CEP: 29050-335<br />    Tel: 27 3345-7225 / Fax: 27 3345-7226<br />    E-mail: vh@vitoriahospitalar.com.br<br /></p>    <p><b>São Paulo</b><br />    Rua Marques de Itu, 61, cj 112<br />    Ed. Dorchester Gate – Vila Buarque<br />    CEP: 01223-001<br />    Telefax: 11 3221-6266<br />    E-mail: vhsp@vitoriahospitalar.com.br<br /></p>    <p><b>Belo Horizonte</b><br />    Av. Brasil, 84 - Salas 702/703<br />    Ed. Brasil Center – Santa Efigênia<br />    CEP: 30140-001<br />    Telefax: 31 2535-1447<br />    E-mail:vhmg@vitoriahospitalar.com.br</p>    <p><b>Rio de Janeiro</b><br />    Av. das Américas, 4200 - Bl 08 - Ala A Sala 306<br /> Centro Empresarial Barra Shopping, Barra da Tijuca<br />    CEP: 22640-907<br />    Telefax: 21 3385-4356<br />    E-mail: vhrj@vitoriahospitalar.com.br</p></body>"
     vhWeb.loadHTMLString(htmlCode, baseURL: nil)
  }



  override func viewDidLoad() {
    super.viewDidLoad()
    loadHtmlCode()
    
  }
  
  
 
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}


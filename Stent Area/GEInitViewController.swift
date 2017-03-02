//
//  GEInitViewController.swift
//  Stent Area
//
//  Created by David Venancio - Nethol on 24/02/17.
//  Copyright © 2017 David Venancio - Nethol. All rights reserved.
//

import UIKit

class GEInitViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  var photos = [Photo]()

  @IBAction func geWeb(_ sender: Any) {
    let geWeb = "grupoendovascular.com.br"
    let url = URL(string: "http://\(geWeb)")
    if #available(iOS 10.0, *) {
      UIApplication.shared.open(url!)
    } else {
      // Fallback on earlier versions
    }
  
  }
  
  @IBAction func geMail(_ sender: Any) {
    let email = "mailto:grupoendovascular@grupoendovascular.com.br"
    let url = URL(string: "mailto:\(email)")
    if #available(iOS 10.0, *) {
      UIApplication.shared.open(url!)
    } else {
      // Fallback on earlier versions
    }
  }

  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      var newPhoto = Photo(filename: "alberto", name: "DR. ALBERTO JOSÉ KUPCINSKAS JUNIOR", subs: "Angiologista, Cirurgião Vascular e Cirurgião Endovascular", desc: "Especialista em Angiologia e Cirurgia Vascular pela SBACV/AMB, Especialista em Angiorradiologia e Cirurgia Endovascular pela SBACV/AMB, Membro Titular da SBACV" )
      photos.append(newPhoto)
      
      newPhoto = Photo(filename: "alvaro", name: "PROF. DR. ÁLVARO MACHADO GAUDÊNCIO", subs: "Angiologista, Cirurgião Vascular e Cirurgião Endovascular", desc: "Médico formado pela USP, Especialista em Cirurgia Vascular, Doutor em Clínica Cirúrgica pela FMUSP, Membro dos Colégios Norte Americano e Francês de Angiologia e Cirurgia Vascular, Membro Efetivo da SBACV")
      photos.append(newPhoto)
      
      newPhoto = Photo(filename: "arual", name: "DR. ARUAL GIUSTI", subs: "Angiologista, Cirurgião Vascular e Cirurgião Endovascular", desc : "Especialista em Angiologia e Cirurgia Vascular pela SBACV/AMB, Especialista em Angiorradiologia e Cirurgia Endovascular pela SBACV/AMB, Vice tesoureiro da SBACVSP, Membro Titular da SBACV")
      photos.append(newPhoto)
      
      newPhoto = Photo(filename: "carlos", name: "DR. CARLOS EDUARDO VARELA JARDIM", subs: "Angiologista, Cirurgião Vascular e Endovascular", desc : "Especialista em Angiologia e Cirurgia Vascular pela SBACV/AMB, Especialista em Angiorradiologia e Cirurgia Endovascular pela SBACV/AMB, Tesoureiro geral  da SBACVSP, Membro Efetivo da SBACV")
      photos.append(newPhoto)
      
      newPhoto = Photo(filename: "julio", name: "DR. JÚLIO CÉSAR GOMES GIUSTI", subs: "Cirurgião Vascular, Cirurgião Endovascular e Ultrassonografista Vascular", desc: "Preceptor Cir. Vascular e Ecografia Vascular H. Municipal Tatuapé - SP, Membro Efetivo  da SBACV, Especialista em Cirurgia Vascular pela SBACV/AMB, Título Especialista Ecografia Vascular pela SBACV/CBR/AMB")
      photos.append(newPhoto)
      
      newPhoto = Photo(filename: "rodrigo", name: "DR. RODRIGO MARTINS CABRERA", subs: "Cirurgião Vascular, Cirurgião Endovascular e Ultrassonografista Vascular", desc: "Membro Aspirante da SBACV")
      photos.append(newPhoto)
      
      // Uncomment the following line to preserve selection between presentations
       // self.clearsSelectionOnViewWillAppear = false
      
      // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
      // self.navigationItem.leftBarButtonItem = self.editButtonItem()
    }
  
  let titGrupoEnd = "AJKJ - Clínica Vascular e Endovascular EIRELI \n Av. Jandira, 257 conj. 125 - São Paulo - SP \n Tel.: (11) 5051-1558 / 5051-1570"
  
  
  let titSection = "Equipe de médicos cirurgiões vasculares especializados em tratamento endovascular e cirurgias de alta complexidade em São Paulo."

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return photos.count
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
    
    let currentPhoto = photos[indexPath.row]
    // cell.textLabel?.text = currentPhoto.imagemGrupo
    
    let image = UIImage(named: currentPhoto.filename)
    cell.imagemGrupo.image = image
    
    cell.titulo.text = currentPhoto.name
    cell.subtitulo.text = currentPhoto.subs
    cell.descricao.text = currentPhoto.desc
    
    // Configure the cell...
    // let currentPhoto = data[indexPath.row]
    // cell.textLabel?.text = currentPhoto.data
    
    return cell
  }
  
  func tableView(_ tableView: UITableView,
                          titleForHeaderInSection section: Int) -> String? {
    
    return titSection
    
  }
  
  func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
    return titGrupoEnd
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("selecionadas \(indexPath.section) seção e \(indexPath.row) linha")
    //
 
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation

    
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

//
//  ViewController.swift
//  SignosApp
//
//  Created by lucca negrini on 07/03/24.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        
        significadoSignos.append("Os arianos e arianas são as pessoas nascidas entre os dias 21 de março e 20 de abril.")
        
        significadoSignos.append("Os taurinos preferem a estabilidade e podem resistir a mudanças drásticas.")
        
        significadoSignos.append("As pessoas de Gêmeos costumam buscar por novidade e conhecimentos.")
        
        significadoSignos.append("O signo de Câncer é o quarto da roda astrológica, regente da Casa Quatro e regido pela Lua.")
        
        significadoSignos.append("De elemento Fogo e modalidade Fixa, os leoninos são dramáticos, ambiciosos e corajosos.")
        
        significadoSignos.append("A maioria das virginianas se orgulha das qualidades de seu signo, pois ele é sinônimo de pragmatismo, trabalho e funcionalidade.")
        
        significadoSignos.append("Libra é o sétimo signo do zodíaco. Cardeal, é regido por Vênus e rege a Casa 7 do Mapa Astral.")
        
        significadoSignos.append("Escorpião (♏) é o oitavo signo astrológico do Zodíaco, originário da constelação de Scorpius.")
        
        significadoSignos.append("Quem nasce com o sol no signo de Sagitário pode se identificar com características como o otimismo e o desejo de liberdade.")
        
        significadoSignos.append("Os nascidos sob o signo de Capricórnio, entre 22 de dezembro e 20 de janeiro.")
        
        significadoSignos.append("Os aquarianos e aquarianas são as pessoas nascidas entre 21 de janeiro e 19 de fevereiro.")
        
        significadoSignos.append("O signo de Peixes é o décimo segundo da roda astrológica, regente da Casa Doze e regido pelo planeta Netuno.")
        
        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
     return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso , for: indexPath)
        
        celula.textLabel?.text = signos[ indexPath.row ]
        
        
        return celula
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        let alertaController = UIAlertController(title: "Significado do signo", message: significadoSignos[indexPath.row] , preferredStyle: .alert)
        
        
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default , handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil)
        
        
        
    }

}


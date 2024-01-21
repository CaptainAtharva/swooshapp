//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Atharva Sakpal on 17/01/24.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player! //! means an implicitlly unwrapped optional

    @IBOutlet weak var nextBtn: BorderButton!
    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "SkillViewcontrollerSegue", sender: self)
        
    }
    @IBAction func onMensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "mens")
        
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "womens")
        
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        
        selectLeague(leagueType: "coed")
    }
    
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        player = Player()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SkillViewController =  segue.destination as? SkillViewController{
            SkillViewController.player = player
            //saving leagueViewController's player var to SkillViewController's player
            
            //prepareForSegue is always called before the viewDidLoad
        }
    }

}

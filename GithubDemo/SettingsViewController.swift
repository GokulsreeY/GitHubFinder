//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by Gokulsree Yenugadhati on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var settings: GithubRepoSearchSettings!
    weak var delegate: SettingsPresentingViewControllerDelegate?
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var numLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSaveButton(_ sender: Any) {
        settings.minStars = Int(slider.value)
        delegate?.didSaveSettings(settings: settings)
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func onCancelButton(_ sender: Any) {
        delegate?.didCancelSettings()
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func whenSlided(_ sender: Any) {
        print(slider.value)
        numLabel.text = "\(Int(slider.value))"
    
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
protocol SettingsPresentingViewControllerDelegate: class{
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

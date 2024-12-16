//
//  secondViewController.swift
//  NavigationController
//
//  Created by Naga Murali Akula on 26/11/24.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet var popButton1: UIButton!
    @IBOutlet var popToRootButton1: UIButton!
    @IBOutlet var dismissButton1: UIButton!
    @IBOutlet var pushButton2: UIButton!
    
    @IBOutlet var homeButton1: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        print("second View Did Load")
    }
    
    @IBAction func popButton1Click() {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func popToRootButton1Click() {
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    @IBAction func dismissButton1Click() {
        
        self.dismiss(animated: true)
    }
    @IBAction func pushButton2Click() {
        
    }
    
    @IBAction func homeButton1Click() {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("Second view will appear")
        
        /*
         
         This Method is called every time before the view are visible to and before any animation are configured .In this method view has bound
         but orientation not set yet.You can override this method to perform custom tasks associated with displaying the view such as to hide
         fields or disable actions before the view becomes visible.
         
         */
        
    }
    
    override func viewWillLayoutSubviews() {
        
        print("Second view will layout Subviews")
        
        /*
         
         It don’t do Nothing by default. When a view’s bounds change, the view adjusts the position of its subviews. View controller can
         override
         this method to make changes before the view lays out its subviews.
         */
    }
    
    override func viewDidLayoutSubviews() {
        
        print("Second view did layout Subviews")
        /*
         This method is called after the viewController has been adjust to its subview following a change on its
         bound.Add code here if you want to make change to subviews after they have been set.
         */
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("Second view did Appear")
        /*
         This Method is called after the view present on the screen. Usually save data to core data or start animation or
         start playing a video or a sound, or to start collecting data from the network This type of task good for this
         method.
         */
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("Second view Will Dis-Appear")
        /*
         This method called before the view are remove from the view hierarchy.The View are Still on view hierarchy but
         not removed yet . any unload animations haven’t been configured yet. Add code here to handle timers, hide the
         keyboard, cancel network requests, revert any changes to the parent UI. Also, this is an ideal place to save state
         */
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        print("Second view did DisAppear")
        /*
         
         This method is called after the VC’s view has been removed from the view hierarchy. Use this method to stop listening for notifications or device
         sensors.
         */
    }
    
    override func didReceiveMemoryWarning() {
        
        print("Second  did  Recieve Memory Warning")
        /*
         When memory starts to fill up, iOS does not automatically move data from memory to its limited hard disk space. It does, however, issue this
         warning and YOU (I mean YOU) are responsible for clearing some objects out of memory. Be aware that if the memory of your app goes over a
         certain threshold, iOS will shutdown your app. Unfortunately, this will look like a crash to the end user.
         
         */
        
        
        
    }
}

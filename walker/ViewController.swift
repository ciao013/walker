//
//  ViewController.swift
//  walker
//
//  Created by partTimeWorker on 6/5/2022.
//
import UIKit
import CoreMotion
//import XCTest

class ViewController: UIViewController {
    @IBOutlet weak var Accelerometer_x_Data: UILabel!
    @IBOutlet weak var Accelerometer_y_Data: UILabel!
    @IBOutlet weak var Accelerometer_z_Data: UILabel!
    @IBOutlet weak var gyroDataTextLabel: UILabel!
    let motionManager = CMMotionManager()
    var Accelerometer_Text:String = ""
    var timer: Timer!
   // let data = []

    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager.startAccelerometerUpdates()
        motionManager.startGyroUpdates()
        //motionManager.startMagnetometerUpdates()
        //motionManager.startDeviceMotionUpdates()
        motionManager.accelerometerUpdateInterval = 1.5
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){_ in
            if let accelerometer_data = self.motionManager.accelerometerData {
                let x = accelerometer_data.acceleration.x
                let y = accelerometer_data.acceleration.y
                let z = accelerometer_data.acceleration.z
                self.Accelerometer_x_Data.text = String(x)
                self.Accelerometer_y_Data.text = String(y)
                self.Accelerometer_z_Data.text = String(z)
            }
            if let  Gyro_data = self.motionManager.gyroData {
                //let x = Gyro_data.acceleration.x
                //let y = Gyro_data.acceleration.y
                //let z = Gyro_data.acceleration.z
                self.gyroDataTextLabel.text = String("\(Gyro_data)")

                
            }
        }
       /* func stringForValue(_ value: Double, entry: accelerometer_data, dataSetIndex: Int, viewPortHandler: ViewPortHandler?) -> String
        {
            //print("======\(value)")
            return String(format:"%.2f%%",value)
        }
        */
        
    }

    
 /*   @objc func update() {
        if let  accelerometerData = motionManager.accelerometerData {
    AccelerometerTextLabel.text = String("\(accelerometerData)")

        }
       if let gyroData = motionManager.gyroData {
           gyroDataTextLabel.text = String("\(gyroData)")
        }*/
  /*    if let magnetometerData = motionManager.magnetometerData {
            print(magnetometerData)
        }
        if let deviceMotion = motionManager.deviceMotion {
            print(deviceMotion)
        }*/


    }

    


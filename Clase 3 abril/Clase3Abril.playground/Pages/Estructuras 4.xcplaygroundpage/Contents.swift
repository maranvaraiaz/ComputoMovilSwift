import UIKit
//Observers
struct StepCounter
{
    var totalSteps: Int = 0
    {
        willSet
        {
            print("About to set totalSepts to \(newValue)")
        }
        didSet
        {
            print("Added \(totalSteps - oldValue)")
        }
    }
}

var stepCounter = StepCounter(totalSteps: 1)
stepCounter.totalSteps=20

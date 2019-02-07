import UIKit
//Lab 03


var pi1: Int = 22/7 // Pi shows as 3 because int leaves off all but the whole number of the value.
// Int Represents pi as a 32/64 bit whole number

var pi2: Float = 22/7 // Pi shows as 3.142857
//Float Represents pi as a 32-bit floaing point number

var pi3: Double = 22/7 // Pi shows as 3.142857142857143
// Doouble Represents pi as a 64-bit floaing point number

/* The difference is related to the size in memory that these
 types consume. Int is friendly to both 32 and 64 bit systems.
 Float and Double are for representing numbers with decimal or
 fractional vaules.

 A Float is accurate to as few as six decimal digits while a
 Double is accurate to as many as 15 decimal digits, in most
 cases, where memory size doesn't matter Double is prefered.*/


class Counter {
    var count = 0
    let maxCount = 10

    func increment() {
       count += 1
        
    }
//parameter with argument label and parameter name
    
    func increment(by amount: Int) {
        count += amount }
    func reset() { count = 0
        
    }
    
    func decrement() {
        
        count -= 1
        if count > 10 {
            maxCount
        }
    }
    
    func decrement(byAmount:  Int ) {
    for _ in 1...byAmount {
            decrement()
        }
        if count > 10 {
            maxCount
        }
    }
    
    func getCount() {
            self
        if count > 10 {
            maxCount
        }
            
            
        }
    func display() {
            print("count")
            print(getCount())
        
        if count > 10 {
            maxCount
        }
        }
    
       
        
    }






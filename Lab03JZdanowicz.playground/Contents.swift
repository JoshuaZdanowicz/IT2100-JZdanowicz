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

print("Pi As:","Int",pi1,"Float", pi2,"Double", pi3)
//                                                                                                                     //

var str = "Hello, Josh"


class Counter {
    
    var count = 0
    
    let maxCount = 10
    
    
    
    func increment() {
        
        count += 1
        
    }
    
    //parameter with argument label and parameter name
    
    // Replace by amount with byAmount. You can't have spaces in identifiers (parameters, variables, etc.)
    
    func increment(byAmount: Int) {
        
        count += byAmount
        
        // needed to close the method body
        
    }
    
    
    func reset() {
        
        count = 0
        
    }
    
    func decrement() {
        
        count -= 1
        
        
        
        //commenting again
        
        //if count > 10 {
        
        //    maxCount
        
        //}
        
    }
    
    func decrement(byAmount:  Int ) {
        
        for _ in 1...byAmount {
            
            decrement()
            
        }
        
        // not sure what this is doing.
        
        //if count > 10 {
        
        //    maxCount
        
        //}
        
        
        
    }
    
    
    
    // Needed to add -> Int to indicate that the method is returning a value
    
    func getCount() -> Int {
        
        // not sure what you going for with self by itself? We can use self to prefix properties.
        
        // read https://docs.swift.org/swift-book/LanguageGuide/Methods.html for more info
        
        //self
        
        //if count > 10 {
        
        //    maxCount
        
        //}
        
        return self.count
        
    }
    func display() {
        
        // This is displaying a string literal with the value count
        
        //print("count")
        
        // You should print the actual value of count:
        
        //print(count) getCount() on the following line works as well
        
        print(getCount())
        
        
        
        // commented again
        
        //if count > 10 {
        
        //    maxCount
        
        //}
        
        
        
    }
    
}
var counter = Counter()

counter.count = 10


counter.decrement()

counter.decrement()

counter.display()


counter.decrement(byAmount: 5)

counter.display()


counter.increment(byAmount: 20)

counter.display()

//                                                                                                                     //

func combineAll(numbers: [Int], starter: String) -> String {
    var numbersCombined = starter + ": "
    for number in numbers {
        numbersCombined = numbersCombined + String(number) + " " }
    return numbersCombined }
print(combineAll(numbers: [9, 8, 7], starter: "Combined"))

func concatAll(names: [String], starter: String) -> String {
    var namesCombined = starter + ": "
    for name in names {
        namesCombined = namesCombined + String(name) + " " }
    return namesCombined }
print(concatAll(names: ["Jim", "Matt", "Josh", "Jess"], starter: "Combined"))
    



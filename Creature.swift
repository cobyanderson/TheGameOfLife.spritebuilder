import UIKit

class Creature: CCSprite {
    var isAlive = false {
        didSet {
            self.visible = isAlive
        }
    }
    //above is a property observer and has to do with callbacks, wtf
    var livingNeighborsCount = 0
    
    convenience override init() {
        self.init(imageNamed: "GameOfLifeAssets/Assets/bubble.png")
        anchorPoint = CGPoint(x: 0, y: 0)
    }
}

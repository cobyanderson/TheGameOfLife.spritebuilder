  import Foundation
  
  class MainScene: CCNode {
    
    weak var grid: Grid!
    weak var generationLabel: CCLabelTTF!
    weak var populationLabel: CCLabelTTF!
    
    var timer = CCTimer()
    
    func play() {
        schedule("step", interval: CCTime(1))
    }
    
    func pause() {
        unschedule("step")
    }
    
    func step() {
        grid.evolveStep()
        
        generationLabel.string = "\(grid.generation)"
        populationLabel.string = "\(grid.totalAlive)"
    }
    
  }

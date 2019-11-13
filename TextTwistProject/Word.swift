import Foundation

struct Word {
    let unscrambled: String
    
    var scrambled: String {
        return String(unscrambled.shuffled())
    }
    
    static func getRandomWord() -> Word {
        return [
            Word(unscrambled: "homer"),
            Word(unscrambled: "marge"),
            Word(unscrambled: "bart"),
            Word(unscrambled: "lisa"),
            Word(unscrambled: "maggie"),
            Word(unscrambled: "apu"),
            Word(unscrambled: "moe"),
            Word(unscrambled: "flanders"),
            Word(unscrambled: "moe"),
            Word(unscrambled: "otto"),
            Word(unscrambled: "flanders"),
            Word(unscrambled: "willie"),
            Word(unscrambled: "duffman"),
            Word(unscrambled: "abraham"),
            Word(unscrambled: "barney"),
            ].randomElement()!
    }
    
    
    static func getRandomWordFG() -> Word {
           return [
               Word(unscrambled: "peter"),
               Word(unscrambled: "lois"),
               Word(unscrambled: "stewie"),
               Word(unscrambled: "meg"),
               Word(unscrambled: "chris"),
               Word(unscrambled: "brian"),
               Word(unscrambled: "cleveland"),
               Word(unscrambled: "quagmire"),
               Word(unscrambled: "joe"),
               Word(unscrambled: "death"),
               Word(unscrambled: "jameswoods"),
               Word(unscrambled: "loretta"),
               Word(unscrambled: "clevelandjr"),
               Word(unscrambled: "neil"),
               Word(unscrambled: "mort"),
               ].randomElement()!
       }
    
    
    
    
}

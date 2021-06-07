import Foundation

public extension Int {
    
    var roman: String? {
        
        var inputValue = self
        
        if self <= 0 && self <= 3999 {
            return nil
        } else {
                var romanInt = ""
                let mappingList: [(Int, String)] = [(1000, "M"),
                                                    (900, "CM"),
                                                    (500, "D"),
                                                    (400, "CD"),
                                                    (100, "C"),
                                                    (90, "XC"),
                                                    (50, "L"),
                                                    (40, "XL"),
                                                    (10, "X"),
                                                    (9, "IX"),
                                                    (5, "V"),
                                                    (4, "IV"),
                                                    (1, "I")]
                for i in mappingList {
                    while (inputValue >= i.0) {
                        inputValue -= i.0
                        romanInt += i.1
                    }
                }
                return romanInt
        }

    }
}

func isEquilateral(side1:Int, side2:Int, side3:Int) -> Bool {
    if side1 == side2 && side2 == side3 {
        return true
    } else {
        return false
    }
}

func isIsosceles(side1:Int, side2:Int, side3:Int) -> Bool {
    if (side1 == side2 && side2 != side3) ||
       (side1 == side3 && side3 != side2) ||
       (side2 == side3 && side3 != side1) {
           return true
       } else {
           return false
       }
}

func isIrregular(side1:Int, side2:Int, side3:Int) -> Bool {
    if side1 != side2 && side1 != side3 && side2 != side3 {
        return true
    } else {
        return false
    }
}

func triangleType(side1:Int, side2:Int, side3:Int) {
    if isIrregular(side1:side1, side2:side2, side3:side3) {
        print("Irregular Triangle")
    } else if isIsosceles(side1:side1, side2:side2, side3:side3) {
        print("Isosceles Triangle")
    } else if isEquilateral(side1:side1, side2:side2, side3:side3) {
        print("Equilateral Triangle")
    }
}

let a:Int = 7
let b:Int = 8
let c:Int = 8

triangleType(side1:a, side2:b, side3:c)
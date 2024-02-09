import Foundation


protocol Shape {
    func area() -> Double
}


struct Circle: Shape {
    let radius: Double
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
}


struct Triangle: Shape {
    let sideA: Double
    let sideB: Double
    let sideC: Double
    
    func area() -> Double {
        let s = (sideA + sideB + sideC) / 2
        return sqrt(s * (s - sideA) * (s - sideB) * (s - sideC))
    }
    var isRight: Bool {//проверка на прямоугольный треуголник
           let sides = [sideA, sideB, sideC].sorted()
           return sides[0] * sides[0] + sides[1] * sides[1] == sides[2] * sides[2]
       }
}


let circle = Circle(radius: 5)
print("Площадь круга: \(circle.area())")

let triangle = Triangle(sideA: 3, sideB: 4, sideC: 5)
print("Площадь треугольника: \(triangle.area())")

print("Треугольник прямоугольный: \(triangle.isRight)")

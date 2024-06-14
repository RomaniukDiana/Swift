import Foundation

struct Calculator {
    
    func calculate(lhs: String, rhs: String, operation: String) -> Double {
        let result: Double
        switch operation {
        case "+":
            result = (Double(lhs) ?? 0) + (Double(rhs) ?? 0)
        case "-":
            result = (Double(lhs) ?? 0) - (Double(rhs) ?? 0)
        case "*":
            result = (Double(lhs) ?? 0) * (Double(rhs) ?? 0)
        case "/":
            result = (Double(lhs) ?? 0) / (Double(rhs) ?? 1.0)
        case "√x":
            result = pow((Double(lhs) ?? 1.0), 1.0 / (Double(rhs) ?? 2.0))
        case "xª":
            result = pow((Double(lhs) ?? 1.0), (Double(rhs) ?? 1.0))
        default:
            result = Double(lhs) ?? 0
        }
        return result
    }
}

func main() {
    let calculator = Calculator()
    
    print("Введіть перше число:")
    guard let lhs = readLine(), !lhs.isEmpty else {
        print("Неправильне введення")
        return
    }
    
    print("Введіть операцію (+, -, *, /, √x, xª):")
    guard let operation = readLine(), !operation.isEmpty else {
        print("Неправильне введення")
        return
    }
    
    print("Введіть друге число:")
    guard let rhs = readLine(), !rhs.isEmpty else {
        print("Неправильне введення")
        return
    }
    
    let result = calculator.calculate(lhs: lhs, rhs: rhs, operation: operation)
    print("Результат: \(result)")
}

main()

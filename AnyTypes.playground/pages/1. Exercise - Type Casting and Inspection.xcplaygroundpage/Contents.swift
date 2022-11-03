/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */

let anyItems: [Any] = [-13.485745, 6.23, 2, 0.0, 44, "time", "speed", true, true]

anyItems.map { print($0) }


/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */

for item in anyItems {
    
    if item is Double {
        print("Дробь: \(item)")
        
    } else if item is Int {
        print("Целое число: \(item)")
        
    } else if item is String {
        print("Строка: \(item)")
        
    } else if item is Bool {
        print("Булево значение: \(item)")
    }
}


/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */

let dictionary: [String: Any] = ["one": -13.485745, "two": 6.23, "three": 44, "four": "time", "five": "speed", "six": true]


dictionary.map { print("Ключ: \($0), значение \($1)") }

/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */

var total = 0.0

func getSum() {
    for (_, value) in dictionary {
        if let fractionalNumber = value as? Double {
            total += fractionalNumber
            
        } else if let integerNumber = value as? Int {
            total += Double(integerNumber)

        } else if value is String {
            total += 1
   
        } else if let booleanItem = value as? Bool {
            total += booleanItem ? 2 : -3
        }
    }
}

getSum()
print(total)



/*:
 Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */

total = 0.0

func getUpdateSum() {
    for (_, value) in dictionary {
        if let fractionalNumber = value as? Double {
            total += fractionalNumber
         
        } else if let integerNumber = value as? Int {
            total += Double(integerNumber)
      
        } else if let stringItem = value as? String {
            let number = Double(stringItem)
            total += number ?? 0
        }
    }
}

getUpdateSum()
print(total)

//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)

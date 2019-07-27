//
//  main.swift
//  matrix
//
//  Created by Артём Семёнов on 27.07.2019.
//  Copyright © 2019 Артём Семёнов. All rights reserved.
//

import Foundation

let m = 4, n = 4
//создаём матрицу заданного размера
var matrix: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
//заполняем матрицу случайными значениями
for i in 0..<matrix.count {
    for j in 0..<matrix[i].count {
        matrix[i][j] = Int(arc4random_uniform(10))
    }
}
print("Исходная матрица")
for row in matrix {
    print(row)
}
// переставление строк
for i in 0..<matrix.count { // перебираем строки
    // проверяем, чтобы случайно не вывалится за пределы массива строк индекс строки обязательно должен быть нечётным так как элементы в массиве нумеруются с нулевого
    if i % 2 != 0 { // проверяем остаток от деления, если он не нулевой
        for j in 0..<matrix[i].count { // перебираем элементы
            let temp = matrix[i][j] // сохраняем значение
            matrix[i][j] = matrix[i-1][j] // переставляем элементы
            matrix[i-1][j] = temp // записываем сохранённое значение на новое место
        }
    }
}
print("результат замены")
for row in matrix {
    print(row)
}

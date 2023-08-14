//
//  ToDoInformation.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/28.
//

import UIKit

struct ToDoInformation {
    //인스턴스 프로퍼티
    var list = [ToDo(main: "잠자기", sub: "23.07.03", like: false, done: true, color: ToDoInformation.randomBackgroundColor()),
                ToDo(main: "영화보기", sub: "23.07.30", like: true, done: false, color: ToDoInformation.randomBackgroundColor()),
                ToDo(main: "장보기", sub: "23.08.13", like: false, done: false, color: ToDoInformation.randomBackgroundColor())]
    
    //타입 메서드는 인스턴스 생성과 상관없이 사용 가능!
    static func randomBackgroundColor() -> UIColor { //인스턴스 메서드
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }

}

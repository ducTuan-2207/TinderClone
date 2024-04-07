//
//  Infomation.swift
//  TinderClone
//
//  Created by macOS on 01/04/2024.
//

import Foundation

struct infoNV: Identifiable {
    var id =  UUID()
    var name: String
    var age: Int
    var image: String
    var adress: String
    var hobbies: String
    var moreInfo: String
}
var infoNVList = [
    infoNV(name: "Trần Hà Linh", age: 21, image: "1", adress: "Hà Nội", hobbies: "Nghệ Thuật", moreInfo: "Những cử chỉ âu yếm"),
    infoNV(name: "Trần Hà Linh1", age: 22, image: "2", adress: "Hà Nội", hobbies: "Nghệ Thuật", moreInfo: "Những cử chỉ âu yếm"),
    infoNV(name: "Trần Hà Linh2", age: 23, image: "3", adress: "Hà Nội", hobbies: "Nghệ Thuật", moreInfo: "Những cử chỉ âu yếm"),
    infoNV(name: "Trần Hà Linh3", age: 24, image: "4", adress: "Hà Nội", hobbies: "Nghệ Thuật", moreInfo: "Những cử chỉ âu yếm"),
    infoNV(name: "Trần Hà Linh4", age: 25, image: "5", adress: "Hà Nội", hobbies: "Nghệ Thuật", moreInfo: "Những cử chỉ âu yếm"),
    infoNV(name: "Trần Hà Linh5", age: 26, image: "6", adress: "Hà Nội", hobbies: "Nghệ Thuật", moreInfo: "Những cử chỉ âu yếm"),
    infoNV(name: "Trần Hà Linh6", age: 27, image: "7", adress: "Hà Nội", hobbies: "Nghệ Thuật", moreInfo: "Những cử chỉ âu yếm"),
   
]

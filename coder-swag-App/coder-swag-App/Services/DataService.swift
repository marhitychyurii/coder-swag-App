//
//  DataService.swift
//  coder-swag-App
//
//  Created by Юра Маргітич on 09.07.2021.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$30", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$30", imageName: "hoodie04.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$17", imageName: "hat03.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$19", imageName: "shirt05.png")
    ]
    
    private let digital = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
     func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HOODIES":
            return hoodies
        case "HATS":
            return hats
        case "SHIRTS":
            return shirts
        case "DIGITAL":
            return digital
        default:
            return [Product]()
        }
    }
    
}

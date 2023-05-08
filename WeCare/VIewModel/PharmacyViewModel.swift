//
//  PharmacyViewModel.swift
//  WeCare
//
//

import Foundation

class PharamcyViewModel: ObservableObject {
    @Published var pharmacies: [Item] = []
    private var dataFromAPI: [Item] = [
        Item(title: "elezaby", Address: "El-maadi", isCovered: true),
        Item(title: "el-baklawy", Address: "El-dokki", isCovered: false),
        Item(title: "Ali&Ali", Address: "October", isCovered: true),
        Item(title: "masr pharmacies", Address: "el tagmo3", isCovered: false),
        Item(title: "elezaby", Address: "masr el-gededa", isCovered: true)
    
    ]
    

    init() {
        getPharmacies()
    }
    
    
    func getPharmacies()  {
        pharmacies = dataFromAPI
    }
    
}

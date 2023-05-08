//
//  PharmacyViewModel.swift
//  WeCare
//
//

import Foundation

class PharamcyViewModel: ObservableObject {
    @Published var pharmacies: [Item] = []
    private var dataFromAPI: [Item] = [
        Item(title: "El Ezaby Pharmacy", Address: "14 El Hegaz St., Heliopolis, Cairo Governorate", isCovered: true),
        Item(title: "Seif Pharmacies", Address: "8 Al Haram St., Giza Square, Giza Governorate", isCovered: false),
        Item(title: "El Tahrir Pharmacy", Address: "3 El Tahrir St., Downtown, Cairo Governorate", isCovered: true),
        Item(title: "Alfa Pharmacies", Address: "9 Omar Ibn El Khattab St., Heliopolis, Cairo Governorate", isCovered: false),
        Item(title: "Roshdy Pharmacies", Address: "16 Kasr El Nil St., Downtown, Cairo Governorate", isCovered: true)
    
    ]
    

    init() {
        getPharmacies()
    }
    
    
    func getPharmacies()  {
        pharmacies = dataFromAPI
    }
    
}

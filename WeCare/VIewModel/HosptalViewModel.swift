//
//  HosptalViewModel.swift
//  WeCare
//
//

import Foundation

class HosptalViewModel: ObservableObject {
    @Published var hospitals: [Item] = []
    private var dataFromAPI: [Item] = [
        Item(title: "Air Force Specialized Hospital", Address: "Side Al Tesein Southern Street 168, Cairo, Cairo, Egypt", isCovered: true),
        Item(title: "Cairo International Hospital", Address: "106 El Tahrir St., Dokki", isCovered: false),
        Item(title: "As-Salam International Hospital", Address: "5th Settlement, New Cairo, Cairo Governorate", isCovered: true),
        Item(title: "Nasser Institute Hospital", Address: "Ahmed Nasser St., El Haram, Giza Governorate", isCovered: false),
        Item(title: "Al Salam Hospital", Address: "45 El Mehwar El Markazy, Heliopolis, Cairo", isCovered: false),
        Item(title: "Cairo Int. Hospital", Address: "106, El-Tahrir Street, El-Dokki", isCovered: false)
    ]
    

    init() {
        getHospitals()
    }
    
    
    func getHospitals()  {
        hospitals = dataFromAPI
    }
    
}

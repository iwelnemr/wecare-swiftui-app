//
//  LabViewModel.swift
//  WeCare
//
//

import Foundation

class LabViewModel: ObservableObject {
    @Published var labs: [Item] = []
    private var dataFromAPI: [Item] = [
        Item(title: "Al Mokhtabar Labs", Address: "Trivium Complex, N Teseen, New Cairo 1, Cairo", isCovered: true),
        Item(title: "Agouza Laboratory", Address: "16 El Wafaa St., Agouza, Giza Governorate", isCovered: false),
        Item(title: "El Nada Laboratory", Address: "4 El Kawthar St., Heliopolis, Cairo Governorate", isCovered: true),
        Item(title: "CairoScan Radiology and Labs", Address: "66 El Mehwar El Markazy, 1st Settlement, New Cairo", isCovered: false),
        Item(title: "Al Mokhtabar Laboratory", Address: "11 El Madina El Monawara St., 6th of October City", isCovered: false),
        Item(title: "El Nada Laboratory", Address: "4 El Kawthar St., Heliopolis, Cairo Governorate", isCovered: false)
    ]
    

    init() {
        getLabs()
    }
    
    
    func getLabs()  {
        labs = dataFromAPI
    }
    
}

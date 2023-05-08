//
//  HosptalViewModel.swift
//  WeCare
//
//

import Foundation

class HosptalViewModel: ObservableObject {
    @Published var hospitals: [Item] = []
    private var dataFromAPI: [Item] = [
        Item(title: "Air force specialized Hospital", Address: "Side el-Teseen street, New Cairo", isCovered: true),
        Item(title: "CAIRO INT. HOSPITAL", Address: "106, EL-TAHRIR STREET, EL-DOKKI", isCovered: false),
        Item(title: "AS-SALAM INT. HOSPITAL", Address: "NEW CAIRO, CAIRO, EGYPT", isCovered: true),
        Item(title: "NASR INSTITUTE HOSPITAL", Address: "EL-HARAM, GIZA", isCovered: false),
        Item(title: "AL-SALAM HOSPITAL", Address: "HELIOPOLIS, CAIRO", isCovered: false),
        Item(title: "CAIRO INT. HOSPITAL", Address: "106, EL-TAHRIR STREET, EL-DOKKI", isCovered: false)
    ]
    

    init() {
        getHospitals()
    }
    
    
    func getHospitals()  {
        hospitals = dataFromAPI
    }
    
}

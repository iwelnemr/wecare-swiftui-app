//
//  PharmacyDetails.swift
//  WeCare
//
//

import SwiftUI

struct PharmacyDetails: View {
    var body: some View {
        
        VStack{
            Text("Pharamcy Details")
                .font(.largeTitle)
            
            Image("p")
                .cornerRadius(20)
                .padding()
            VStack(alignment: .leading) {
                Text("El-ezaby Pharmacy")
                Text("14 El Hegaz St., Heliopolis, Cairo Governorate ")
                Text("FULLY COVERED")
                Text("Delivery: Available")
                Text("Number: 011xxxxxxx")
            }
            
            AuthButton(buttonText: .constant("REQUEST MEDICINE"), actionBool: .constant(false), isPressed: .constant(nil))
        }
        Spacer()
    }
}

struct PharmacyDetails_Previews: PreviewProvider {
    static var previews: some View {
        PharmacyDetails()
    }
}

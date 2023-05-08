//
//  MedicalHistoryView.swift
//  WeCare
//
//

import SwiftUI

struct MedicalHistoryView: View {
    var body: some View {
        VStack(spacing: 100){
            HStack {
                Text("Medical History")
                    .font(.largeTitle)
                Spacer()
            }
            
            AuthButton(buttonText: .constant("DIAGNOSIS"), actionBool: .constant(false), isPressed: .constant(nil))
            AuthButton(buttonText: .constant("MEDICINE"), actionBool: .constant(false), isPressed: .constant(nil))
            AuthButton(buttonText: .constant("SCAN QR CODE"), actionBool: .constant(false), isPressed: .constant(nil))
            Spacer()
            
        }
        .padding()
        .padding(.top)
    }
}

struct MedicalHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        MedicalHistoryView()
    }
}

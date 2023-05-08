//
//  LoginTF.swift
//  WeCare
//
//  26/04/2023.
//

import SwiftUI

struct LoginTF: View {
    let placeholder: String
    @Binding var text: String
  
    var body: some View {
        
        TextField(placeholder, text: $text)
            .foregroundColor(.black)
            .padding(8)
            .overlay {
                Rectangle()
                    .stroke(.black, lineWidth: 3)
            }
    }
}

struct LoginTF_Previews: PreviewProvider {
    static var previews: some View {
        LoginTF(placeholder: "Adem@gmail.com", text: .constant("Adem@gmail.com"))
    }
}

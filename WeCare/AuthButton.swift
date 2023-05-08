//
//  AuthButton.swift
//  WeCare
//
//

import SwiftUI

struct AuthButton: View {
    @Binding var buttonText: String
    @Binding var actionBool: Bool
    @Binding var isPressed: Bool?
    
    var body: some View {
        
        
        Button {
            actionBool.toggle()
            isPressed = true
        } label: {
            Text(buttonText)
                .foregroundColor(.white)
                .bold()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.black)
                .frame(width: 350)
        )

        
    }
}

struct AuthButton_Previews: PreviewProvider {
    static var previews: some View {
        AuthButton(buttonText: .constant("Login"), actionBool: .constant(false), isPressed: .constant(nil))
    }
}

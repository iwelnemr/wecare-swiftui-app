//
//  LoginView.swift
//  WeCare
//
// 26/04/2023.
//

import SwiftUI

struct LoginView: View {
    @State var emailTF: String = ""
    @State var passwordTF: String = ""
    @State var toHome = false
    @State var isPressed: Bool? = false
    var body: some View {
        
        VStack {
            Spacer()
            HStack {
                Text("Login WeCare")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                Spacer()
            }
            
            LoginTF(placeholder: "Adem@gmail.com", text: $emailTF)
                .padding(.vertical)
            
            LoginTF(placeholder: "***************", text: $passwordTF)
                .padding(.bottom)

//            if passwordTF == "" && emailTF == "" {
//                if let isPressed = isPressed, isPressed {
//                    Text("Please fill the empty fields")
//                        .foregroundColor(.red)
//                        .font(.caption2)
////                    self.isPressed!.toggle()
//                }
//            }

            
            
            NavigationLink(destination: TabViewV(), isActive: Binding<Bool>(get: { return self.toHome && (self.passwordTF != "" && self.emailTF != "") },
                set: { value in self.toHome = value }) ) {
                AuthButton(buttonText: .constant("Login"), actionBool: $toHome, isPressed: $isPressed)
            }

            
            
            Button {
                
            } label: {
                Text("REGISTER NEW ACCOUNT")
                    .foregroundColor(.black)
                    .bold()
            }
            Spacer()

        }
        .padding()
        .ignoresSafeArea()
        .background(.white)
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

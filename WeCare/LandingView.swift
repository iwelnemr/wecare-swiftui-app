//
//  LoginView.swift
//  WeCare
//
//

import SwiftUI

/* LandingView

 Displays the initial welcome screen, allowing the user to
 a) login
 b) sign up
*/

struct LandingView: View {
    @State var toLogin = false
    @State var toSignup = false
    var body: some View {

        HStack {
            Spacer()
            VStack{
                Spacer()
                Text("Welcome to WeCare")
                    .foregroundColor(.black)
                    .font(.title)
                    .bold()
                    .padding(.bottom, 100)
                
                NavigationLink(destination: SignupView(), isActive: $toSignup){
                    AuthButton(buttonText: .constant("Signup"), actionBool: $toSignup, isPressed: .constant(nil))
                }
                
                NavigationLink(destination: LoginView(), isActive: $toLogin) {
                    AuthButton(buttonText: .constant("Login"), actionBool: $toLogin, isPressed: .constant(nil))
                }
                Spacer()
            }
            Spacer()
        }
        .ignoresSafeArea()
        .background(.white)

    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}

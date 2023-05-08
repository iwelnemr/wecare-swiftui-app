//
//  ProfileView.swift
//  WeCare
//
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 50){
            HStack {
                Text("My Account")
                    .font(.largeTitle)
                Spacer()
            }
            
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("JOHN DOE")
                    Text("All state ins.")
                    Text("PREMIUM PLAN")
                    Text("INSURANCE ID: 12345678")
                }
                Spacer()
            }
            .font(.headline)
            
            
            VStack(spacing: 20) {
                AuthButton(buttonText: .constant("CHANGE PERSONAL INFORMATION"), actionBool: .constant(false), isPressed: .constant(nil))
                AuthButton(buttonText: .constant("VIEW EMERGENCY DETAILS"), actionBool: .constant(false), isPressed: .constant(nil))
                AuthButton(buttonText: .constant("VIEW DASHBOARD"), actionBool: .constant(false), isPressed: .constant(nil))
                AuthButton(buttonText: .constant("LOGOUT"), actionBool: .constant(false), isPressed: .constant(nil))
            }
            
            Spacer()
            
        }
        .padding()
        .padding(.top)    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

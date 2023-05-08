//
//  SignupView.swift
//  WeCare
//
//

import SwiftUI

struct SignupView: View {
    @State var fNameTF: String = ""
    @State var lNameTF: String = ""
    @State var pNumTF: String = ""
    @State var nIDTF: String = ""
    @State var toHome = false
    @State var insurance = ["AXA", "Aetena", "Blue Cross Blue Shield", "Cigna", "CVS", "HighMark"]
    @State var selectedOption: String? = nil
    
    var body: some View {
        VStack(spacing: 20){
            HStack{
                Text("Register")
                    .font(.largeTitle)
                Spacer()
            }
            .padding(.bottom,100)
            LoginTF(placeholder: "First Name", text: $fNameTF)
            LoginTF(placeholder: "Second Name", text: $lNameTF)
            LoginTF(placeholder: "Phone", text: $pNumTF)
            LoginTF(placeholder: "National ID", text: $nIDTF)
            DropdownMenuView(products: $insurance, pressedOption: {_ in}, selectedOption: $selectedOption, placeholder: "Insurance Company")
                .zIndex(1)
                .overlay {
                    Rectangle()
                        .stroke(.black, lineWidth: 3)
                }

            
            NavigationLink(destination: TabViewV(), isActive: $toHome){
                AuthButton(buttonText: .constant("Signup"), actionBool: $toHome, isPressed: .constant(nil))
            }
            .padding(.vertical)
            Spacer()
        }
        .padding()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}

//
//  DropdownMenuView.swift
//  WeCare
//

import SwiftUI

struct DropdownMenuView: View {
    
    @Binding var products: [String]
    let pressedOption: (_ option: String) -> Void 
    @State private var isOptionsPresented: Bool = false
    @Binding var selectedOption: String?
    let placeholder: String



    
    var body: some View {
        
        
        VStack {
            Button {
                isOptionsPresented.toggle()
            } label: {
                HStack{
                    Text(selectedOption ?? placeholder)
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color(.black))

                    
                    Spacer()
                    
                    Image(systemName: self.isOptionsPresented ? "chevron.up" : "chevron.down")
                        .foregroundColor(.black)

                }
            }
            .padding()
            .cornerRadius(10)
            .background(.white)

            
            .overlay (alignment: .top){
                VStack{
                    if isOptionsPresented{
                        Spacer(minLength: 50)
                        DropDownListView(products: $products) { option in
                            self.isOptionsPresented = false
                            selectedOption = option //must be chnaged from selected option of the viewmodel
                            self.pressedOption(option)
                        }
                        .padding(.horizontal)
                        .frame(height: CGFloat(products.count)*30)
                        .background(.white)
                        
                    }
                }
            }
        }
    
    }
}

struct DropdownMenuView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownMenuView(products: .constant(["AXA", "das"]), pressedOption: {_ in}, selectedOption: .constant(nil), placeholder: "wfe")
    }
}

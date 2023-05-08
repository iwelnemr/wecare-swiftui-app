//
//  DropDownItemView.swift
//  WeCare
//

import SwiftUI

struct DropDownItemView: View {
    
    @Binding var product: String
    let pressedOption: (_ option: String) -> Void
    
    var body: some View {
        Button {
            self.pressedOption(product)
        } label: {
            Text(product)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .font(Font.custom("Poppins-Regular", size: 14))
        .foregroundColor(.black)

    }
}

struct DropDownItemView_Previews: PreviewProvider {
    static var previews: some View {
        DropDownItemView(product: .constant("AXA"), pressedOption: {_ in})
    }
}

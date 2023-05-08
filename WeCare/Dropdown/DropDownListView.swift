//
//  DropDownListView.swift
//  WeCare
//

import SwiftUI

struct DropDownListView: View {
    
    @Binding var products: [String]
    let pressedOption: (_ option: String) -> Void
    
    var body: some View {
        
        ScrollView {
            LazyVStack{
                ForEach(products.indices) { index in
                    DropDownItemView(product: $products[index]) { option in
                        self.pressedOption(option)
                    }
                    .padding(.vertical, 5)
                }
            }
        }
    }
}

struct DropDownListView_Previews: PreviewProvider {
    static var previews: some View {
        DropDownListView(products: .constant(["AXA", "Ins"]), pressedOption: {_ in})
    }
}

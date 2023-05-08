//
//  WeCare
//
//

import SwiftUI

struct FoundationItemView: View {
    
    @Binding var item: Item
    var body: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 10){
                Text(item.title)
                
                
                Text(item.Address)
                
                Text(item.isCovered ? "FULLY COVERED" : "NOT COVERED")
            }
            Spacer()
        }
        .padding()
        
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 5, y: 3)

    }
}

struct FoundationItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoundationItemView(item: .constant(Item(title: "El-Ezaby Pharmacy", Address: "El-Maadi", isCovered: true)))
    }
}

struct Item{
    let title: String
    let Address: String
    let isCovered: Bool
}

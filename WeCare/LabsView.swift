//
//  LabsView.swift
//  WeCare
//
//

import SwiftUI

struct LabsView: View {
    @StateObject var labViewModel = LabViewModel()
    var body: some View {
        VStack{
            
            HStack {
                Text("Labs")
                    .font(.largeTitle)
                Spacer()
            }
            .padding()
            
            ScrollView{
                
                VStack{
                    ForEach(labViewModel.labs.indices){index in
                        FoundationItemView(item: $labViewModel.labs[index])
                    }

                }
                .padding()
                
                
            }
            
        }
    }
}

struct LabsView_Previews: PreviewProvider {
    static var previews: some View {
        LabsView()
    }
}

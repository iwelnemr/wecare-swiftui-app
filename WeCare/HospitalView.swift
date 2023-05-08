//
//  HospitalView.swift
//  WeCare
//
//

/* HospitalView
 
 Displays all hospitals available to the user
 
*/

import SwiftUI

struct HospitalView: View {
    @StateObject var hosptalViewModel = HosptalViewModel()

    var body: some View {
        VStack{
            
            HStack {
                Text("Hospitals")
                    .font(.largeTitle)
                Spacer()
            }
            .padding()
            
            ScrollView{
                
                VStack{
                    
                    ForEach(hosptalViewModel.hospitals.indices){index in
                        FoundationItemView(item: $hosptalViewModel.hospitals[index])
                    }
                }
                .padding()
                
                
            }
            
        }
    }
}

struct HospitalView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalView()
    }
}

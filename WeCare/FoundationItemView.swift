//
//  WeCare
//
//

import SwiftUI




struct PharmaciesView: View {
    
    @StateObject var pharmacyViewModel = PharamcyViewModel()

    var body: some View {
        VStack{
            
            HStack {
                Text("Pharamcies")
                    .font(.largeTitle)
                Spacer()
            }
            .padding()
            
            ScrollView{
                
                VStack{
                    ForEach(pharmacyViewModel.pharmacies.indices)
                        {
                            index in NavigationLink(destination: PharmacyDetails()) {
                                FoundationItemView(item: $pharmacyViewModel.pharmacies[index])
                        }

                    }
                }
                .padding()
                
                
            }
            
        }
    }
}

struct PharmaciesView_Previews: PreviewProvider {
    static var previews: some View {
        PharmaciesView()
    }
}

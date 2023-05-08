//
//  TabView.swift
//  WeCare
//
//

import SwiftUI

struct TabViewV: View {
    var body: some View {
        TabView {
            AppointmentsView()
                .tabItem {
                    Text("Appointments")
                }
            
            MedicalHistoryView()
                .tabItem {
                    Text("Medical History")
                }
            
            PharmaciesView()
                .tabItem {
                    Text("Pharmacy")
                }
            
            ProfileView()
                .tabItem {
                    Text("Profile")
                }
            
        }
        .accentColor(.black)
        .navigationBarHidden(true)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewV()
    }
}

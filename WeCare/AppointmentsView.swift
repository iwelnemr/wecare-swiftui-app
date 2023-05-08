//
//  AppointmentsView.swift
//  WeCare
//
//

import SwiftUI

/* AppointmentsView

 Allows user to select page for appointments for
 a) Hospitals
 b) Labs
 
*/

struct AppointmentsView: View {
    @State var toLabs = false
    @State var toHospitals = false
    var body: some View {
        VStack(spacing: 130){
            HStack {
                Text("Appointments")
                    .font(.largeTitle)
                Spacer()
            }
            
            NavigationLink(destination: HospitalView(), isActive: $toHospitals){
                AuthButton(buttonText: .constant("HOSPITALS"), actionBool: $toHospitals, isPressed: .constant(nil))
            }
            NavigationLink(destination: LabsView(), isActive: $toLabs){
                AuthButton(buttonText: .constant("LABS"), actionBool: $toLabs, isPressed: .constant(nil))
            }
            Spacer()
            
        }
        .padding()
        .padding(.top)

    }
}

struct AppointmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentsView()
    }
}

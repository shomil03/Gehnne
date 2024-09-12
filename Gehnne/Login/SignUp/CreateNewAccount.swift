//
//  CreateNewAccount.swift
//  Gehnne
//
//  Created by Shomil Singh on 26/08/24.
//

import SwiftUI

struct CreateNewAccount: View {
    @State private var firstName : String = ""
    @State private var lastName : String = ""
    @State private var email : String = ""
    @State private var gst : String = ""
    @State private var password : String = ""
    @State private var address1 : String = ""
    @State private var address2 : String = ""
    @State private var address3 : String = ""
    var body: some View {
        NavigationStack{
            VStack{
                TopView(heading: "Create Account", details: "Please fill form to continue")
                Form{
                    Section("Personal details"){
                        TextField("First Name" , text: $firstName)
                        TextField("Last Name" , text: $lastName)
                    }
                    Section("Login details"){
                        TextField("email", text: $email)
                        TextField("password" , text: $password)
                    }
                    Section("Business details"){
                        TextField("Shop address Line 1", text: $address1)
                        TextField("Shop address Line 2", text: $address2)
                        TextField("Shop address Line 3", text: $address3)
                        TextField("GST number" , text: $gst)
                    }
                }
                .scrollDisabled(true)
                
                NavigationLink(destination: ContentUnavailableView("Not available right now", image: ""), label:{
                    
                    ButtonView(title: "Sign up", image: "")
                        .foregroundStyle(Color.white)
                })
                .padding()
                
            }
        }
    }
}

#Preview {
    CreateNewAccount()
}

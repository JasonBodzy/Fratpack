//
//  ContentView.swift
//  Fratpack
//
//  Created by Jason Bodzy on 5/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var login = false
    @State var createaccount = false
    var body: some View {
        if (!login && !createaccount) {
            VStack {
                Image("Logo")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.size.width / 2, height: UIScreen.main.bounds.size.width / 2, alignment: .center)
                Text("Login")
                    .foregroundColor(.blue)
                    .padding(.bottom)
                    .onTapGesture {
                        login = true
                    }
                Text("Create Account")
                    .foregroundColor(.blue)
                    .onTapGesture {
                        createaccount = true
                    }

            }
        }
        
        if (login) {
            LoginView()
        }
        
        if (createaccount) {
            CreateAccountView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Profile.swift
//  GithubClient
//
//  Created by Rod Muñoz on 10/7/26.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Perfil de Usuario")
            }
            .navigationTitle("Perfil")
        }
    }
}

#Preview {
    Profile()
}

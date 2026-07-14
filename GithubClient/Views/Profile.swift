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
            VStack (alignment: .leading){
                Text("Rod Muñoz")
                    .font(.title)
                Image(uiImage: .imageNotFound)
                    .resizable()
                    .scaledToFit()
                Text("Rodcraxker")
                    .font(.headline)
                    .padding(.top)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                    .font(.caption)
                    
            }
            .navigationTitle("Perfil")
        }
    }
}

#Preview {
    Profile()
}

//
//  RepoItem.swift
//  GithubClient
//
//  Created by Rod Muñoz on 14/7/26.
//

import SwiftUI

struct RepoItem: View {
    
    let repository: Repository
    
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: repository.owner.avatarUrl)){image in
                image
                    .resizable()
                    .scaledToFill()
            }placeholder: {
                Image(uiImage: .imageNotFound)
                    .resizable()
                    .scaledToFit()
            }
            .frame(width:80, height: 80)
            .padding(.trailing)
            
            VStack (alignment: .leading){
                Text(repository.name)
                    .font(.title2)
                if let description = repository.description {
                    Text(description)
                        .font(.caption)
                }
                if let language = repository.language{
                    HStack{
                        Text("language")
                            .font(.caption)
                        Text(language)
                            .font(.caption)
                        
                    }
                }
            }
        }
    
    }
}


#Preview {
    RepoItem(
        repository: Repository(
            id: 1,
            name: "GithubClient",
            description: "Cliente GitHub en SwiftUI",
            language: "Swift",
            owner: Userinfo(
                login: "pabloperez",
                name: "Pablo Pérez",
                avatarUrl: "https://cdn-icons-png.flaticon.com/512/9187/9187604.png",
                bio: nil
            )
        )
    )
}

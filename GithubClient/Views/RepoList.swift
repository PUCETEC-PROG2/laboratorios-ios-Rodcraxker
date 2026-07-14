//
//  RepoList.swift
//  GithubClient
//
//  Created by Rod Muñoz on 10/7/26.
//

import SwiftUI

struct RepoList: View {
    
    private var repolist = Repository.sampleData
    
    var body: some View {
        NavigationStack{
            Group{
                List(repolist){ repo in
                    RepoItem(repository: repo)
                }
            }
            .navigationTitle("Repositorios")
        }
    }
}

#Preview {
    RepoList()
}

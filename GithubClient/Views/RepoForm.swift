//
//  RepoForm.swift
//  GithubClient
//
//  Created by Rod Muñoz on 10/7/26.
//

import SwiftUI

struct RepoForm: View {
    
    @State private var reponame: String = ""
    @State private var repodescription: String = ""
    
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                TextField("Nombre de repositorio", text: $reponame)
                                    .textFieldStyle(.roundedBorder)
                                    .padding(.vertical)
                                
                TextField("Descripcion de repositorio", text: $repodescription,
                          axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(6...10)
                    .padding(.vertical)
                    
                Spacer()
                
                HStack{
                    Button(action: {
                        print ("Boton Aplastado")
                    }){
                        Label("CANCELAR", systemImage: "xmark.circle")
                            
                            .padding(.all, 10)
                            .foregroundStyle(.red)
                    }
                    .buttonStyle(.bordered)
                    
                    
                    Button(action: {
                        print ("Boton Aplastado")
                    }){
                        Label("GUARDAR", systemImage: "square.and.arrow.down")
                            
                            .padding(.all, 10)
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .navigationTitle("Formulario")
        }
    }
}

#Preview {
    RepoForm()
}

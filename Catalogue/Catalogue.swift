//
//  Catalogue.swift
//  Catalogue
//
//  Created by apprenant007 on 13/05/2022.
//

import SwiftUI


struct ListCatalogue: View{
    @EnvironmentObject var alimentsClass: Aliments
    
    
    
    @State private var searchText = ""
    var searchResults: [Pet] {
        if searchText.isEmpty {
            return alimentsClass.aliments
        } else {
            return alimentsClass.aliments.filter { aliment in
                aliment.name.lowercased().contains(searchText.lowercased()) || aliment.race.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View{
        
        ZStack {
            
            
            ScrollView {
                
                Image(systemName: "")
                ForEach(searchResults){ aliment in
                    
                    NavigationLink(destination: Detail(aliment: aliment)){
                        ZStack{
                            Rectangle()
                                .frame(height: 150.0)
                                .foregroundColor(.orange)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                            HStack{
                                Image(aliment.images)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 150.0, height: 150.0)
                                Spacer()
                                
                                Text(aliment.name)
                                    .foregroundColor(.black)
                                Spacer()
                            }
                            .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
                .navigationTitle("Tchap'Et")
                .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Recherche")
                
                
            }
        }
    }
}

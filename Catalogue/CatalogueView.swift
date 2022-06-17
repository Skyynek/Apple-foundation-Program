//
//  ContentView.swift
//  Catalogue
//
//  Created by apprenant007 on 10/05/2022.
//

import SwiftUI

struct CatalogueView: View {

    @StateObject var alimentsClass = Aliments()
    
    var body: some View {
        TabView{
            NavigationView{

                    ListCatalogue()
            
                
                
            }.tint(.white)
            .tabItem{
                Image(systemName: "list.bullet.rectangle.fill")
                Text("Catalogue")
            }
            VStack{
                ComparatifsView()
            }
            .tabItem{
                Image(systemName: "checklist")
                Text("Comparatifs")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
            }
            
                VStack{
                ScanView()
                }
                    .tabItem{
                        Image(systemName: "scanner.fill")
                        Text("Scanner")
                    }
                

            
            
            //        List(aliments){ aliment in
            //            ForEach(Array(aliment.detail.keys), id: \.self) { key in
            //                Text("\(key) et \(aliment.detail[key] ?? 0)")
            //            }
            //
            //
            //        }
            
            
        }
        .environmentObject(alimentsClass)
        
        
    }

}

struct CatalogueView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogueView()
    }
}




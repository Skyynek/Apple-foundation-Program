//
//  Comparatif.swift
//  Catalogue
//
//  Created by apprenant007 on 12/05/2022.
//

import SwiftUI
// Marco !!!!!
struct ComparatifsView: View {
    @State var count = 0
    @EnvironmentObject var alimentsClass: Aliments
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                ZStack {
                    Color.orange
                        .ignoresSafeArea()
                        .frame(width: 900.0, height: 900.0)
                    
                    
                    //                Text("Comparatifs")
                    //                    .font(.largeTitle)
                    //                    .bold()
                    //                    .foregroundColor(.white)
                    //                    .padding(.bottom, 230.0)
                    //                    .position(x: 440, y: 150)
                    VStack(alignment: .leading) {
                        
                        ForEach(animaux, id: \.self) { animal in
                            NavigationLink(destination: ComparateurView(race: animal, count: count)){
                                HStack {
                                    Text(animal)
                                        .foregroundColor(.orange)
                                        .bold()
                                        .font(.title)
                                        .padding(20)
                                        .frame(minWidth: 239)
                                        .background(.white)
                                        .cornerRadius(20)
                                    //                                .frame(minWidth: 230)
                                        .padding(15)
                                    //                                .overlay(RoundedRectangle(cornerRadius: 30)
                                    //                                    .stroke(Color.teal, lineWidth: 5))
                                    //                                .shadow(color: .black, radius: 20, x: 10, y: 10)
                                    ZStack{
                                    Circle()
                                            .foregroundColor(.white)
                                            .frame(width: 40.0, height: 40.0)
                                            
                                    Text("\(alimentsClass.listeAliments.filter({$0.race == animal}).count)")
                                        .foregroundColor(.orange)
                                }
                                }
                                .navigationBarTitle("Comparatif")
                            }
                        }
                    }
                }
            }
        }
    }
}


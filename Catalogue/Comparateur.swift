//
//  Comparateur.swift
//  Catalogue
//
//  Created by apprenant007 on 12/05/2022.
//

import SwiftUI
// Herman
struct ComparateurView : View {
    
    @EnvironmentObject var alimentsClass: Aliments
    
    var race: String
    @State var alimentCompare1: Pet?
    @State var alimentCompare2: Pet?
    @State var count : Int
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
            
            VStack {
                
                
                ScrollView {
                    ForEach(alimentsClass.listeAliments){ aliment in
                        
                        if aliment.race == race {
                            
                            
                            
                            Button{
                                
                                
                                if alimentCompare1 == nil && alimentCompare2?.id != aliment.id {
                                    alimentCompare1 = aliment
                                } else if alimentCompare2 == nil && alimentCompare1?.id != aliment.id{
                                    alimentCompare2 = aliment
                                } else if alimentCompare1?.id == aliment.id {
                                    alimentCompare1 = nil
                                } else if alimentCompare2?.id == aliment.id {
                                    alimentCompare2 = nil
                                } else if alimentCompare1?.id == aliment.id && alimentCompare2?.id == aliment.id {
                                    
                                }
                                count += 1
                                
                            }label : {
                                Spacer()
                                HStack{
                                    Spacer()
                                    Text("\(aliment.name)")
                                        .foregroundColor(.white)
                                        .bold()
                                    Spacer()
                                    Image(aliment.images)
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .background(.white)
                                        .cornerRadius(30)
                                   

                                    Button{
                                        if aliment.id == alimentCompare1?.id{
                                            alimentCompare1 = nil
                                        } else if aliment.id == alimentCompare2?.id{
                                            alimentCompare2 = nil
                                        }
                                        alimentsClass.listeAliments.removeAll { ali in
                                            aliment.id == ali.id
                                        }
                                    }label: {
                                        Image(systemName: "trash.fill")
                                    }
                                    
                                }
                                .border(alimentCompare1?.id == aliment.id || alimentCompare2?.id == aliment.id ? Color.white :  Color("Marco"),  width: 5)
                                Spacer()
                            }
                            
                        }
                        
                        
                    }
                }
                
                if alimentCompare1 != nil && alimentCompare2 != nil {
                    NavigationLink(destination: AlimentFight(compare1: alimentCompare1!, compare2: alimentCompare2!))
                    {
                        Text("Comparer")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding()
                            .background(.white)
                            .cornerRadius(30)
                    }
                }
            }
        }
        
    }
}


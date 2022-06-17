//
//  AlimentFight.swift
//  Catalogue
//
//  Created by apprenant007 on 16/05/2022.
//

import SwiftUI

struct AlimentFight : View {
    
    var compare1: Pet
    var compare2: Pet
    
    var body: some View{
        ZStack{
            Color.orange
                .ignoresSafeArea()
        VStack{
            Text("Comparaison")
                .font(.largeTitle)
                .fontWeight(.bold)
           
            Spacer()
            HStack{
                Spacer()
                VStack{
                    Text(compare1.name)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Image(compare1.images)
                        .resizable()
                        .frame(width: 150.0, height: 150.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    Text("Prix: \(Int(compare1.prix)) €")
                    StarView(note: compare1.note)
                }
                VStack{
                    
                    
                    ForEach(Array(compare1.detail.keys).sorted(by: <), id: \.self) { key in
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .padding(.vertical, -3.0)
                                .frame(width: 200.0, height: 40.0)
                                .foregroundColor(.white)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                            Text("\(key) \(Int(compare2.detail[key] ?? 0)) %")
                                .foregroundColor(.orange)
                        }
                    }
                }
            }
            Spacer()
        Divider()
    
            Spacer()
            
            HStack{
                Spacer()
                VStack{
                    Text(compare2.name)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Image(compare2.images)
                        .resizable()
                        .frame(width: 150.0, height: 150.0)
                    Text("Prix: \(Int(compare2.prix)) €")
                    StarView(note: compare2.note)
                    
                }
                VStack{
                    ForEach(Array(compare2.detail.keys).sorted(by: <), id: \.self) { key in
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .padding(.vertical, -3.0)
                                .frame(width: 200.0, height: 40.0)
                                .foregroundColor(.white)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                            Text("\(key) \(Int(compare2.detail[key] ?? 0)) %")
                                .foregroundColor(.orange)
                        }
                    }
                }
            }
            Spacer()
            
        }
        }
        }
}


struct AlimentFight_Previews: PreviewProvider {
    static var previews: some View {
        let aliments = Aliments()
        AlimentFight(compare1:  aliments.aliments[0], compare2:  aliments.aliments[1])
        
    }
}

//
//  Detail.swift
//  Catalogue
//
//  Created by apprenant007 on 11/05/2022.
//

import SwiftUI

struct Detail: View {
    @State var isPresentingScanner = false
    @EnvironmentObject var alimentsClass: Aliments
    var aliment: Pet
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [.orange], startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea(.all)
            VStack{
                Text(aliment.name)
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
                Image(aliment.images)
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    .background(.white)
                    .cornerRadius(20)
                HStack{
                    VStack{
                        HStack{
                            Spacer()
                            StarView(note: aliment.note)
                            
                            Spacer()
                            Text("\(Int(aliment.prix)) €")
                            Spacer()
                            Button{
                                if alimentsClass.listeAliments.contains(where: { $0.id == aliment.id }) {
                                    showingAlert = true
                                }else {
                                    alimentsClass.listeAliments.append(aliment)
                                }
                                
                                
                                
                            } label: {
                                Text("Ajouter")
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .padding()
                                    .background(.white)
                                    .cornerRadius(30)
                            }.alert("Le produit est deja dans la liste", isPresented: $showingAlert) {
                                Button("OK", role: .cancel) { }
                            }
                            Spacer()
                            
                        }
                        ForEach(Array(aliment.detail.keys).sorted(by: <), id: \.self) { key in
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 300, height: 50)
                                    .foregroundColor(Color.white)
                                HStack {
                                    Text("\(key) \(Int(aliment.detail[key] ?? 0)) %")
                                        .foregroundColor(.orange)
                                        .bold()
                                    Spacer()
                                    if key == "Proteine" {
                                        switch Int(aliment.detail[key]!) {
                                        case 0...25 :Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.red)
                                            
                                        case 26...49 :Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.orange)
                                            
                                        case 50 : Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.green)
                                        default: Text("?")
                                        }
                                    } else if key == "Lipide" {
                                        switch Int(aliment.detail[key]!) {
                                        case 0...25 :Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.green)
                                            
                                        case 26...49 :Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.orange)
                                            
                                        case 50 : Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.red)
                                        default: Text("?")
                                        }
                                    }
                                    else if key == "Matière inorganique" {
                                        switch Int(aliment.detail[key]!) {
                                        case 0...2 :Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.orange)
                                            
                                        case 3...15:Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.green)
                                            
                                        case 50 : Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.red)
                                        default: Text("?")
                                        }
                                    }
                                    else if key == "Fibre" {
                                        switch Int(aliment.detail[key]!) {
                                        case 0...9 :Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.orange)
                                        case 10...45:Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.green).position(x: 150, y:5)
                                            
                                        case 45...100:Circle()
                                                .frame(width: 20.0, height: 20)
                                                .foregroundColor(Color.red)
                                        default: Text("?")
                                        }
                                    }
                                }
                                .frame(width: 250.0, height: 10.0)
                                
                            }
                            
                        }
                        Button {
                            self.isPresentingScanner = true
                        } label: {
                            Text("Composition")
                                .font(.title)
                                .foregroundColor(.black)
                            
                        }
                        .sheet(isPresented: $isPresentingScanner) {
                            ZStack{
                                Color.orange
                                        .ignoresSafeArea()
                                VStack{
                                    Spacer()
                                    Text("Composition:")
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        
                                    Spacer()
                            
                            Text(aliment.composition)
                                    Spacer()
                                }.frame(width: 340.0)
                            }
                        }
                        
                    }
                    Spacer()
                }
            }
        }
        
    }
    
}
//    var body: some View{
//        VStack{
//            Text(aliment.name)
//            Image(aliment.images)
//                .resizable()
//                .frame(width: 150.0, height: 100.0)
//            HStack{
//                Text("Le prix est de \(aliment.prix)")
//                Spacer()
//                Button("Ajouter"){
//                    if alimentsClass.listeAliments.contains(where: { $0.id == aliment.id }) {
//                        showingAlert = true
//                    }else {
//                        alimentsClass.listeAliments.append(aliment)
//                    }
//
//
//
//                }
//            }
//            .alert("Le produit est deja dans la liste", isPresented: $showingAlert) {
//                        Button("OK", role: .cancel) { }
//                    }
//            Spacer()
//                ForEach(Array(aliment.detail.keys), id: \.self) { key in
//                    VStack{
//                        Text("\(key) et \(aliment.detail[key] ?? 0)")
//
//
//
//                    }
//                }
//
//
//
//        }
//    }


struct StarView: View {
    var note: Int
    var body: some View {
        HStack {
            ForEach(0..<5){ i in
                if i < note{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star")
                    
                }
            }
        }
    
    }
}



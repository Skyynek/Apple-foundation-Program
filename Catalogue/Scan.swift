//
//  Scan.swift
//  Catalogue
//
//  Created by apprenant007 on 13/05/2022.
//

import SwiftUI

struct ScanView: View {
    @State var isPresentingScanner = false
    @State var scannedCode = "Le scan du QR Code va commencer"
    @State var addCatalogue = false
    var body: some View {
        VStack {
            VStack {
                Spacer()
            Button {
                self.isPresentingScanner = true
            } label: {
                Text("Scan QR Code")
                    .font(.title)
                    .foregroundColor(.orange)
                    .padding()
            }
            }
            .sheet(isPresented: $isPresentingScanner) {
                Image(systemName: "rectangle.arrowtriangle.2.inward")
                ZStack {
                    Color.orange
                    Image(systemName: "qrcode.viewfinder")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 180.0, height: 180.0)
                    Button {

                    } label: {
                        Image(systemName: "note.text.badge.plus")
                            .resizable()
                            .position(x: 200, y: 290)
                            .frame(width: 42.0, height: 40.0)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
               Text(scannedCode)
            }
        }
    }
}

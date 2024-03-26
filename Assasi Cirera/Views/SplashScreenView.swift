//
//  SplashScreenView.swift
//  Assasi Cirera
//
//  Created by Alex Navarro Termens on 26/3/24.
//

import SwiftUI

struct SplashScreenView: View {

    @Binding var isPresented: Bool

    @State private var opacity = 1.0
    @State private var scale = CGSize(width: 0.5, height: 0.5)

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                Image("Cirera")
                    .resizable()
                    .scaledToFit()
                    .opacity(opacity)
                    .frame(width: 350, height: 350)
                    .padding(-15)
                    .scaleEffect(scale)
                    .contrast(10)
                Text("ASSASÍ \n DE LA CIRERA").font(.custom("LilitaOne", size: 40))
                    .multilineTextAlignment(.center)
                    .hoverEffect()
            }
            .scaleEffect(scale)


        }
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeInOut(duration: 1)) {
                scale = CGSize(width: 1, height: 1)
                opacity = 1
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
                withAnimation(.easeIn(duration: 2)) {
                    scale = CGSize(width: 50, height: 50)
                    opacity = 0
                }
            })

            DispatchQueue.main.asyncAfter(deadline: .now() + 2.8, execute: {
                withAnimation(.easeIn(duration: 0.2)) {
                    isPresented.toggle()
                }
            })
        }
    }
}

#Preview {
    SplashScreenView(isPresented: .constant(false))
}

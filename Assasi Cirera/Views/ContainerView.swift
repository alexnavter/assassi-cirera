//
//  ContainerView.swift
//  Assasi Cirera
//
//  Created by Alex Navarro Termens on 26/3/24.
//

import SwiftUI

struct ContainerView: View {

    @State private var isSplashScreenViewPresented = true

    var body: some View {

        if !isSplashScreenViewPresented {
            ContentView()
        } else {
            SplashScreenView(isPresented: $isSplashScreenViewPresented)
        }

    }
}

#Preview {
    ContainerView()
}

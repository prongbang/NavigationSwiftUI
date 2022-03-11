//
//  AppNavBarView.swift
//  NavigationSwiftUI
//
//  Created by Endtry on 9/10/2564 BE.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink {
                    Text("Destination")
                        .customNavigationTitle("Second Screen")
                        .customNavigationSubtitle("Subtitle")
                } label: {
                    Text("Navigate")
                }

            }
            .customNavigationTitle("Custom Title")
            .customNavigationSubtitle("Subtitle")
            .customNavigationBackButtonHidden(true)
        }
    }
}

extension AppNavBarView {
    
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink {
                    Text("Destinatino")
                        .navigationTitle("Title 2")
                        .navigationBarBackButtonHidden(false)
                } label: {
                    Text("Navigation")
                }

            }
        }
        .navigationTitle("Nav title")
    }
    
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

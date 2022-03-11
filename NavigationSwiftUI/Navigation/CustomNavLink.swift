//
//  CustomNavLink.swift
//  NavigationSwiftUI
//
//  Created by Endtry on 9/10/2564 BE.
//

import SwiftUI

//struct NavigationLink<Label, Destination> : View where Label : View, Destination : View {
//
//}

struct CustomNavLink<Label: View, Destination: View>: View {
    
    let destination: Destination
    let label: Label
    
    init(@ViewBuilder destination: () -> Destination, @ViewBuilder label: () -> Label) {
        self.destination = destination()
        self.label = label()
    }
    
    var body: some View {
        NavigationLink {
            CustomNavBarContainerView {
                destination
            }
            .navigationBarHidden(true)
        } label: {
            label
        }
    }
}

struct CustomNavLink_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavView {
            CustomNavLink {
                Text("Destinatino")
            } label: {
                Text("Navigation")
            }
        }
    }
}

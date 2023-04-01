//
//  NavigationViewPractice.swift
//  TheStacks
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import Foundation
import SwiftUI

struct NavigationViewPractice: View {
    var body: some View {
    NavigationView() {
            VStack{
                NavigationLink(destination: ButtonViewPractice()){
                    Text("Buttons")
                }
                
                NavigationLink(destination: EditButtonViewPractice()) {
                    Text("EditButtons")
                        .padding()
                }
                NavigationLink(destination: MenuButtonViewPractice()) {
                    Text("MenuButtons")
                        .padding()
                }
                NavigationLink(destination: PasteButtonViewPractice()) {
                    Text("PasteButtons")
                        .padding()
                }
                NavigationLink(destination:
                    Text("Very long text that should not be displayed in a single line because it is not good design")
                    .padding(.trailing)
                    .navigationBarTitle(Text("Detail"))
                ) {
                    Text("details about text")
                        .padding()
                }
                
            }.navigationBarTitle(Text("Main View"), displayMode: .inline)
        }
    }
}

struct NavigationViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewPractice()
    }
}

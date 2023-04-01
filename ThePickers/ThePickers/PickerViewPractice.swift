//
//  PickerViewPractice.swift
//  ThePickers
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import Foundation
import SwiftUI

struct PickerViewPractice : View {
    @State var choice = 0
    @State var showText = false
    @State var transitModes = ["Bike","Car","Bus","Plane","Train","Drain"]
    @State var sliderVal: Float = 0
    @State var stepVal: Float = 0
    @State var gameTime = Date()
    var body: some View{
        VStack{
            Text("Pickers")
            Form{
                Section{
                    Picker("Transit Modes: ",selection: $choice){
                        ForEach(0 ..< transitModes.count){
                            index in
                            Text("\(self.transitModes[index])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    Text("Current Choice: \(transitModes[choice])")
                }
                Section{
                    Toggle(isOn: $showText){
                        
                    }
                    if showText {
                        Text("The toggle is on")
                    }
                }
                Section{
                    Slider(value: $sliderVal,  in: 0...10, step:0.001)
                    Text("Slider current value\(sliderVal, specifier:"%.1f")")
                    
                }
                Section{
                    Stepper("Stepper", value: $stepVal, in: 0...5)
                    Text("Stepper current value \(stepVal)")
                }
                Section{
                    DatePicker("Please select a date", selection: $gameTime, in:...Date())
                }
                Section{
                    DatePicker("Please select a date", selection: $gameTime, in:Date()...)
                }.pickerStyle(SegmentedPickerStyle())
            }
        }
    }
}


struct PickerViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        PickerViewPractice().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

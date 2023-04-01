//
//  ImageViewPractice.swift
//  TheStacks
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import Foundation
import SwiftUI

struct ImageViewPractice : View {
    
    var body: some View {
        VStack{
            Image("dogs1").resizable().aspectRatio(contentMode: .fit)
            Image("dog-and-nature").resizable().aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue,lineWidth:2))
                .shadow(radius: 10)
            Image(uiImage: getImageFromUIImage(image: "dog2"))
                .resizable()
            frame(width: 200, height: 100)
                .aspectRatio(contentMode: .fit)
        }
    }
    
    func getImageFromUIImage(image:String) -> UIImage {
        guard let img = UIImage(named: image) else {
            fatalError("Unable to load image")
        }
        return img
    }
}
struct ImageViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewPractice().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
    
  
}

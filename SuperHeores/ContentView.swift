//
//  ContentView.swift
//  SuperHeores
//
//  Created by MacBook J&J  on 30/12/21.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(superHereo){ item in
                NavigationLink(destination: DescriptionSuperHeoreView(items: item)){
                    HStack(spacing: 30){
                        ImageSuperHeoreView(image: item, width: 100, height: 100, alignment: .leading)
                        Text(item.name)
                            .fontWeight(.black).font(.title2)
                    }
                }
            }.navigationTitle("Super heores")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

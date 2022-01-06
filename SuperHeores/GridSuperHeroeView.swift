//
//  GridSuperHeroeView.swift
//  SuperHeores
//
//  Created by MacBook J&J  on 3/01/22.
//

import SwiftUI

struct GridSuperHeroeView: View {
    let gridItems: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 30){
                    ForEach(superHereo) { item in
                        NavigationLink(destination: DescriptionSuperHeoreView(items: item)){
                            VStack{
                                ImageSuperHeoreView(image: item, width: 200, height: 200, alignment: .center)
                                Text(item.name)
                            }
                        }
                    }
                }
            }.navigationTitle("Super Heores")
        }
    }
}

struct GridSuperHeroeView_Previews: PreviewProvider {
    static var previews: some View {
        GridSuperHeroeView()
    }
}

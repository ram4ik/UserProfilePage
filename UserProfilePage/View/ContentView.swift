//
//  ContentView.swift
//  UserProfilePage
//
//  Created by ramil on 26.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI
import ASCollectionView

struct ContentView: View {
    @ObservedObject var viewModel = PostViewModel()
    
    var body: some View {
        VStack {
            ProfileHeader()
            
            ASCollectionView(data: viewModel.posts) { (post, _) in
                PostCell(post: post)
            }
            .layout(self.layout)
            .alwaysBounceVertical()
            .padding(.top, -54)
            .edgesIgnoringSafeArea(.all)
            .shadow(color: .white, radius: 20, x: 0, y: 0)
        }
    }
    
    var layout: ASCollectionLayout<Int> {
        ASCollectionLayout(scrollDirection: .vertical, interSectionSpacing: 0) {
             ASCollectionLayoutSection {
                // width of cell
                let width = NSCollectionLayoutDimension.fractionalWidth(1 / 3)

                // layout size
                let layoutSize = NSCollectionLayoutSize(widthDimension: width, heightDimension: .fractionalHeight(1.0))

                // item
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)
                
                // insets
                let inset = CGFloat(0.5)
                item.contentInsets = NSDirectionalEdgeInsets(top: inset, leading: inset, bottom: inset, trailing: inset)
                
                // item size
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: width)

                // item group
                let itemGroup = NSCollectionLayoutGroup.horizontal(layoutSize: itemSize, subitems: [item])

                // return section
                return NSCollectionLayoutSection(group: itemGroup)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

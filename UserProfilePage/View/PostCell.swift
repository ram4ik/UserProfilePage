//
//  PostCell.swift
//  UserProfilePage
//
//  Created by ramil on 26.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct PostCell: View {
    let post: Post
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image(self.post.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
            }
        }
    }
}


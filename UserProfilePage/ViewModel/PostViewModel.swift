//
//  PostViewModel.swift
//  UserProfilePage
//
//  Created by ramil on 26.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class PostViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        posts.append(Post(id: 1, imageName: "s1"))
        posts.append(Post(id: 2, imageName: "s2"))
        posts.append(Post(id: 3, imageName: "s3"))
        posts.append(Post(id: 4, imageName: "s4"))
        posts.append(Post(id: 5, imageName: "s5"))
        posts.append(Post(id: 6, imageName: "s6"))
        posts.append(Post(id: 7, imageName: "s7"))
        posts.append(Post(id: 8, imageName: "s8"))
        posts.append(Post(id: 9, imageName: "s9"))
        posts.append(Post(id: 10, imageName: "s1"))
        posts.append(Post(id: 11, imageName: "s2"))
        posts.append(Post(id: 12, imageName: "s3"))
        posts.append(Post(id: 13, imageName: "s4"))
        posts.append(Post(id: 14, imageName: "s5"))
        posts.append(Post(id: 15, imageName: "s6"))
        posts.append(Post(id: 16, imageName: "s7"))
        posts.append(Post(id: 17, imageName: "s8"))
        posts.append(Post(id: 18, imageName: "s9"))
        posts.append(Post(id: 19, imageName: "s1"))
        posts.append(Post(id: 20, imageName: "s2"))
        posts.append(Post(id: 21, imageName: "s3"))
        posts.append(Post(id: 22, imageName: "s4"))
        posts.append(Post(id: 23, imageName: "s5"))
        posts.append(Post(id: 24, imageName: "s6"))
        posts.append(Post(id: 25, imageName: "s7"))
        posts.append(Post(id: 26, imageName: "s8"))
        posts.append(Post(id: 27, imageName: "s9"))
    }
}

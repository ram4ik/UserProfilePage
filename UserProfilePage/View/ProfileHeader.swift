//
//  ProfileHeader.swift
//  UserProfilePage
//
//  Created by ramil on 26.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ProfileHeader: View {
    let gradient = Gradient(colors: [Color.green, Color.blue])
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Group {
                        Image("snake")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .shadow(color: .black, radius: 20, x: 0, y: 0)
                        
                        Text("Mac Gargan")
                            .font(.system(size: 42))
                            .bold()
                            .foregroundColor(Color.white)
                            .shadow(color: Color.black, radius: 20, x: 0, y: 0)
                        
                        Text("@Venom")
                            .font(.system(size: 22))
                            .bold()
                            .foregroundColor(Color.white)
                            .shadow(color: Color.black, radius: 20, x: 0, y: 0)
                    }
                }
                    
                Spacer()
            }
            Spacer()
        }.background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
    }
}

//
//  InfoView.swift
//  
//
//  Created by Neil Luong on 4/4/23.
//

import SwiftUI

struct InfoView: View {
    let bomb: Bomb
    
    var body: some View {
        VStack{
            ScrollView{
                Text(bomb.moreInfo)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .lineSpacing(10)
            .foregroundColor(Color.black)
            .padding()
            .background(.gray)
            
        }
    }
}


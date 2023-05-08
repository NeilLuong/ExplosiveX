//
//  DisclaimerView.swift
//  
//
//  Created by Neil Luong on 4/3/23.
//

import SwiftUI

struct DisclaimerView: View {
    @Binding var isShowingDisclaimerView: Bool
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle().background(.black)
                VStack {
                    Text("Disclaimer")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    Text("This app is intended solely for educational purposes and is not intended to encourage or condone any illegal or harmful activities. The information provided in this app is designed to be informative and provide an overview of different types of bombs, their history, and their uses. It is not intended to be used as a guide for replication or recreation of these devices.\nThe creators of this app take no responsibility for any misuse or harm caused by the information provided. It is the responsibility of the user to ensure that they use this app in a responsible and ethical manner. Any attempts to replicate or recreate any of the bombs described in this app are strictly prohibited and can result in serious legal and personal consequences.\n\nBy using this app, you acknowledge that you are using it for educational purposes only and agree to use the information provided in a responsible and ethical manner.")
                        .padding(10)
                        .foregroundColor(.white)
                    
                    Button {
                        withAnimation {
                            isShowingDisclaimerView.toggle()
                        }
                    } label: {
                        Text("I understand")
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
            
        }
    }
}

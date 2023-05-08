//
//  MainView.swift
//  
//
//  Created by Neil Luong on 4/5/23.
//

import SwiftUI

let INITIAL_BOMB_Y: CGFloat = -150
let BOMB_FALL_ANIMATION_DURATION = 0.5
let DESTINATION_Y = 190.0
let TOTAL_DISTANCE = abs(INITIAL_BOMB_Y - DESTINATION_Y)
let BOMB_SCENE_NAME = "Pegasus_XL.scn"

struct MainView: View {
    @State var bombLocationDrop: String = "hiroshima1"
    @State var dateFormatter = DateFormatter()
    
    @State var selectedBombImageName = "LittleBoy"
    
    @State var bombFallingTimer: Timer?
    @State var explosionTimer: Timer?
    
    @State var bombPosition = CGPoint(x: UIScreen.main.bounds.width / 2, y: INITIAL_BOMB_Y)
    
    @State private var isShowingExplosion = false
    
    func runEveryMillisecond(for duration: TimeInterval, character: String, action: @escaping () -> Void, beforeFinished: @escaping () -> Void, finished: @escaping () -> Void) {
        
        if (character == "BOMB") {
            if (bombFallingTimer != nil && bombFallingTimer!.isValid) {
                return
            }
        }
        else if (character == "EXPLOSION") {
            if (explosionTimer != nil && explosionTimer!.isValid) {
                return
            }
        }
        
        var elapsedTime: TimeInterval = 0.0
        var triggeredBeforeFinish = false
        
        if (character == "BOMB") {
            bombFallingTimer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true) { _ in
                action()
                elapsedTime += 0.001
                
                if !triggeredBeforeFinish && elapsedTime >= duration - 0.01 {
                    beforeFinished()
                    triggeredBeforeFinish = true
                }
                
                if elapsedTime >= duration {
                    bombFallingTimer?.invalidate()
                    bombFallingTimer = nil
                    finished()
                }
            }
        }
        else if (character == "EXPLOSION") {
            explosionTimer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true) { _ in
                action()
                elapsedTime += 0.001
                
                if !triggeredBeforeFinish && elapsedTime >= duration - 0.01 {
                    beforeFinished()
                    triggeredBeforeFinish = true
                }
                
                if elapsedTime >= duration {
                    explosionTimer?.invalidate()
                    explosionTimer = nil
                    finished()
                }
            }
        }
        
    }
    
    func detonate(dropHistory: BombDropHistory) {
        bombPosition.y = INITIAL_BOMB_Y
        
        let speed: CGFloat = TOTAL_DISTANCE / (BOMB_FALL_ANIMATION_DURATION * 1000)
        
        runEveryMillisecond(for: BOMB_FALL_ANIMATION_DURATION, character: "BOMB") {
            bombPosition.y += speed
        } beforeFinished: {
            isShowingExplosion = true
        } finished: {
            bombPosition.y = INITIAL_BOMB_Y
            
            runEveryMillisecond(for: 1, character: "EXPLOSION") {
            } beforeFinished: {
                bombLocationDrop = dropHistory.affectedAreaImageName

            } finished: {
                
                isShowingExplosion = false
            }
        }
    }
    
    var body: some View {
        NavigationView{ZStack{
            Spacer().navigationBarBackButtonHidden(true)
            
            VStack{
                Image(bombLocationDrop)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.top)
                    .frame(width: UIScreen.main.bounds.width)
                
                
                Spacer()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 16, content: {
                        ForEach(BombType) { bomb in
                            ZStack {
                                HStack {
                                    VStack(spacing: 8) {
                                        
                                        Image(bomb.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 120, height: 180)
                                            .clipped()
                                            .shadow(radius: 3)
                                        Text(bomb.title)
                                            .font(.system(size: 16, weight: .semibold))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.black)
                                        
                                    }
                                    
                                    if selectedBombImageName == bomb.imageName {
                                        ScrollView(.vertical, showsIndicators: false) {
                                            VStack(alignment: .leading, spacing: 16) {
                                                NavigationLink(destination: InfoView(bomb: bomb)) {
                                                    Text("More info")
                                                        .font(.headline)
                                                        .foregroundColor(.white)
                                                        .padding()
                                                        .frame(maxWidth: .infinity)
                                                        .background(Color.gray)
                                                        .cornerRadius(10)
                                                    
                                                    .padding(.horizontal)}
                                                
                                                ForEach(bomb.dropHistories) { dropHistory in
                                                    Button(action: {
                                                        detonate(dropHistory: dropHistory)
                                                        bombLocationDrop = dropHistory.imageName
                                                    }) {
                                                        Text("\(dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(dropHistory.timestamp))))")
                                                            .font(.headline)
                                                            .foregroundColor(.white)
                                                            .padding()
                                                            .frame(maxWidth: .infinity)
                                                            .background(Color.blue)
                                                            .cornerRadius(10)
                                                    }
                                                    .padding(.horizontal)
                                                }
                                            }
                                        }
                                        .frame(height: 200)
                                    }
                                    
                                }
                                .padding([.vertical], 10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .padding([.horizontal], 20)
                            }
                            .contentShape(Rectangle()) // This is required to make stack tappable
                            .onTapGesture {
                                selectedBombImageName = bomb.imageName
                                //                                detonate()
                            }
                        }
                    })
                }
                .frame(width: UIScreen.main.bounds.width, height: 250)
            }
            
            
            Image(selectedBombImageName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .rotationEffect(.degrees(-180))
                .position(bombPosition)
            
            
            if isShowingExplosion {
                GifImageView("explosion")
                    .frame(width: 100, height: 100)
                    .position(CGPoint(x: UIScreen.main.bounds.width / 2, y: DESTINATION_Y))
            }
            
        }
        }
        
    }
    
    public init() {
        dateFormatter.dateFormat = "MMM dd, yyyy"
    }
}

//
//  ContentView.swift
//  SwiftUI-SimpleTimer
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContentViewModel = ContentViewModel()
    
    func timeStringMinute(time: Double) -> String {
        String(format: "%.1f", time)
    }
    
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                Spacer()
                HStack {
                    ZStack {
                        Color.yellow
                            .frame(width: UIScreen.main.bounds.width/2, height: 100)
                            .cornerRadius(20)
                            .shadow(radius: 8)
                        
                        Text(self.timeStringMinute(time: viewModel.timeCount))
                            .italic()
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    self.viewModel.startTimer()
                }) {
                    if viewModel.isDisable {
                        Text("Start")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(width: 300)
                            .padding()
                            .background(Color.yellow.opacity(0.2))
                            .cornerRadius(150)
                            .shadow(radius: 2)
                    } else {
                        Text("Start")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(width: 300)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(150)
                            .shadow(radius: 2)
                        
                    }
                }
                .disabled(viewModel.isDisable)
                .padding(.bottom, 20)
                
                Button(action: {
                    self.viewModel.resetTimer()
                }) {
                    if viewModel.isDisable {
                        Text("Reset")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(width: 300)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(150)
                            .shadow(radius: 2)
                    } else {
                        Text("Reset")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(width: 300)
                            .padding()
                            .background(Color.yellow.opacity(0.2))
                            .cornerRadius(150)
                            .shadow(radius: 2)
                    }
                    
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

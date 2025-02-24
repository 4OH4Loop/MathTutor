//
//  ContentView.swift
//  MathTutor
//
//  Created by Carolyn Ballinger on 2/24/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var firstNumber = Int.random(in: 1...10)
    @State private var secondNumber = Int.random(in: 1...10)
    @State private var guessedNumber = ""
    @State private var answer = ""
    @State private var audioPlayer: AVAudioPlayer!
    let emojis = ["🍕", "🍎", "🍏", "🐵", "👽", "🧠", "🧜", "🧙", "🥷", "🐶", "🐹", "🐣", "🦄", "🐝", "🦉", "🦋",
                  "🦖", "🐙", "🦞", "🐟", "🦔", "🐲", "🌻", "🌍", "🌈", "🍔", "🌮", "🍦", "🍩", "🍪"]

    var body: some View {
        VStack {
// TODO: Number of emojis must equal number
//            String(emojis[firstNumber])
//            String(emojis[secondNumber])
//            Image(emojis[firstNumber])
//                .resizable()
//                .scalable()
            Spacer()
            
            Text("\(firstNumber) + \(secondNumber) = ")
                .font(.largeTitle)
            TextField("", text: $guessedNumber)
                .font(.largeTitle)
                .textFieldStyle(.roundedBorder)
                .frame(width: 60)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 2)
                }
                .keyboardType(.numberPad)
            
            Button("Guess") {
                guessedNumber()
                    .buttonStyle[.borderedProminent]
                    .disabled(guessedNumber.isEmpty)
            }
            
//            func guessANumber() {
//                textFieldIsFocused = false
//                
            }
                
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

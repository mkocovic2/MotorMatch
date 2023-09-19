//
//  mechanicPage.swift
//  MotorMatch (iOS)
//
//  Created by Michael on 5/4/23.
//

import SwiftUI
import OpenAISwift
import Foundation

struct mechanicPage: View {
    @State private var userInput: String = ""
    @State private var botResponse: String = ""
    
    //Enter your own GPT API
    let openAI = OpenAISwift(authToken: "#####")

    var body: some View {
        ZStack{
            Image("background2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Mechanic Bot")
                    .font(.custom("Nexa-Heavy", size: 40))
                    .foregroundColor(.white)
                    .underline()
                    .padding()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(botResponse)
                            .padding()
                            .foregroundColor(.white)
                    }
                }
                .frame(width: 300, height: 300)
                .background(Color.white.opacity(0.2))
                .cornerRadius(10)
                .padding()
                
                HStack {
                    TextField("Enter your question", text: $userInput)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 225)
                        .padding()
                    
                    Button(action: {
                        askQuestion()
                    }) {
                        ZStack {
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 50, height: 35)
                                .cornerRadius(10)
                            Text("Ask")
                                .font(.custom("Nexa-Heavy", size: 15))
                                .foregroundColor(.black)
                        }
                    }
                }
            }
            .padding()
        }
    }

    func askQuestion() {
        let prompt = "Q: "
        let message = prompt + userInput

        Task {
            do {
                let response = try await openAI.sendCompletion(
                    with: message,
                    model: .gpt3(.davinci),
                    maxTokens: 50
                )
                let botReply = response.choices?.first?.text ?? ""
                DispatchQueue.main.async {
                    botResponse = "Q: " + userInput + "\n" + botReply
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }

}


struct mechanicPage_Previews: PreviewProvider {
    static var previews: some View {
        mechanicPage()
    }
}

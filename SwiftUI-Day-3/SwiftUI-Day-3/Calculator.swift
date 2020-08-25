//
//  Calculator.swift
//  SwiftUI-Day-3
//
//  Created by Haider Alboloushi on 8/24/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct Calculator: View {
    @State var number: String
    var body: some View {
        ZStack(alignment: .bottom){
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text(number)
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .font(.system(size: 90))
                    .frame(width: 1000)
                    .padding(.leading, 270)
                
                HStack{
                    VStack(spacing: 10){
                        ButtonsTapped(number: $number, button: "C")
                        ButtonsTapped(number: $number, button: "7")
                        ButtonsTapped(number: $number, button: "4")
                        ButtonsTapped(number: $number, button: "1")
                    }
                    
                    VStack(spacing: 10){
                        Text("±").modifier(GrayButtonModifier())
                        ButtonsTapped(number: $number, button: "8")
                        ButtonsTapped(number: $number, button: "5")
                        ButtonsTapped(number: $number, button: "2")
                    }
                    
                    VStack(spacing: 10){
                        Text("%").modifier(GrayButtonModifier())
                        ButtonsTapped(number: $number, button: "9")
                        ButtonsTapped(number: $number, button: "6")
                        ButtonsTapped(number: $number, button: "3")
                    }
                    
                    VStack(spacing: 10){
                        Text("÷").modifier(OrangeButtonModifier())
                        Text("×").modifier(OrangeButtonModifier())
                        Text("-").modifier(OrangeButtonModifier())
                        Text("+").modifier(OrangeButtonModifier())
                    }
                }
                
                HStack{
                    ButtonsTapped(number: $number, button: "0")
                    ButtonsTapped(number: $number, button: ".")
                    Text("=").modifier(OrangeButtonModifier())
                }
            .padding()
            }
        }
    }
}

struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator(number: "")
    }
}

struct ButtonsTapped: View {
    @Binding var number: String
    var button: String
    var body: some View{
        VStack{
            
            if button == "C"{
                Text(button).modifier(GrayButtonModifier())
                .onTapGesture {
                    self.number = ""
                }
            }
            else if button == "0" {
                Text(button).modifier(CapsuleButtonModifier())
                .onTapGesture {
                    self.number += self.button
                }
            }
            else {
                Text(button).modifier(GrayButtonModifier())
                .onTapGesture {
                    self.number += self.button
                }
            }
            
        }
    }
}

struct GrayButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 35))
            .frame(width: 85, height: 85)
            .background(Color.init( #colorLiteral(red: 0.5570569038, green: 0.5565273762, blue: 0.5783078074, alpha: 1)))
            .cornerRadius(50)
    }
}

struct OrangeButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 35))
            .frame(width: 85, height: 85)
            .background(Color.init( #colorLiteral(red: 0.9990305305, green: 0.5842646956, blue: 0, alpha: 1)))
            .cornerRadius(50)
    }
}

struct CapsuleButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 35))
            .frame(width: 175, height: 85)
            .background(Color.init( #colorLiteral(red: 0.5570569038, green: 0.5565273762, blue: 0.5783078074, alpha: 1)))
            .cornerRadius(50)
    }
}

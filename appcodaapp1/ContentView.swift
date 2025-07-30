//
//  ContentView.swift
//  appcodaapp1
//
//  Created by Mohammad Aboelnasr on 29/07/2025.
//

import SwiftUI

struct ContentView: View {
    //check the orientation for the verticalsize
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack(spacing:20) {
        
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundStyle(.indigo)
            }
        Text("Get help from experts in 15 minuts")
                .bold()
            HStack(alignment: .bottom, spacing: 10) {
                ForEach (1...3, id: \.self) {num in
                    Image("user\(num)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.blue)
                }
            }
            .padding(.horizontal, 20)
            Text("Need help with coding problems? Register!")
            Spacer()
            if verticalSizeClass == .compact {
                HSignUpButtonGroup()
            }else{
                VSignUpButtonGroup()
            }
          
          
        }
        .padding(.top, 30)
       
    }
  
}

#Preview {
    ContentView()
}

struct VSignUpButtonGroup: View {
    var body: some View {
        Button{
            
        }
        label:{
            Text("Sign Up")
                .frame(width: 200)
                .padding()
                .foregroundStyle(.white)
                .background(.indigo)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
        }
        Button{
            
        }
        label:{
            Text("Log In")
                .frame(width: 200)
                .padding()
                .foregroundStyle(.white)
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
               
               
        }
    }
}


struct HSignUpButtonGroup: View {
    var body: some View {
        HStack {
            Button {
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.indigo)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            Button {
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

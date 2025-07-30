//
//  Student.swift
//  appcodaapp1
//
//  Created by Mohammad Aboelnasr on 29/07/2025.
//

import SwiftUI

struct Student: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        
        
        VStack (spacing: 20) {
            VStack {
                Text("Instant Developer")
                    .font(.system(size: 40, weight: .medium))
                    .foregroundStyle(.white)
                    .padding()
                Text("Get help from experts in 15 minutes")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundStyle(.white.opacity(0.7))
                
                HStack(alignment:.bottom,spacing:10) {
                    Image("student")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image("tutor")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }.padding(.horizontal,60)
                
                
                Text("Need help with coding problems? Register!")
                    .foregroundStyle(.white.opacity(0.7))
                
                
                Spacer()
                if verticalSizeClass == .compact {
                    HorButtons()
                }else{
                    VerticalButtons()
                }
                
                
                
            }
            .background{
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
            }
            
        }
    }
}

#Preview {
    Student()
}

struct VerticalButtons: View {
    var body: some View {
        VStack(spacing:15){
            Button{
                
            }label: {
                Text("Sign Up")
                    .frame(width: 200)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.indigo)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Button{
                
            }label: {
                Text("Log In")
                    .frame(width: 200)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding(.bottom,20)
       
    }
}

struct HorButtons: View {
    var body: some View {
        VStack(spacing:15){
            Button{
                
            }label: {
                Text("Sign Up")
                    .font(.system(size: 18, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 250)
                    .background(.indigo)
                    .cornerRadius(10)
            }
            Button{
                
            }label: {
                Text("Log In")
                    .font(.system(size: 18, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 250)
                    .background(.gray)
                    .cornerRadius(10)
            }
        }
        .padding(.bottom,20)
       
    }
}

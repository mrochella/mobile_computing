//
//  ContentView.swift
//  My Profile
//
//  Created by student on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // Top Banner
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.pink)
                .frame(height: 130)
                .padding(.top, 60)
            
            // Profile Picture
            ZStack {
                Circle()
                    .fill(Color.gray)
                    .frame(width: 100, height: 80)

                Text("👩🏻‍🎤")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
            }
            .background(Circle().stroke(Color.white, lineWidth: 4))
            .offset(y: -60)
            .padding(.bottom, -50)

            // Name
            Text("@mrochella")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Megan Rochella 🫶🏻")
                .font(.title2)
                .bold()
            
            // Loc and Date
            HStack {
                Text("Surabaya, Indonesia")
                    .foregroundColor(.blue)
                Text("|")
                    .foregroundColor(.gray)
                Text("Joined Oct 2024")
                    .foregroundColor(.gray)
            }
            .font(.caption)
            .padding(.vertical, 5)
            
            HStack(spacing: 10) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.black)
                        Text("Follow")
                            .foregroundColor(.black)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                }

                Button(action: {}) {
                    HStack {
                        Image(systemName: "message")
                            .foregroundColor(.black)
                        Text("Message")
                            .foregroundColor(.black)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                }

                Button(action: {}) {
                    HStack {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                        Text("More")
                            .foregroundColor(.black)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                }
            }
            .padding(.vertical, 10)
            
            // My Bio
            Text("Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind. ― Bernard M. Baruch")
                .font(.system(size: 14))
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
            
            Rectangle()
                .fill(Color.gray.opacity(0.2))
                .frame(width: 400, height: 15)
                .padding(.top, 5)
            
            // Information
            Text("Information")
                .font(.headline)
                .padding(.vertical, 10)
                .frame(maxWidth: 360, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Image(systemName: "globe")
                        .foregroundColor(.gray)
                    Text("Website")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Mrochella.com")
                    .font(.system(size: 14))
                }
                
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    Text("Email")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Hello@Mrochella")
                    .font(.system(size: 14))
                }
                
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.gray)
                    Text("Phone")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("+62 81 999 565 040")
                    .font(.system(size: 14))
                }
                
                HStack {
                    Image(systemName: "calendar")
                        .foregroundColor(.gray)
                    Text("Joined")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("17 October 2024")
                    .font(.system(size: 14))
                }
            }
            .padding()
        
            Divider()
                .frame(width: 380)
                .background(Color.gray)
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    TagView(text: "UI/UX Design")
                    TagView(text: "Data Science")
                    TagView(text: "Database Design")
                }
                
                HStack {
                    TagView(text: "Mobile Gaming")
                    TagView(text: "Pet Lovers")
                    TagView(text: "Coffee Enthusiast")
                }
            }
            .padding(.top, 20)

            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TagView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.caption)
            .padding(10)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ProfileView.swift
//  twitter-clone
//
//  Created by huygur on 6.09.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading){
            headerView
            
            actionButton
            
            userInfoDetails
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.backward")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .offset(x: 16, y: 12)
                        .foregroundColor(.white)
                }

                
                Circle()
                    .frame(width: 72, height: 72)
                .offset(x: 16, y: 24)
            }
        }
        .frame(height: 100)
    }
    
    var actionButton: some View{
        HStack(spacing: 12){
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
    
    var userInfoDetails: some View{
        VStack(alignment: .leading ,spacing: 4){
            HStack {
                Text("Hikmet")
                    .font(.title3.bold())
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            
            Text("@hikmet")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("iOS Developer")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack{
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("Istanbul, Turkey")
                }
                
                Spacer()
                
                HStack{
                    Image(systemName: "link")
                    
                    Text("www.hikmetuygur.dev")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            HStack(spacing: 12) {
                HStack(spacing: 4){
                    Text("1")
                        .font(.subheadline)
                        .bold()
                    
                    Text("Following")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                HStack(spacing: 4){
                    Text("2345")
                        .font(.subheadline)
                        .bold()
                    
                    Text("Followers")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.vertical)
            
            
        }
        .padding(.horizontal)
    }
}

//
//  ContentView.swift
//  CustomNavigationView
//
//  Created by Achmada Fiqri A Rasyad on 20/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Eksplorasi")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Notifikasi")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                    }
            }
            .accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View{
        NavigationView(){
            Content()
                .navigationBarItems(leading: HStack{
                    Button(action: {print("Hello Button")}){
                        Image("youtube")
                            .resizable()
                            .frame(width: 90, height: 25)
                    }
                },
                trailing:
                    HStack{
                        Button(action: {print("Hello Print")}){
                            Image(systemName: "tray.full")
                                .foregroundColor(.secondary)
                            }
                        Button(action: {print("Hello Print")}){
                            Image(systemName: "video.fill")
                                .foregroundColor(.secondary)
                            }
                        Button(action: {print("Hello Print")}){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.secondary)
                            }
                        Button(action: {print("Hello Print")}){
                            Image("profile")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            }
                    }
                )
                .navigationBarTitle("", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Content: View {
    var body: some View{
        List{
            //content1
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("content1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
                        .padding(.all, 5)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .font(.caption)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                    
                }
                HStack(spacing: 20){
                    Image("profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("Simple View SwiftUI")
                            .font(.headline)
                        HStack{
                            Text("Achmada Fiqri A • Rasyad 6x • 1 hari yang lalu")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            //content2
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("content2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("7:39")
                        .padding(.all, 5)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .font(.caption)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                    
                }
                HStack(spacing: 20){
                    Image("profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("Tugas Akhir Praktikum")
                            .font(.headline)
                        HStack{
                            Text("Achmada Fiqri A • Rasyad 600x • 1 hari yang lalu")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            //content 3
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("content1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
                        .padding(.all, 5)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .font(.caption)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                    
                }
                HStack(spacing: 20){
                    Image("profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("Simple View SwiftUI")
                            .font(.headline)
                        HStack{
                            Text("Achmada Fiqri A • Rasyad 60x • 5 hari yang lalu")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
        }
    }
    
}

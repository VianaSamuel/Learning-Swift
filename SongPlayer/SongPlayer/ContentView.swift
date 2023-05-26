//
//  ContentView.swift
//  SongPlayer
//
//  Created by Student25 on 22/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView(showsIndicators: false){
                    AsyncImage(url: URL(string: "https://w0.peakpx.com/wallpaper/1015/585/HD-wallpaper-spotify-app-black-green-logo-logos-music-spotify-music-streaming.jpg")) { image in image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        Color.gray
                    }
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipped()
                    .padding(.bottom, 15)
                    VStack(alignment: .leading){
                        Text("HackaFM")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                        VStack{
                            HStack{
                                AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png")) { image in image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                } placeholder: {
                                    Color.gray
                                }
                                .frame(width: 25, height: 25, alignment: .leading)
                                .clipShape(Circle())
                                Text("HackaUser")
                                    .font(.body)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.bottom, 15)
                        ForEach(songsArray) { Song in
                            NavigationLink(destination: ShowSong(song: Song)){
                                HStack{
                                    AsyncImage(url: URL(string: Song.capa)) { image in image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                    } placeholder: {
                                        Color.gray
                                    }
                                    .frame(width: 50, height: 50)
                                    VStack(alignment: .leading){
                                        Text(Song.name)
                                            .font(.body)
                                            .fontWeight(.bold)
                                        Text(Song.artist)
                                            .font(.headline)
                                        Spacer()
                                    }
                                    .foregroundColor(.white)
                                    Spacer()
                                    Text("...")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom))
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

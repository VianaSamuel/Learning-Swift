//
//  ShowSong.swift
//  SongPlayer
//
//  Created by Student25 on 23/05/23.
//

import SwiftUI

struct ShowSong: View {
    var song: Song
    var body: some View {
        VStack{
            Spacer()
            AsyncImage(url: URL(string: song.capa)) { image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color.gray
            }
            .frame(width: 250, height: 250, alignment: .center)
            VStack{
                Text(song.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 3)
                Text(song.artist)
                    .font(.headline)
            }
            .padding(.top, 10)
            .foregroundColor(.white)
            Spacer()
            HStack(spacing: 30){
                Spacer()
                Image(systemName: "shuffle")
                    .resizable()
                    .frame(width: 35, height: 35)
                Image(systemName: "backward.end.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                Image(systemName: "forward.end.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                Image(systemName: "repeat")
                    .resizable()
                    .frame(width: 35, height: 35)
                Spacer()
            }
            .foregroundColor(.white)
            Spacer()
        }
        .edgesIgnoringSafeArea(.bottom)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom))
    }
}

struct ShowSong_Previews: PreviewProvider {
    static var previews: some View {
        ShowSong(song: Song(id: 0, name: "Até Que Durou", artist: "Péricles", capa: "https://i.scdn.co/image/ab67616d00001e022d26d25a6139de0b87ac0e78"))
    }
}

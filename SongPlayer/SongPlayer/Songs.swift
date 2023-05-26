//
//  Songs.swift
//  SongPlayer
//
//  Created by Student25 on 22/05/23.
//

import Foundation

struct Song : Identifiable {
    var id : Int
    var name : String
    var artist : String
    var capa : String
}

var songsArray = [
    Song(id: 0, name: "Até Que Durou", artist: "Péricles", capa: "https://i.scdn.co/image/ab67616d00001e022d26d25a6139de0b87ac0e78"),
    Song(id: 1, name: "Melhor Eu Ir", artist: "Péricles", capa: "https://i.scdn.co/image/ab67616d0000b273ab9364e86041e490d027ac34"),
    Song(id: 2, name: "Tô Achando Que É amor", artist: "Péricles", capa: "https://cdns-images.dzcdn.net/images/cover/ed228de095a0ea098073e09c0916af65/500x500.jpg"),
    Song(id: 3, name: "Se Eu Largar o Freio", artist: "Péricles", capa: "https://i.scdn.co/image/ab67616d0000b27338421c9c2aecd2526f0aaa47"),
    Song(id: 4, name: "Amiga da Minha Mulher", artist: "Seu Jorge", capa: "https://i.scdn.co/image/ab67616d00001e024ed3322507d38f66cd939a96"),
    Song(id: 5, name: "Quem Não Quer Sou Eu", artist: "Seu Jorge", capa: "https://i.scdn.co/image/ab67616d00001e024ed3322507d38f66cd939a96"),
    Song(id: 6, name: "Deixa a Vida Me Levar", artist: "Zeca Pagodinho", capa: "https://m.media-amazon.com/images/I/51OT8fYqtML._AC_SX355_.jpg"),
    Song(id: 7, name: "Camarão que Dorme a Onda Leva", artist: "Zeca Pagodinho", capa: "https://i.scdn.co/image/ab67616d0000b2736bceec9e2fb933540ba80b7b"),
    Song(id: 8, name: "Preciso Me Encontrar", artist: "Cartola", capa: "https://upload.wikimedia.org/wikipedia/pt/f/ff/Cartola1976.jpg"),
    Song(id: 9, name: "As Rosas Não Falam", artist: "Cartola", capa: "https://upload.wikimedia.org/wikipedia/pt/f/ff/Cartola1976.jpg")
]

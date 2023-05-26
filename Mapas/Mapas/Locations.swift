//
//  Locations.swift
//  Mapas
//
//  Created by Student25 on 23/05/23.
//

import Foundation
import MapKit

struct Location : Identifiable {
    let id = UUID()
    let name : String
    let coordinate : CLLocationCoordinate2D
    let flag : String
    let description : String
}

var locationsArray = [
    Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -14.2400732, longitude: -53.1805017), flag: "https://em-content.zobj.net/thumbs/320/apple/354/flag-brazil_1f1e7-1f1f7.png", description: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."),
    Location(name: "Rússia", coordinate: CLLocationCoordinate2D(latitude: 55.0, longitude: 103.0), flag: "https://em-content.zobj.net/thumbs/320/apple/354/flag-russia_1f1f7-1f1fa.png", description: "A Federação da Rússia, ou Rússia, é um país localizado no norte da Eurásia, com área de 17.075.400 quilômetros quadrados. É o maior país do planeta, cobrindo mais de um nono da superfície terrestre. É também o nono país mais populoso, com 142 milhões de habitantes. Faz fronteira com os seguintes países, de noroeste para sudeste: Noruega, Finlândia, Estônia, Letônia, Lituânia e Polônia, Bielorrússia, Ucrânia, Geórgia, Azerbaijão, Cazaquistão, China, Mongólia e Coreia do Norte. Também tem fronteiras marítimas com o Japão, pelo Mar de Okhotsk, e com os Estados Unidos, pelo Estreito de Bering."),
    Location(name: "Índia", coordinate: CLLocationCoordinate2D(latitude: 21.1289956, longitude: 82.7792201), flag: "https://em-content.zobj.net/thumbs/320/apple/354/flag-india_1f1ee-1f1f3.png", description: "A Índia é um extenso país do Sul da Ásia com geografia diversificada, incluindo desde os picos do Himalaia até a costa do Oceano Índico, e uma história que remonta a cinco milênios. No norte, alguns dos monumentos do império mogol são o complexo do Forte Vermelho, em Délhi, e a imponente mesquita Jama Masjid, bem como o clássico mausoléu Taj Mahal, em Agra. Os peregrinos tomam banho no Ganges, em Varanasi. Rishikesh é um centro de ioga que serve de base para trilhas no Himalaia."),
    Location(name: "China", coordinate: CLLocationCoordinate2D(latitude: 35.8592948, longitude: 104.1361118), flag: "https://em-content.zobj.net/thumbs/320/apple/354/flag-china_1f1e8-1f1f3.png", description: "A China é uma nação muito populosa da Ásia Oriental cuja ampla paisagem abrange pradarias, desertos, montanhas, lagos, rios e mais de 14.000 km de litoral. A capital Pequim combina a arquitetura moderna com locais históricos, como o complexo de palácios da Cidade Proibida e a Praça da Paz Celestial. Xangai é um centro financeiro global repleto de arranha-céus. A emblemática Muralha da China corta a região norte do país de leste a oeste."),
    Location(name: "África do Sul", coordinate: CLLocationCoordinate2D(latitude: -28.4792625, longitude: 24.6727135), flag: "https://em-content.zobj.net/thumbs/320/apple/354/flag-south-africa_1f1ff-1f1e6.png", description: "A África do Sul é um país situado na extremidade sul do continente africano e marcado por vários ecossistemas diferentes. O Parque Nacional Kruger, um destino para safári no interior do país, é repleto de animais de grande porte. A província de Cabo Ocidental tem praias, vinícolas exuberantes perto de Stellenbosch e Paarl, colinas escarpadas no Cabo da Boa Esperança, florestas e lagoas ao longo da Tuinroete (rota dos jardins) e a Cidade do Cabo, que fica ao pé da montanha da Mesa, de topo achatado.")
]

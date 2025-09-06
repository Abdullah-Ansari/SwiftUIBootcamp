//
//  LazyVStackWithScrolling.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 06/09/25.
//

import SwiftUI

fileprivate struct Data {
    
    let team: [Team]
    
    static func getTeams() -> [Team] {
        return [
         Team(
            imageName: "1.square.fill",
            places: [
                Team.Place(imageName: "Fort"),
                Team.Place(imageName: "GatewayOfIndia")
            ]),
         Team(
            imageName: "2.square.fill",
            places: [
                Team.Place(imageName: "HimayunTomb"),
                Team.Place(imageName: "Fort"),
                Team.Place(imageName: "GatewayOfIndia")
            ]),
         Team(
            imageName: "3.square.fill",
            places: [
                Team.Place(imageName: "IndiaGate"),
                Team.Place(imageName: "Tajmahal"),
                Team.Place(imageName: "GatewayOfIndia")
            ]),
         Team(
            imageName: "4.square.fill",
            places: [
                Team.Place(imageName: "IndiaGate"),
                Team.Place(imageName: "IndiaGate"),
                Team.Place(imageName: "Tajmahal"),
                Team.Place(imageName: "GatewayOfIndia")
            ]),
         Team(
            imageName: "5.square.fill",
            places: [
                Team.Place(imageName: "Tajmahal"),
                Team.Place(imageName: "IndiaGate"),
                Team.Place(imageName: "Tajmahal"),
                Team.Place(imageName: "GatewayOfIndia")
            ])
        ]
    }
    
    static func getTeam() -> Team {
        return  Team(
            imageName: "1.square.fill",
            places: [
                Team.Place(imageName: "Tajmahal"),
                Team.Place(imageName: "IndiaGate"),
                Team.Place(imageName: "Tajmahal"),
                Team.Place(imageName: "GatewayOfIndia")
            ])
    }
    
    fileprivate struct Team: Identifiable {
        
        let id = UUID()
        let imageName: String
        let places: [Place]
        
        fileprivate struct Place: Identifiable {
            let id = UUID()
            let imageName: String
        }
    }
}

struct LazyVStackWithScrolling: View {
    
    @State private var teams = Data.getTeams()
    
    var body: some View {
        
        VStack(spacing: 10) {
            HeaderView(
                title: "LazyVStack",
                subtitle: "With ScrollView",
                desc: "The LazyVStack is the best used with many views that scroll of the screen. Lazy means views off the screen are not created unless shown. This increase the performance.",
                back: .yellow,
                textColor: .black
            )
            
            ScrollView {
                LazyVStack(spacing: 5) {
                    ForEach(teams) { team in
                        Section {
                            ForEach(team.places) { place in
                                Image(place.imageName)
                                    .resizable()
                                    .frame(width: 300, height: 300)
                            }
                        } header: {
                            TeamVerticleHeaderView(team: team)
                        } footer: {
                            TeamVerticleFooterView(team: team)
                        }
                    }
                }
            }
        }
    }
}

fileprivate struct TeamVerticleHeaderView: View {
    
    var team: Data.Team
    
    var body: some View {
        HStack {
            Text("Team")
                .font(.largeTitle)
            
            Image(systemName: team.imageName)
                .font(.largeTitle)
        }
        .frame(width: 300, height: 75)
        .background(
            Rectangle()
                .fill(.yellow)
                .opacity(0.9)
        )
    }
}

fileprivate struct TeamVerticleFooterView: View {
    
    var team: Data.Team
    
    var body: some View {
        HStack {
            Text("Team total: ")
                .font(.title)
            
            Text("\(team.places.count)")
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(width: 300, height: 50)
        .background(
            Rectangle()
                .fill(.yellow)
                .opacity(0.9)
        )
    }
}

#Preview {
    LazyVStackWithScrolling()
}

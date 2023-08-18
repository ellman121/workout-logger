//
//  ContentView.swift
//  workout-logger
//
//  Created by Elliott Rarden on 18.08.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Begin Workout")
                .tabItem {
                    Image(systemName: "play.circle")
                    Text("Begin Workout")
                }
            ManageRoutines()
                .tabItem {
                    Image(systemName: "figure.run.square.stack")
                    Text("Manage Routines")
                }
            ManageExercises()
                .tabItem {
                    Image(systemName: "dumbbell")
                    Text("Manage Exercises")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

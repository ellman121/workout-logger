//
//  ExerciseList.swift
//  workout-logger
//
//  Created by Elliott Rarden on 18.08.23.
//

import SwiftUI

struct ManageExercises: View {
    @ObservedObject var viewModel = ExerciseViewModel()
    @State var showCreateModal = false
    
    var body: some View {
        NavigationView {
            List(viewModel.exercises) { exercise in
                NavigationLink {
                    Text("Hello")
                } label: {
                    Text(exercise.id!)
                }
            }
            .navigationTitle("Exercises")
            .sheet(isPresented: $showCreateModal) {
                Text("New")
            }
        }
        .onAppear() {
            self.viewModel.fetchExercises()
        }
    }
}

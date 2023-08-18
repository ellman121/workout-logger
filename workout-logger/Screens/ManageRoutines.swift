//
//  ManageRoutines.swift
//  workout-logger
//
//  Created by Elliott Rarden on 18.08.23.
//

import SwiftUI

struct ManageRoutines: View {
    @ObservedObject var viewModel = RoutineViewModel()
    @State var showCreateModal = false
    
    var body: some View {
        NavigationView {
            List(viewModel.routines) { routine in
                NavigationLink {
                    Text("Hello")
                } label: {
                    Text(routine.id!)
                }
            }
            .navigationTitle("Routines")
            .sheet(isPresented: $showCreateModal) {
                Text("New")
            }
        }
        .onAppear() {
            self.viewModel.fetchExercises()
        }
    }
}

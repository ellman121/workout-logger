//
//  ExerciseDetail.swift
//  workout-logger
//
//  Created by Elliott Rarden on 18.08.23.
//

import SwiftUI

struct RoutineDetail: View {
    @ObservedObject var viewModel = RoutineViewModel()
    
    var routineId: String
    @State private var title = ""
    @State private var exercises = [Exercise]()
    
    var body: some View {
        TextField("Routine Title", text: $title)
        .onSubmit {
            self.viewModel.setRoutine(routine: Routine(
                id: routineId,
                title: title,
                exercises: exercises
            ))
        }
        .onAppear {
            let routine = viewModel.fetchRoutine(id: routineId)
            print(routine.debugDescription)
            self.title = routine?.title ?? ""
            self.exercises = routine?.exercises ?? []
        }
    }
}

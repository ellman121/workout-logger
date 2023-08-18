//
//  Routine.swift
//  workout-logger
//
//  Created by Elliott Rarden on 18.08.23.
//

import Foundation

struct Routine: Identifiable, Codable {
    var id: String?
    var exercises: [Exercise] = []
}

let mockRoutines = [
    Routine(id: "1", exercises: [Exercise(id: "some exercise")]),
    Routine(id: "2", exercises: [Exercise(id: "first"), Exercise(id: "Second")]),
]

class RoutineViewModel: ObservableObject {
//    private var db = Firestore.firestore()
    
    @Published var routines = [Routine]()
    @Published var loading = false
    
    func fetchExercises() {
        self.loading = true
        
        self.routines = mockRoutines
        self.loading = false
//        guard let uid = Auth.auth().currentUser?.uid else { return }
//
//        db.collection(eventCollection)
//            .whereField("invitees", arrayContains: uid)
//            .whereField("startTime", isGreaterThanOrEqualTo: Date(timeIntervalSinceNow: negative24H))
//            .order(by: "startTime")
//            .addSnapshotListener { querySnapshot, error in
//                self.loading = true
//                guard let documents = querySnapshot?.documents else {
//                    self.loading = false
//                    return
//                }
//
//                let events = documents
//                    .map { $0.toEvent() }
//                    .filter { $0.id != "" }
//
//                self.loading = false
//                self.events = events
//            }
    }
    
    func create(Routine routine: Routine, onComplete: (_ error: Error?) -> Void) {
//        self.loading = true
//        guard let uid = Auth.auth().currentUser?.uid else { return }
//
//        var uploadEvent = event
//        uploadEvent.createdBy = uid
//        uploadEvent.invitees = [uid]
//
//        do {
//            try db.collection(eventCollection).document().setData(from: uploadEvent)
//            self.loading = false
//            onComplete(nil)
//        } catch {
//            self.loading = false
//            onComplete(error)
//        }
    }
}

//extension QueryDocumentSnapshot {
//    func toEvent() -> Event {
//        do {
//            return try self.data(as: Event.self)
//        } catch {
//            print("ERROR: Failed to convert docSnapshot to Event")
//            print(error)
//        }
//        return Event(id: "", name: "", description: "", startTime: Date(timeIntervalSince1970: 0))
//    }
//}


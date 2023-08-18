//
//  Routine.swift
//  workout-logger
//
//  Created by Elliott Rarden on 18.08.23.
//

import Foundation

struct Routine: Identifiable, Codable {
    var id: String?
    var title: String = ""
    var exercises: [Exercise] = []
}

var mockRoutines = [
    Routine(id: "1", title: "initial 1", exercises: [Exercise(id: "some exercise", title: "First")]),
    Routine(id: "2", title: "initial 2", exercises: [Exercise(id: "first", title: "First"), Exercise(id: "Second", title: "Second")]),
]

class RoutineViewModel: ObservableObject {
//    private var db = Firestore.firestore()
    
    @Published var routines = [Routine]()
    @Published var loading = false
    
    func fetchRoutine(id: String) -> Routine? {
        self.loading = true
        
        self.loading = false
        return mockRoutines.first(where: {$0.id == id})
    }
    
    func setRoutine(routine: Routine) {
        routines = routines
            .filter { $0.id != routine.id }
        
        routines.append(routine)
        mockRoutines = routines
        mockRoutines.append(routine)
    }
    
    func fetchRoutines() {
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


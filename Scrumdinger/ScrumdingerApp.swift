//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Neha on 2/15/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}

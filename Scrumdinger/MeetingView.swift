//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Daniela Alonso on 12/15/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack{
                VStack(alignment:.leading) {
                    Label("300", systemImage: "hourglass.tophalf.fill")
                    
                    
                    Text("Seconds Elapsed").font(.caption)
                }
                
                Spacer()
                
                VStack(alignment:.trailing){
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                    
                    
                    Text("Seconds Remaining").font(.caption)
                }
            }.accessibilityElement(children: .ignore)
                .accessibilityLabel("Time Remaining")
                .accessibilityValue("10 minutes")
            
            Circle().strokeBorder(lineWidth: 24)
            HStack {
                
                Text("Speaker 1 of 3")
                
                Spacer()
                
                Button(action: {}) {
                    
                    Image(systemName: "forward.fill") .accessibilityLabel("Next speaker")
                    
                }
            }
        }.padding()
    }
    
}

#Preview {
    MeetingView()
}

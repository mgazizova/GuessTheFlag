//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Мария Газизова on 04.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello, world!")
            Text("Inside stack long thing!")
            Spacer()
        }
        
        HStack(alignment: .bottom, spacing: 20) {
            Text("One")
            Text("Another")
        }
        
        ZStack(alignment: .leading) {
            Text("Mariia")
            Text("Stepan")
        }
        
        VStack(spacing: 10) {
            HStack(spacing: 30) {
                Text("1")
                Text("2")
                Text("3")
            }
            HStack(spacing: 30) {
                Text("4")
                Text("5")
                Text("6")
            }
            HStack(spacing: 30) {
                Text("7")
                Text("8")
                Text("9")
            }
        }
        
        ZStack {
            VStack(spacing: 0) {
                Color.orange
                Color.green
            }

            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        
        ZStack {
            Color(red: 0.1, green: 0.1, blue: 0.3)
            Color.blue
                .frame(width: 100, height: 100)
            Color.yellow
                .frame(minWidth: 10, maxWidth: .infinity, maxHeight: 30)
            Text("My content")
        }
        .background(.red)
        //        .ignoresSafeArea() this will hide the red part from this view
    }
}

struct GradientView: View {
    var body: some View {
        LinearGradient(colors: [.red, .yellow], startPoint: .top, endPoint: .bottom)
        
        LinearGradient(stops: [
            Gradient.Stop(color: .green, location: 0.45),
            Gradient.Stop(color: .cyan, location: 0.55)
        ], startPoint: .leading, endPoint: .trailing) // from 45 to 55 the smoothing area
        
        RadialGradient(colors: [.purple, .pink], center: .center, startRadius: 20, endRadius: 200)
        
        AngularGradient(colors: [.gray, .mint, .indigo], center: .center)
        
        Text("Another example")
            .frame(maxWidth: .infinity, minHeight: 100)
            .foregroundStyle(.white)
            .background(.red.gradient)
    }
}

struct ButtonView: View {
    var body: some View {
        Button("Delete something", role: .destructive) { // role can change the appearance
            print("hello World")
        }
        
        Button("Did you do it?", action: someAction)
            .buttonStyle(.bordered)
            .tint(.purple) // to colour the button use tint
        
        Button("automatic") { }
            .buttonStyle(.automatic)
        Button("bordered") { }
            .buttonStyle(.bordered)
        Button("borderedProminent") { }
            .buttonStyle(.borderedProminent)
        Button("borderless") { }
            .buttonStyle(.borderless)
        Button("plain") { }
            .buttonStyle(.plain)
        
        Button {
            print("Super custom works")
        }label: {
            Text("Tap to see if super custom works")
                .padding()
                .foregroundColor(.white)
                .background(.teal)
        }
        
        Image("pencil") // to load added image from the project
        Image(decorative: "pencil") // the same as previous but won't read it in while read mode
        Image(systemName: "pencil")
        
        Button {
            print("Edit")
        } label: {
            Image(systemName: "pencil") // Image
        }
        
        Button("Edit", systemImage: "pencil") {} // Image + text
        
        Button {} label: {
            Label("Edit with focuses", systemImage: "pencil")
                .padding()
                .foregroundStyle(.red)
                .background(.black)
        }
    }
    
    func someAction() {
        print("I did it")
    }
}

struct AlertView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("The title is important", isPresented: $showingAlert) {
            Button("Oki doki", role: .cancel) {} // all buttons of alert will close it
            Button("Not oki doki", role: .destructive) {}
        } message: {
            Text("Don't miss the message")
        }
    }
}

#Preview {
//    ContentView()
//    GradientView()
//    ButtonView()
    AlertView()
}

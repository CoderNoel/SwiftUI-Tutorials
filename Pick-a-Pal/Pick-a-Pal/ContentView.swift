//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by Noel Shaju on 30/3/2025.
//

import SwiftUI
 
struct ContentView: View {
    @State private var names: [String] = ["Noel"]
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    @State private var errorMessage = ""
    
    var body: some View {
        VStack {
            VStack(spacing: 8) {
                Image(systemName: "person.3.sequence.fill")
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.hierarchical)
                Text("Pick-a-Pal")
            }
            .font(.title)
            .bold()
            
            Text(pickedName.isEmpty ? " ": pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.tint)
            
            List {
                ForEach(names, id: \.description) {name in Text(name)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .fontWeight(.semibold)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red.opacity(0.10))
                    )
            }
            
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    if names.contains(nameToAdd) {
                        errorMessage = "Name already exists"
                    }
                    
                    else if !nameToAdd.isEmpty {
                        names.append(nameToAdd)
                        nameToAdd = ""
                        errorMessage = ""
                    }
                }
                .onChange(of: nameToAdd) {
                    errorMessage = ""
                }
            
            Divider()
            
            Toggle("Remove when picked", isOn: $shouldRemovePickedName)
            
            Button {
                if let randomName = names.randomElement() {
                    pickedName = randomName
                    
                    if shouldRemovePickedName {
                        names.removeAll { name in
                            return (name == randomName)
                        }
                    }
                    
                } else {
                    pickedName = ""
                }
            } label: {
                Text("Pick Random Name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .font(.body)
            .fontWeight(.bold)
            .padding(.top, 20)
        }
        .padding()
    }
}

#Preview {
    ContentView()
    
}

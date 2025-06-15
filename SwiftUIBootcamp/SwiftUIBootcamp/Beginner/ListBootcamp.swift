//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 15/06/25.
//

import SwiftUI

struct ListBootcamp: View {
    
    
    @State private var fruits = ["Apple", "Orange", "Banana", "Peach"]
    @State private var veggies = ["Tomato", "Potato", "Carrot"]
    
    var body: some View {
        NavigationView {
            
            List {
                
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange),
                    content: {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit)
                                .foregroundColor(Color.white)
                                .padding(.vertical)
                            
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                    }
                )
                
                Section(
                    header:
                        Text("VEGGIES"),
                    content: {
                        ForEach(veggies, id: \.self) { veggi in
                            Text(veggi.capitalized)
                        }
                    }
                )
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
        .accentColor(.red)
    }
    
    private var addButton: some View {
        Button("Add") {
            self.fruits.append("new fruit")
            self.veggies.append("new veggie")
        }
    }
    
    private func delete(indexSet: IndexSet) {
        self.fruits.remove(atOffsets: indexSet)
    }
    
    private func move(indices: IndexSet, newOffset: Int) {
        self.fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    ListBootcamp()
}

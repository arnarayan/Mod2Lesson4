//
//  ContentView.swift
//  ModLesson4
//
//  Created by Anand Narayan on 2022-01-29.
//

import SwiftUI

struct ContentView: View {
    
    @State var addedNumbers:[Int] = []
    var body: some View {

        

        VStack {

        NavigationView {
            List(addedNumbers, id: \.self) {elem in
                Text(String(elem))
                }.navigationTitle("Growing Pains")
        }
        HStack {
            Button(action: {
                var checkOut = Int.random(in: 1...10)
                while checkOut != 7 {
                addedNumbers.append(checkOut)
                checkOut = Int.random(in: 1...10)
            }
            },
                label: {
                    Text("Add")
            })
            Button(action: {
                for (index,element) in addedNumbers.enumerated() {
                addedNumbers[index] = element+1
            }
            },
                label: {
                    Text("Increase")
            })
            Button(action: {
                addedNumbers.removeAll()
            },
                label: {
                    Text("Clear")
            })

        }



        }

        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

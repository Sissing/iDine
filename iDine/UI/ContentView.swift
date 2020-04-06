//
//  ContentView.swift
//  iDine
//
//  Created by Ruben Sissing on 06/04/2020.
//  Copyright © 2020 Ruben Sissing. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView {
			List {
				Text("Hello World")
				Text("Hello World")
				Text("Hello World")
			}
			.navigationBarTitle("Menu")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

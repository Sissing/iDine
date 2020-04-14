//
//  ItemRow.swift
//  iDine
//
//  Created by Ruben Sissing on 09/04/2020.
//  Copyright © 2020 Ruben Sissing. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
	let item: MenuItem
	private let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]

	var body: some View {
		NavigationLink(destination: ItemDetail(item: self.item)) {
			HStack {
				Image(self.item.thumbnailImage)
					.clipShape(Circle())
					.overlay(Circle().stroke(Color.gray, lineWidth: 2))
				VStack(alignment: .leading) {
					Text(self.item.name)
						.font(.headline)
						.minimumScaleFactor(0.5)
					Text("$\(self.item.price)")
				}
				Spacer()
				ForEach(self.item.restrictions, id: \.self) { restriction in
					Text(restriction)
						.font(.caption)
						.fontWeight(.black)
						.padding(5)
						.background(self.colors[restriction, default: .black])
						.clipShape(Circle())
						.foregroundColor(.white)
				}
			}
		}
	}
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
		ItemRow(item: .example)
			.previewLayout(.sizeThatFits)
    }
}

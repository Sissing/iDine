//
//  ItemDetail.swift
//  iDine
//
//  Created by Ruben Sissing on 09/04/2020.
//  Copyright © 2020 Ruben Sissing. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
	let item: MenuItem

	var body: some View {
		VStack {
			ZStack(alignment: .bottomTrailing) {
				Image(self.item.mainImage)
					.resizable()
					.aspectRatio(contentMode: .fit)
				Text("Photo: \(item.photoCredit)")
					.padding(4)
					.background(Color.black)
					.font(.caption)
					.foregroundColor(.white)
					.offset(x: -5, y: -5)
			}
			Text(self.item.description)
				.padding()
			Spacer()
		}
		.navigationBarTitle(Text(self.item.name), displayMode: .inline)
	}
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			ItemDetail(item: .example)
		}
    }
}

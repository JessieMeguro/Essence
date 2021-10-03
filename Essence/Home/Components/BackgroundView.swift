//
//  BackgroundView.swift
//  Essence
//
//  Created by Jessica Akemi Meguro on 03/10/21.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
            Color.essencePreto.edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.essenceBranco)
                .frame(width: geo.size.width, height: 820, alignment: .bottom)
                .padding(.top, 20)
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}

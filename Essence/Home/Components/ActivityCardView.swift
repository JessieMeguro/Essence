//
//  ActivityCardView.swift
//  TheEssenceApp
//
//  Created by Jessica Akemi Meguro on 02/10/21.
//

import SwiftUI

struct ActivityCardView: View {
    var body: some View {
        TodayCard()
    }
}

struct ActivityCardView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityCardView()
    }
}

struct TodayCard: View {

    
    var body: some View {
            
            ZStack (alignment: .leading){
                ZStack (alignment: .trailing) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame(width: 327, height: 91)
            
                Image("img1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 84, height: 91)
                    .clipped()
                }.clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius:8, x: 0, y:4)
                
                VStack (alignment: .leading) {
                    Text("Today's Experience")
                        .font(.headline)
                        .foregroundColor(Color.essenceVermelho)
                        .padding(.init(top: 13, leading: 13, bottom: 5, trailing: 0))
                    
                    Text("For the days I'm really going through it and not okay.")
                        .font(.subheadline)
                        .foregroundColor(Color("preto"))
                        .frame(width: 204)
                        .padding(.init(top: 0, leading: 13, bottom: 13, trailing: 20))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
        }
            .padding(.init(top: 6, leading: 40, bottom: 6, trailing: 40))
    }
}


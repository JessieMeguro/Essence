//
//  HomeView.swift
//  Essence
//
//  Created by Jessica Akemi Meguro on 03/10/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            BackgroundView()
            ZStack {
                VStack (alignment: .leading) {
                    VStack (alignment: .leading, spacing: 6) {
                        Text("Good Morning, Rata.")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.essenceVermelho)
                        
                        Text("How are you feeling today?")
                            .font(.body)
                            .foregroundColor(.essencePreto)
                    }
                    .padding(.init(top: 6, leading: 40, bottom: 6, trailing: 20))
                    
                    VStack (alignment: .leading){
                        
                        ActivityCardView()
                        
                        ExperienceCollectionView()
                        
                        DiscoverCollectionView()
                        
                    }
                    Spacer()
                        .frame(height: 200)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

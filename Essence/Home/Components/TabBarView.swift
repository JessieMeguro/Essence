//
//  TabBarView.swift
//  Essence
//
//  Created by Jessica Akemi Meguro on 03/10/21.
//

import SwiftUI

struct TabBarView: View {
    
    let image = UIImage.gradientImageWithBounds(
        bounds: CGRect( x: 0, y: 0, width: UIScreen.main.scale, height: 8),
        colors: [
            UIColor.clear.cgColor,
            UIColor.black.withAlphaComponent(0.1).cgColor
        ]
    )
    
    var body: some View {
        TabView {
            ExperienceCollectionView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            DiscoverCollectionView()
                .tabItem {
                    Image(systemName: "plus.square.on.square")
                    Text("Create")
                }
            ActivityCardView()
                .tabItem {
                    Image(systemName: "heart.text.square.fill")
                    Text("Collection")
                }
            DiscoverCollectionView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                    
                }
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = UIColor(Color.essenceBranco)
            let appearance = UITabBarAppearance()
            appearance.configureWithTransparentBackground()
            appearance.backgroundColor = UIColor.systemGray6
                    
            appearance.backgroundImage = UIImage()
            appearance.shadowImage = image

            UITabBar.appearance().standardAppearance = appearance

        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

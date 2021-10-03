

import SwiftUI

struct DiscoverCollectionView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(4..<9) {i in discoverCardView(image: "img\(i)").padding(4)}
                }
            }
        }
    }
}

struct DiscoverCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverCollectionView()
    }
}

struct discoverCardView : View {
    
    var image = ""
    var body: some View {
        VStack (alignment: .leading){
            Image(image)
                .resizable()
                .frame(width: 100, height: 140)
                .cornerRadius(20)
                .shadow(radius: 10, x: 0, y:4)
//                .onTapGesture {
//
//                }
        }
        .frame(width: 100, height: 190)
    }
}


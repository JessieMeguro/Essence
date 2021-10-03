

import SwiftUI

struct DiscoverCollectionView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Discover")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.essenceVermelho)
                .padding(.init(top: 6, leading: 40 , bottom: 6, trailing: 40))
            
            Text("New ways to spend your days.")
                .font(.callout)
                .foregroundColor(.essencePreto)
                .padding(.init(top: 0, leading: 40 , bottom: 6, trailing: 40))
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(4..<9) {i in discoverCardView(image: "img\(i)").padding(4)}
                }
                .padding(.init(top: 0, leading: 55, bottom: 6, trailing: 40))
            }
            .padding(-20)
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
                .shadow(radius: 4, x: 0, y:4)
            //                .onTapGesture {
            //
            //                }
        }
        .frame(width: 100, height: 190)
    }
}


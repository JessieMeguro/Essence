
import SwiftUI

struct ExperienceCollectionView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0..<5) {i in cardView(image: "img\(i)").padding(4)}
                }
            }
        }
    }
}

struct ExperienceCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceCollectionView()
    }
}

struct cardView : View {
    
    var image = ""
    var body: some View {
        VStack (alignment: .leading){
            Image(image)
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(20)
                .shadow(radius: 10, x: 0, y:4)
//                .onTapGesture {
//
//                }
        }
        .frame(width: 120, height: 170)
    }
}

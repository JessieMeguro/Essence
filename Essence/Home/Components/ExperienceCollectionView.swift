
import SwiftUI

struct ExperienceCollectionView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Your Experiences")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.essenceVermelho)
                .padding(.init(top: 6, leading: 40 , bottom: 6, trailing: 40))
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0..<5) {i in cardView(image: "img\(i)").padding(4)}
                    .shadow(radius: 4, x: 0, y:4)
                }
                .padding(.init(top: 6, leading: 55, bottom: 0, trailing: 40))
            }
            .padding(-20)
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
        }
        .frame(width: 120, height: 170)
    }
}

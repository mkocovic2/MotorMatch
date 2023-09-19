import SwiftUI

struct resourcePage: View {
    var body: some View {
        ZStack {
            Image("background2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ScrollView {
                    Text("Resources")
                        .font(.custom("Nexa-Heavy", size: 40))
                        .foregroundColor(.white)
                        .underline()
                        .padding(.top, 50)
                    Text("Sometimes it can be difficult to find the thing you're looking for, thats why it's important to have a source to guide you:")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 20)
                        .multilineTextAlignment(.center)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        resourcePageShow(title: "ChrisFix", description: "A YouTube channel with tutorials on basic car maintenance.")
                        resourcePageShow(title: "Scotty Kilmer ", description: "A retired mechanic who posts youtube videos on car brands and models.")
                        resourcePageShow(title: "Kelley Blue Book", description: "An automotive research company that displays prices, for used and new cars")
                        resourcePageShow(title: "AutoTrader", description: "Shows car listings, ratings, and reviews for specific vehicles.")
                        resourcePageShow(title: "Keep your car clean", description: "Wash your car regularly to remove dirt and debris that can damage the paint and body.")
                        resourcePageShow(title: "Edmunds", description: "Shows users price quotes, values, and expert reviews from people in the auto industry.")
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                }
                
                Spacer()
            }
        }
    }
}

struct resourcePageShow: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)
            Text(description)
                .font(.subheadline)
        }
    }
}


struct resourcePage_Previews: PreviewProvider {
    static var previews: some View {
        resourcePage()
    }
}

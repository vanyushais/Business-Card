
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.56, green: 0.27, blue: 0.68)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("vanyushais")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Vanyushais")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Разработчик")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+7 922-163-92-23", imageName: "phone.fill")
                InfoView(text: "vanyushai.dev@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



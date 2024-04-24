import SwiftUI

struct EntryPage: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.cyan
                VStack {
                    Image(systemName:"link.circle").font(.system(size: 100))
                    
                    Text("Welcome to Lynk")
                        .font(.title)
                        .padding()
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Let's Go!")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                    .padding()
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .background(Color.blue)
            }
        }
            }
}

struct EntryPage_Previews: PreviewProvider {
    static var previews: some View {
        EntryPage()
    }
}

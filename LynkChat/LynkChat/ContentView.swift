
import SwiftUI

struct MessageView: View {
    @State private var messageText = ""
    @State private var messages: [String] = []

    var body: some View {
        VStack {
            List(messages, id: \.self) { message in
                HStack {
                    Image(systemName: "person.crop.circle")
                        .font(.title)
                    Text(message)
                    }
            }
            .padding()

            HStack {
                TextField("Type a message", text: $messageText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: sendMessage) {
                    Image(systemName: "arrow.up.circle")
                        .font(.title)
                        .padding()
                }
            }
        }
        .navigationBarTitle(Text("Lynk").font(.system(size: 100000)), displayMode: .inline)
        .navigationBarItems(
            leading: Button(action: {print("This feature is under construction")
                    }) {
                        Image(systemName: "figure.2.circle").font(.system(size: 20))
                    },
                    trailing: Button(action: {print("This feature is under construction")
                    }) {
                        Image(systemName: "gearshape").font(.system(size: 20))
                    }
            )
            .navigationBarTitleDisplayMode(.inline)
            .background(Color.cyan)
            }
            

private func sendMessage() {
        guard !messageText.isEmpty else { return }
        messages.append(messageText)
        messageText = ""
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            MessageView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

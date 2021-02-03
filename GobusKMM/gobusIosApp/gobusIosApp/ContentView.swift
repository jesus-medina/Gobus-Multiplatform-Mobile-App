import SwiftUI
import gobusShared

func greet() -> String {
    return Greeting().greeting()
}

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("¿Donde está el bus?").font(.largeTitle)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

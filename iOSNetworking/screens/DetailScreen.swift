//
//  DetailScreen.swift
//  iOSNetworking
//
//  Created by Abduqaxxor on 23/4/22.
//

import SwiftUI

struct DetailScreen: View {
    var body: some View {
        VStack{
            Text("Second View")
        }
        .onAppear{
            print("Detail Screen Appeared")
        }
        .onDisappear{
            print("Detail Screen DisAppeared")
        }
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}

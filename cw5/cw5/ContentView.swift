//
//  ContentView.swift
//  cw5
//
//  Created by Nour Alhashash on 14/09/2022.
//

import SwiftUI
struct ContentView: View {
    @State var emojis  = ["🥲", "😆", "😂","😡","🥰","😎"]
    @State  var tap : String = ""
    var body: some View {
        VStack {
            
            
            Text("اختار الإيموجي اللي يعبر عنك اليوم")
                .multilineTextAlignment(.center)
            
            
                .font(.largeTitle)
            
            Text(tap)
                .font(.system(size: 150))
                .frame(width: 250, height:250)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            ScrollView(.horizontal){
                
                HStack{
                    
                    ForEach (emojis, id: \.self){ emoji in
                        Text (emoji)
                            .font(.system(size: 150))
                        
                            .background(Color.yellow)
                            .clipShape(Circle())
                            .onTapGesture{
                             // change in "(a)state" array or etc.. to change something in background
                            tap = emoji
                                
                            }
                    }
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

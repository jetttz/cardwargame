

import SwiftUI

struct ContentView: View {
   @State private var player = "card5"
    @State private var cpu = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    var body: some View {
        
        ZStack{
            
            Image("background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                
                Spacer()
                HStack{
                    Spacer()
                    Image(player)
                    Spacer()
                    Image(cpu)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    let randplayer = Int.random(in: 2...14)
                    let randcpu = Int.random(in: 2...14)

                    player = "card" + String(randplayer)
                    cpu = "card"  + String(randcpu)
                    
                    if randplayer > randcpu{
                        playerScore += 1
                    }else if randcpu > randplayer{
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                    
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Players")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                       
                    }
                    Spacer()
                }
                Spacer()
            }
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

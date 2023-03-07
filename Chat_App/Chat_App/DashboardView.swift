//
//  DashboardMessageView.swift
//  Chat_App
//
//  Created by Mateusz Papież on 22/02/2023.
//

import SwiftUI


//
//struct OneContainer : Identifiable {
//    let id: UUID = UUID()
//    let onestory: [Onestory]
//}


struct DashboardView: View {
    
    var storyset: [Story]
    
    //@State private var selectedstory : OneContainer? = nil
    
    var body: some View {
        NavigationView{
            TabView{
                ForEach(storyset,id: \.title) { one_game_story in
                    Button (action: {
                        //selectedstory = OneContainer.init(onestory: one_game_story.onestory)
                    })
                    {
                        ZStack{
                            Image(one_game_story.main_image)
                                .scaledToFit()
                                .ignoresSafeArea(.all)
                            VStack{
                                NavigationLink(destination: Story_view()){
//                                NavigationLink(){ Story_view(one_game_story: <#[Story]#>))
//                                } label: {
                                    VStack{
                                        Text(one_game_story.title)
                                            .multilineTextAlignment(.center)
                                            .font(.system(size:20))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .padding()
                                            .background(.ultraThinMaterial)
                                            .cornerRadius(15)
                                        HStack {
                                            Label(one_game_story.time, systemImage: "clock")
                                                .font(.system(size:20))
                                                .fontWeight(.bold)
                                                .foregroundColor(.black)
                                                .padding()
                                                .background(.ultraThinMaterial)
                                                .cornerRadius(15)
                                            //Spacer()
                                           Label(one_game_story.player, systemImage: "person")
                                                .font(.system(size:20))
                                                .fontWeight(.bold)
                                                .foregroundColor(.black)
                                                .padding()
                                                .background(.ultraThinMaterial)
                                                .cornerRadius(15)
                                        }
                                    }
                                    
                                }
                                
                            }
                            
                        }
                    }
                }
            }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode:.always))
        }.ignoresSafeArea(.all)
    }
}
    
//    struct DashboardMessageView_Previews: PreviewProvider {
//        static var previews: some View {
//            DashboardView()
//        }
//    }

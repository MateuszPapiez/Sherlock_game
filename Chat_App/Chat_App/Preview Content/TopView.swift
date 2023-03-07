//
//  TopView.swift
//  Chat_App
//
//  Created by Mateusz Papież on 23/02/2023.
//

import SwiftUI





struct Users: Identifiable, Hashable {
    var id = UUID()
    let image_user: String
    let name: String
}

let userset: [Users] = [
    Users(image_user:"user_1",name: "Adam"),
    Users(image_user:"user_2",name: "Małgorzata"),
    Users(image_user:"user_3",name: "Monika"),
    Users(image_user:"user_4",name: "Kacper"),
    Users(image_user:"user_5",name: "Mateusz"),
    Users(image_user:"user_6",name: "Bartek"),
    Users(image_user:"user_7",name: "Zuzia"),
    
]



struct TopView: View {
    
    @State var search = ""
    
    var body: some View {
        
        
        
        VStack(spacing: 15) {
            
            HStack{
                Text ("Friends")
                    .foregroundColor(Color("Login_text"))
                    .font(.title)
                    .fontWeight(.bold)
                //.padding(.leading)
                Spacer()
            }
            
            ScrollView (.horizontal, showsIndicators: false) {
                
                HStack(spacing: 10){
                    ForEach(userset){oneuser in
                        
                        Button(action: {
                            
                        }) {
                            VStack{
                                Image("\(oneuser.image_user)")
                                    .resizable()
                                    .frame(width: 65, height: 65)
                                    .cornerRadius(10)
                                    .scaledToFit()
                                
                                Text("\(oneuser.name)")
                                    .foregroundColor(Color("Login_text"))
                                    .font(.system(size: 12))
                                
                                //                                Text("🟢")
                                //                                    .foregroundColor(.green)
                                //                                    .font(.system(size: 5))
                            }
                        }
                        
                    }
                }
                
            }
            
            HStack(spacing: 15) {
                
                TextField ("Friends", text: self.$search)
                
                Image("search_bar")
                    .resizable()
                    .frame(width: 25, height: 25)
                
            }
            .padding()
            .background(Color("searchbar_color"))
            .cornerRadius(10)
        }
        .padding()

        }
    }



struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}

//
//  ContentView.swift
//  homework1
//
//  Created by robert on 2022/10/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack
        {
            HStack{
                VStack{
                    Text("10月1日 星期六")
                        .foregroundColor(Color.gray)
                    Text("Today")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                }
                Spacer()
                Image("person1").resizable().frame(width: 30, height: 30, alignment: .bottomTrailing).position(x: 260, y: 35)
                
            }.frame(width:400, height: 40, alignment: .top)
            Image("1").resizable().cornerRadius(20).frame(width:400, height: 500).position(x:215 , y:290)
            ZStack
            {
                VStack(alignment: .leading){
                    Text("編輯最愛")
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                    Text("話題遊戲")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color.black)
                }.position(x: 70, y: 50)
                    HStack(){
                        Image("2").resizable().cornerRadius(10).frame(width: 40, height: 40)
                        VStack{
                            Text("《暗黑破壞神 永生不糗》")
                            Text("掠取寶物、自定義裝備並探索世界")
                                .font(.footnote)
                        }
                        VStack{
                            ZStack{
                                Capsule().fill(Color(red: 0.75294118, green: 0.75294118, blue: 0.75294118, opacity: 0.70980392)).frame(width: 80, height: 35)
                                Text("取得")
                                    .foregroundColor(Color.blue)
                            }
                            Text("App內購買")
                                .font(.system(size: 7))
                                .foregroundColor(Color.gray)
                        }
                        
                    }.position(x: 190, y: 110)
                Divider()
                HStack(){
                    Image("4").resizable().cornerRadius(10).frame(width: 40, height: 40).position(x: 52, y: 140)
                    Spacer()
                    VStack{
                        Text("Royal Match")
                            .font(.system(size:15)).position(x:-10, y: 140)
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            Capsule().fill(Color(red: 0.75294118, green: 0.75294118, blue: 0.75294118, opacity: 0.70980392)).frame(width: 80, height: 35)
                            Text("取得")
                                .foregroundColor(Color.blue)
                        }
                        Text("App內購買")
                            .font(.system(size: 7))
                            .foregroundColor(Color.gray)
                    }.position(x:55, y: 150)
                    
                }.position(x: 190, y: 200)
            }.background(Color.white).cornerRadius(20).shadow(radius: 30).frame(width: 400, height: 300).position(x: 215, y: 450)
            HStack(){
                Image("3").resizable().frame(width: 400, height: 60)
            }.frame(width: 400, height: 200, alignment: .bottom).position(x:215, y: 190)
            
        }.frame(minWidth: 0, maxWidth:.infinity,minHeight: 0,maxHeight:.infinity)
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 12 Pro Max")
            .previewInterfaceOrientation(.portrait)
            ContentView()
                .previewDevice("iPhone 12 Pro Max")
                .previewInterfaceOrientation(.portrait)
        }
    }
}

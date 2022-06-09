//
//  loginPage.swift
//  OASIS
//
//  Created by 동현 on 2022/04/28.
//

import SwiftUI

struct FindID: View{
    
    @State var idtextField = ""
    @State var passtextField = ""
    
    var body: some View
    {
        
        NavigationView{
            
        VStack{
            
            Image("OASIS2")
                .frame(width: 120, height: 100)
                .aspectRatio(contentMode: .fit)
                .clipped()
            
            
            Text("아이디 찾기")
                .font(.system(size: 25))
                .foregroundColor(Color(uiColor: UIColor.gray))
                .fontWeight(.bold)
                .padding(.top, 35)
                .padding(.bottom, 10)
                
            
            Text("이메일을 입력하시면 아이디를 이메일로 보내드릴게요!")
                .font(.system(size: 11))
                .foregroundColor(Color(uiColor:UIColor(red: 0.583, green: 0.583, blue: 0.583, alpha: 1)))
            
            VStack(alignment: .trailing){
                
            TextField("   이메일을 입력해주세요.", text: $idtextField)
                .frame(width: 300, height: 51)
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: Color(uiColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.08)), radius: 13, x: 0, y: 0)
                .padding(.top, 35)
                .padding(.bottom, 0)
                
                
            
            
            
                        }
            NavigationLink(destination: changePasswardView2()){
            Text("아이디 받기")
                .font(.system(size: 13))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(width: 300, height: 51)
                .background(LinearGradient(gradient: Gradient(
                    
                    colors: [
                        .init(uiColor: UIColor(red: 204.0/255.0, green: 225.0/255.0, blue: 244.0/255.0, alpha: 1)),
                        .init(uiColor: UIColor(red: 245.0/255.0, green: 200.0/255.0, blue: 201.0/255.0, alpha: 1))
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
                .cornerRadius(27)
                .padding(.top, 58)
            }
            }
        .edgesIgnoringSafeArea(.all)
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)
        
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)
        
    }
    }
    



struct FindID_Previews:
    PreviewProvider{
    static var previews: some View{
        FindID()
    }
}

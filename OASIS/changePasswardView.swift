//
//  loginPage.swift
//  OASIS
//
//  Created by 동현 on 2022/04/28.
//

import SwiftUI

struct changePasswardView: View{
    
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
            
            
            Text("비밀번호 변경")
                .font(.system(size: 25))
                .foregroundColor(Color(uiColor: UIColor.gray))
                .fontWeight(.bold)
                .padding(.top, 35)
                .padding(.bottom, 10)
                
            
            Text("비밀번호를 변경하기 위해선 닉네임이 필요해요!")
                .font(.system(size: 11))
                .foregroundColor(Color(uiColor:UIColor(red: 0.583, green: 0.583, blue: 0.583, alpha: 1)))
            
            VStack(alignment: .trailing){
                
            TextField("   아이디를 입력해주세요.", text: $idtextField)
                .frame(width: 300, height: 51)
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: Color(uiColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.08)), radius: 13, x: 0, y: 0)
                .padding(.top, 35)
                .padding(.bottom, 10)
                
                
            }
                
            Text("Login")
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
                
            Text("아이디를 잊으셨나요?")
                .font(.system(size: 11))
                .foregroundColor(Color(uiColor:UIColor(red: 0.583, green: 0.583, blue: 0.583, alpha: 1)))
            
            
            }
        .edgesIgnoringSafeArea(.all)
        }
        
        
    }
    }
    



struct changePasswardView_Previews:
    PreviewProvider{
    static var previews: some View{
        changePasswardView()
    }
}

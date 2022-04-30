//
//  loginPage.swift
//  OASIS
//
//  Created by 동현 on 2022/04/28.
//

import SwiftUI

struct loginPage: View{
    
    @State var idtextField = ""
    
    var body: some View
    {
        VStack{
            Image("Image")
                .frame(width: 120, height: 120)
                .aspectRatio(contentMode: .fit)
                .clipped()
            
            
            Text("LOGIN")
                .font(.system(size: 30))
                .foregroundColor(Color(uiColor: UIColor.systemGray))
                .fontWeight(.bold)
                .padding(.top, 43)
                .padding(.bottom, 1)
                
            
            Text("앱을 사용하기위해선 로그인이 필요합니다.")
                .font(.system(size: 11))
                .foregroundColor(Color(uiColor:UIColor(red: 0.583, green: 0.583, blue: 0.583, alpha: 1)))
            
            VStack(alignment: .trailing){
                
            TextField("       아이디를 입력하세요", text: $idtextField)
                .frame(width: 289, height: 51)
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: Color(uiColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.08)), radius: 13, x: 0, y: 0)
                .padding(.top, 35)
                .padding(.bottom, 10)

                
            
                
            TextField("       비밀번호를 입력하세요", text: $idtextField)
                .frame(width: 289, height: 51)
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: Color(uiColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.08)), radius: 13, x: 0, y: 0)
                
            
                Text("비밀번호 또는 아이디를 잊어버리셨나요?")
                .font(.system(size: 11))
                .foregroundColor(Color(uiColor: UIColor(red: 0.583, green: 0.583, blue: 0.583, alpha: 1)))
            }
                
            Text("Login")
                .font(.system(size: 13))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(width: 289, height: 51)
                .background(Color.blue)
                .cornerRadius(27)
                
                
                .padding(.top, 58)
                
    
                
                
                
        }
    }
    
}


struct loginPage_Previews:
    PreviewProvider{
    static var previews: some View{
        loginPage()
    }
}

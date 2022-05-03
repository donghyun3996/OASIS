//
//  SignUpView.swift
//  OASIS
//
//  Created by 동현 on 2022/05/02.
//

import SwiftUI

struct SignUpView2: View{
    
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
            
            
            Text("SIGN UP")
                .font(.system(size: 25))
                .foregroundColor(Color(uiColor: UIColor.gray))
                .fontWeight(.bold)
                .padding(.top, 35)
                .padding(.bottom, 10)
                
            
            Text("오아시스에 가입하여 더 깊은 사랑을 나눠보세요.")
                .font(.system(size: 11))
                .foregroundColor(Color(uiColor:UIColor(red: 0.583, green: 0.583, blue: 0.583, alpha: 1)))
            
            VStack(alignment: .trailing){
                
            TextField("   닉네임을 입력해주세요.", text: $idtextField)
                .frame(width: 300, height: 51)
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: Color(uiColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.08)), radius: 13, x: 0, y: 0)
                .padding(.top, 35)
                

                Text("1~8글자(한국어)내로 작성해주세요.")
                    .font(.system(size: 9))
                    .foregroundColor(Color(uiColor: UIColor(red: 0.583, green: 0.583, blue: 0.583, alpha: 1)))
                    .padding(.bottom, 10)
            
                
            TextField("   이메일을 입력해주세요.", text: $passtextField)
                .frame(width: 300, height: 51)
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: Color(uiColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.08)), radius: 13, x: 0, y: 0)
                

                Text(" ")
                .font(.system(size: 9))
                }
         
            
            NavigationLink(destination: SignUpView3()){
            Text("다음")
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
                .padding(.top, 53)
            }
            
            
            
            HStack{
                Text("이미 계정이 있으신가요?")
                    .font(.system(size: 11))
                    .padding(.trailing, 0)
                    .padding(.top, 90)
                    .foregroundColor(Color(uiColor: UIColor(red: 0.583, green: 0.583, blue: 0.583, alpha: 1)))
                
                NavigationLink(destination: loginPage()){
                Text("로그인")
                    .font(.system(size: 11))
                    .padding(.leading, 0)
                    .padding(.top, 90)
                    .foregroundColor(Color.orange)
                }
                }
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle("", displayMode: .automatic)
                .navigationBarHidden(true)
            
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)
        
        
    }
}


struct SingUpView2_Previews:
    PreviewProvider{
    static var previews: some View{
        SignUpView2()
    }
}

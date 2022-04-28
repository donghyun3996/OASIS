//
//  loginPage.swift
//  OASIS
//
//  Created by 동현 on 2022/04/28.
//

import SwiftUI

struct loginPage: View{
    var body: some View
    {
        VStack{
            Image("Image")
                .frame(width: 120, height: 120)
                .aspectRatio(contentMode: .fit)
                .clipped()
            Text("Login")
            
                
                
        }
    }
    
}


struct loginPage_Previews:
    PreviewProvider{
    static var previews: some View{
        loginPage()
    }
}

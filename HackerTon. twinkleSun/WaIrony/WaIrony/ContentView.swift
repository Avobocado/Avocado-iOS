//
//  ContentView.swift
//  WaIrony
//
//  Created by 허영재 on 7/16/24.
//

import SwiftUI

struct ContentView: View {
//  값의 변화 감지
    @State
    private var isActive: Bool = false

  
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    MyStackView()
                    MyStackView()
                    MyStackView()
                     
                        
                }
                .padding(isActive ? 50 : 10 )
                .background(isActive ?.yellow : Color.black)
                //탭 했을때 나오는거ee
                .onTapGesture {
                    print("클릭됨")
                    //애니메이션과 함께
                    withAnimation {
                        self.isActive.toggle()
                    }
                    //네비게이션 링크
                    
                    //토글이 true = false 바꿈 false 면 true로 바꿈
                   
                }
                NavigationLink(destination: MyTextView()) {
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    
                    
                }
                
            }
          

        }
        
    }
}

#Preview {
    ContentView()
}

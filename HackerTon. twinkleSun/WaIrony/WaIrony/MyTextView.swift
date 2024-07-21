//
//  MyTextView.swift
//  WaIrony
//
//  Created by 허영재 on 7/16/24.
//

import SwiftUI


struct MyTextView: View {
    
    @State
    private var index : Int = 0
    
    private let backgroundcolors = [
        
        Color.red,
        Color.blue,
        Color.orange,
        Color.yellow,
        Color.green
    ]
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("배경아이템 인덱스 \(self.index + 1 )")
            
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0 ,maxWidth: .infinity,
                       minHeight: 0, maxHeight: .infinity)
            
            Spacer()
        }.background(backgroundcolors[index])
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                
                if(self.index == self.backgroundcolors.count - 1){
                    self.index = 0
                } else {
                    self.index += 1
                    }
                    
                print("배경아이템이 클릭되었다")
            }
        
    }
}

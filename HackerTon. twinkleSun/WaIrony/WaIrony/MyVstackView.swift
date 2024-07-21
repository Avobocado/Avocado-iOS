//
//  MyVstackView.swift
//  WaIrony
//
//  Created by 허영재 on 7/16/24.
//

import SwiftUI
struct MyStackView:View {
    //데이터를 연동시킨다
    @Binding
    var isActivated : Bool 
    
    var body: some View {
        VStack {
            Text("1")
                .fontWeight(.bold)
                .font(.largeTitle)
            Text("2")
                .fontWeight(.bold)
                .font(.largeTitle)
            Text("3")
                .fontWeight(.bold)
                .font(.largeTitle)
        }
        .background(.red)
    }
    struct MyVstackVie: PreviewProvider {
        static var previews: some View {
            MyStackView()
        }
    }
}


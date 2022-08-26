//
//  ContentView.swift
//  Day 6 App1
//
//  Created by Rasheed Abduljader on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var hight = ""
    @State var result = 0.0
    @State var health = ""
    
    var body: some View {
        
        VStack{
            
        Image("W")
        .resizable()
        .frame(width: 150, height: 150)
        
         Text("ادخل الطول والوزن")
                .frame(width: 200, height:60)
            VStack{
        TextField("weight",text: $weight)
                    .foregroundColor(.white)
                    .background(.blue.opacity(0.4))
                    .cornerRadius(4)
                    .frame(width: 100, height: 10)
        TextField("hight",text: $hight)
                    .foregroundColor(.white)
                    .background(.blue.opacity(0.4))
                    .cornerRadius(4)
                    .frame(width: 100, height: 40)
            }
            .padding()
            Button {
                result = bmicalc(wei: Double (weight) ?? 0.0, high: Double (hight) ?? 0.0 )
                
                if result <= 20{
                    health = "ضعيف"
                } else if result >= 20 && result <= 25{
                    health = "جيد"
                }else{
                    health = "سمين"
                }
                
            } label: {
                Text("احسب")
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(4)
                    .frame(width: 100, height: 60)
            }
            
            Text("BMI = \(result)")
            Text("الحالة = \(health)")

            
        }
    }
    func bmicalc (wei : Double, high : Double) ->
    Double {
        return wei / (high * high)
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



}

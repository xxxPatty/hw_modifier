//
//  ContentView.swift
//  hw_modifier
//
//  Created by 林湘羚 on 2020/11/30.
//

import SwiftUI

struct ContentView: View {
    @State private var scale:CGFloat=1
    @State private var brightness:Double=0
    @State private var cornerRadius:CGFloat=0
    @State private var opacity1:Double=1
    @State private var opacity2:Double=0
    @State private var grayscale:Double=0
    @State private var saturation:Double=0.5
    @State private var contrast:Double=1
    @State private var blur:CGFloat=0
    @State private var red:CGFloat=0
    @State private var green:CGFloat=0
    @State private var blue:CGFloat=0
    @State private var role=1
    @State private var degrees:Double=0     //照片旋轉
    @State private var background:Double=0.5
    @State private var borderWidth:Double=0
    @State private var shadow:Double=10
    @State private var accessoriesColor:Color=Color.pink
    @State private var degrees2:Double=0    //色相旋轉
    var body: some View {
       
        VStack{
            Picker(selection: $role, label: Text(""), content: {
                Text("禰豆子").tag(1)
                Text("炭治郎").tag(2)
            })
            .pickerStyle(SegmentedPickerStyle())
            if role==1{
                ZStack{
                    Rectangle()
                        .fill(Color(red:Double(red), green:Double(green), blue:Double(blue)))
                        .frame(width:300, height:400)
                        .rotationEffect(.degrees(Double(degrees*360)))
                        .scaleEffect(scale)
                        .opacity(opacity1)
                        
                    Image("禰豆子")
                        .resizable()
                        .scaledToFit()
                        .frame(width:UIScreen.main.bounds.width)
                        .scaleEffect(scale)
                        .brightness(brightness)
                        .cornerRadius(cornerRadius)
                        .opacity(opacity1)
                        .grayscale(grayscale)
                        .saturation(saturation)
                        .contrast(contrast)
                        .blur(radius:blur)
                        .rotationEffect(.degrees(Double(degrees*360)))
                        .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(Color.pink, lineWidth: CGFloat(borderWidth)))
                        .shadow(radius:CGFloat(shadow))
                        .hueRotation(Angle(degrees: degrees2*360))

                    Image("禰豆子衣服")
                        .resizable()
                        .scaledToFit()
                        .frame(width:UIScreen.main.bounds.width)
                        .scaleEffect(scale)
                        .brightness(brightness)
                        .opacity(opacity2)
                        .grayscale(grayscale)
                        .saturation(saturation)
                        .contrast(contrast)
                        .blur(radius:blur)
                        .rotationEffect(.degrees(Double(degrees*360)))
                    
                    Image("蝴蝶結")
                        .resizable()
                        .scaledToFit()
                        .frame(width:UIScreen.main.bounds.width)
                        .scaleEffect(scale)
                        .brightness(brightness)
                        .opacity(opacity1)
                        .grayscale(grayscale)
                        .saturation(saturation)
                        .contrast(contrast)
                        .blur(radius:blur)
                        .rotationEffect(.degrees(Double(degrees*360)))
                        .colorMultiply(accessoriesColor)
                }
            }else{
                ZStack{
                    Rectangle()
                        .fill(Color(red:Double(red), green:Double(green), blue:Double(blue)))
                        .frame(width:300, height:400)
                        .rotationEffect(.degrees(Double(degrees*360)))
                        .scaleEffect(scale)
                        .opacity(opacity1)
                        
                    Image("炭治郎")
                        .resizable()
                        .scaledToFit()
                        .frame(width:UIScreen.main.bounds.width)
                        .scaleEffect(scale)
                        .brightness(brightness)
                        .cornerRadius(cornerRadius)
                        .opacity(opacity1)
                        .grayscale(grayscale)
                        .saturation(saturation)
                        .contrast(contrast)
                        .blur(radius:blur)
                        .rotationEffect(.degrees(Double(degrees*360)))
                        .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(Color.pink, lineWidth: CGFloat(borderWidth)))
                        .shadow(radius:CGFloat(shadow))
                        .hueRotation(Angle(degrees: degrees2*360))
                    
                    
                    Image("炭治郎衣服")
                        .resizable()
                        .scaledToFit()
                        .frame(width:UIScreen.main.bounds.width)
                        .scaleEffect(scale)
                        .brightness(brightness)
                        .opacity(opacity2)
                        .grayscale(grayscale)
                        .saturation(saturation)
                        .contrast(contrast)
                        .blur(radius:blur)
                        .rotationEffect(.degrees(Double(degrees*360)))
                    
                    
                    Image("炭治郎耳環")
                        .resizable()
                        .scaledToFit()
                        .frame(width:UIScreen.main.bounds.width)
                        .scaleEffect(scale)
                        .brightness(brightness)
                        .opacity(opacity1)
                        .grayscale(grayscale)
                        .saturation(saturation)
                        .contrast(contrast)
                        .blur(radius:blur)
                        .rotationEffect(.degrees(Double(degrees*360)))
                        .colorMultiply(accessoriesColor)
                }
            }
            HStack{
                Button(action: {
                    let accessoriesColors=[Color.red, Color.green, Color.blue]
                    red=CGFloat(Double.random(in:0...1))
                    green=CGFloat(Double.random(in:0...1))
                    blue=CGFloat(Double.random(in:0...1))
                    scale=CGFloat(Double.random(in:0.7...1))
                    brightness=Double.random(in:0...0.5)
                    cornerRadius=CGFloat(Double.random(in:0...50))
                    opacity1=Double.random(in:0.9...1)
                    opacity2=Double.random(in:0...1)
                    grayscale=Double.random(in:0...1)
                    saturation=Double.random(in:0...20)
                    contrast=Double.random(in:0.5...1)
                    blur=CGFloat(Double.random(in:0...5))
                    degrees=Double.random(in:0...1)
                    background=Double.random(in:0...1)
                    shadow=Double.random(in:0...40)
                    degrees2=Double.random(in:0...1)
                    accessoriesColor=accessoriesColors.randomElement()!
                }, label: {
                    Text("快速產生圖片")
                        .padding(5)
                        .foregroundColor(Color(red:178/255, green:150/255, blue:125/255))
                        .background(Color.white)
                        .cornerRadius(3.0)
                })
                
                Button(action: {
                    red=0
                    green=0
                    blue=0
                    scale=1
                    brightness=0
                    cornerRadius=0
                    opacity1=1
                    opacity2=0
                    grayscale=0
                    saturation=0.5
                    contrast=1
                    blur=0
                    degrees=0
                    background=0.5
                    shadow=10
                    degrees2=0
                    accessoriesColor=Color.pink
                }, label: {
                    Text("原始圖片")
                        .padding(5)
                        .foregroundColor(Color(red:178/255, green:150/255, blue:125/255))
                        .background(Color.white)
                        .cornerRadius(3.0)
                })
            }
            
            
            Form{
                Group{
                    Group{
                        Slider(value:$red, in:0...1, minimumValueLabel:Text("衣服red"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$green, in:0...1, minimumValueLabel:Text("衣服green"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$blue, in:0...1, minimumValueLabel:Text("衣服blue"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$scale, in:0...1, minimumValueLabel:Text("大小"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$brightness, in:0...1, minimumValueLabel:Text("亮度"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$cornerRadius, in:0...50, minimumValueLabel:Text("圓角"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$opacity1, in:0...1, minimumValueLabel:Text("整體透明度"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$opacity2, in:0...1, minimumValueLabel:Text("衣服透明度"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$grayscale, in:0...1, minimumValueLabel:Text("灰階"), maximumValueLabel:Text("")){
                            Text("")
                        }
                    }
                    Group{
                        Slider(value:$saturation, in:0...20, minimumValueLabel:Text("飽和度"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$contrast, in:0...1, minimumValueLabel:Text("對比度"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$blur, in:0...20, minimumValueLabel:Text("模糊度"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$degrees, in:0...1, minimumValueLabel:Text("旋轉"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$background, in:0...1, minimumValueLabel:Text("粉"), maximumValueLabel:Text("紫")){
                            Text("")
                        }
                        Slider(value:$borderWidth, in:0...20, minimumValueLabel:Text("邊框"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        Slider(value:$shadow, in:0...40, minimumValueLabel:Text("陰影"), maximumValueLabel:Text("")){
                            Text("")
                        }
                        ColorPicker("配件顏色", selection:$accessoriesColor)
                        
                        Slider(value:$degrees2, in:0...1, minimumValueLabel:Text("色相旋轉"), maximumValueLabel:Text("")){
                            Text("")
                        }
                    }
                }
            }
        }
        .background(LinearGradient(gradient:Gradient(colors:[Color.pink, Color.purple]), startPoint:UnitPoint(x: 0, y: 0), endPoint:UnitPoint(x: CGFloat(background), y: CGFloat(background))))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

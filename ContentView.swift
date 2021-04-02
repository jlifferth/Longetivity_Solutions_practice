//
//  ContentView.swift
//  Longetivity_v1
//
//  Created by Jonathan Lifferth on 3/17/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                //Blood sugar log
                Text("Blood sugar log")
                    .font(.custom("Nunito Bold", size: 24))
                    .frame(width: 300, height: 30, alignment: .topLeading)
                    .foregroundColor(.black)
                    
                VStack {
                    HStack {
                        //Your level: 235 mg/dL: HIG...
                        Text("Your level: 235 mg/dL: ")
                            .font(.custom("Nunito Regular", size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 1)))
                            .foregroundColor(.black)
                        Text("HIGH                          ")
                            .font(.custom("Nunito Bold", size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.65, blue: 0.35, alpha: 1)))
                            .foregroundColor(.black)
                            .padding()
                        Text("April 2, 2021")
                            .font(.custom("Nunito Regular", size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 1)))
                            .foregroundColor(.black)
                    }
                    HStack {
                        Text("Estimated time of eating: ")
                            .font(.custom("Nunito Regular", size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 1)))
                            .foregroundColor(.black)
                        Text("9:15 am")
                            .font(.custom("Nunito Bold", size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 1)))
                            .foregroundColor(.black)
                        Text("  - Time of log: ")
                            .font(.custom("Nunito Regular", size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 1)))
                            .foregroundColor(.black)
                        Text("9:41 am")
                            .font(.custom("Nunito Bold", size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 1)))
                            .foregroundColor(.black)
                    }
                    
                }
                .padding()
                
                ZStack {
                    //Rectangle 80
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0.8784313797950745, green: 0.8784313797950745, blue: 0.8784313797950745, alpha: 1)))
                    .frame(width: 371, height: 88)
                    VStack {
                        //How are you feeling?
                        Text("How are you feeling?")
                            .font(.custom("Nunito Bold", size: 14))
                            .frame(width: 300, height: 40, alignment: .leading)
                            .foregroundColor(.black)
                        HStack(spacing: 30) {
                            Text("😃").font(.custom("Nunito Bold", size: 30))
                            Text("🙂").font(.custom("Nunito Bold", size: 30))
                            Text("😐").font(.custom("Nunito Bold", size: 30))
                            Text("☹️").font(.custom("Nunito Bold", size: 30))
                            Text("😫").font(.custom("Nunito Bold", size: 30))
                        }
                    }
                }
                ZStack {
                    //Rectangle 81
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0.8784313797950745, green: 0.8784313797950745, blue: 0.8784313797950745, alpha: 1)))
                        .frame(width: 371, height: 118)
                    VStack(spacing: 20) {
                        //How much have you moved in...
                        Text("How much have you moved in the past half hour?").font(.custom("Nunito Bold", size: 14))
                            .foregroundColor(.black)
                        HStack(spacing: 20) {
                            Text("🏃‍♂️").font(.custom("Nunito Bold", size: 46))
                            Text("🚶‍♂️").font(.custom("Nunito Bold", size: 46))
                            Text("🧍").font(.custom("Nunito Bold", size: 46))
                            Text("🛋").font(.custom("Nunito Bold", size: 46))
                        }
                    }
                }
                ZStack {
                    //Rectangle 82
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0.8784313797950745, green: 0.8784313797950745, blue: 0.8784313797950745, alpha: 1)))
                        .frame(width: 371, height: 242)
                    VStack(spacing: 20) {
                        //Have you eaten in the last...
                        Text("Have you eaten in the last half hour?").font(.custom("Nunito Bold", size: 14))
                            .foregroundColor(.black)
                        HStack(spacing: 100) {
                            VStack {
                                //🍽
                                Text("🍽").font(.custom("Nunito Bold", size: 35))
                                //No
                                Text("No").font(.custom("Nunito Bold", size: 14)).multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                            }
                            VStack {
                                //🍲
                                Text("🍲").font(.custom("Nunito Bold", size: 35))
                                //Yes
                                Text("Yes").font(.custom("Nunito Bold", size: 14)).multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                            }
                        }
                        HStack {
                            VStack {
                                Image(systemName: "camera.fill")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                //add a photo
                                Text("add a photo").font(.custom("Nunito Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.51, green: 0.51, blue: 0.51, alpha: 1))).multilineTextAlignment(.center)
                            }
                            VStack {
                                //What have you eaten?
                                Text("What have you eaten?").font(.custom("Nunito Regular", size: 14))
                                    .foregroundColor(.black)
                                //Rectangle 78
                                
                                Rectangle()
                                    .strokeBorder(Color(#colorLiteral(red: 0.5098039507865906, green: 0.5098039507865906, blue: 0.5098039507865906, alpha: 1)), lineWidth: 1)
                                .frame(width: 291, height: 39)
                            }
                        }
                    }
                    
                }
                ZStack {
                    //Rectangle 83
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0.8784313797950745, green: 0.8784313797950745, blue: 0.8784313797950745, alpha: 1)))
                    .frame(width: 371, height: 88)
                    VStack {
                        //Notes
                        Text("Notes").font(.custom("Nunito Bold", size: 14))
                            .frame(width: 300, height: 20, alignment: .leading)
                            .foregroundColor(.black)
                        //Rectangle 79
                        Rectangle()
                            .strokeBorder(Color(#colorLiteral(red: 0.5098039507865906, green: 0.5098039507865906, blue: 0.5098039507865906, alpha: 1)), lineWidth: 1)
                        .frame(width: 327, height: 39)
                    }
                }
                
                ZStack {
                    //Rectangle 2
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(#colorLiteral(red: 0.9960784316062927, green: 0.6470588445663452, blue: 0.3529411852359772, alpha: 1)))
                    .frame(width: 353, height: 40)
                    //Save blood sugar log
                    Text("Save blood sugar log").font(.custom("Nunito Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                }
                
                Spacer()
            }
            
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

//
//  MainView.swift
//  module_project
//
//  Created by Анна on 28.10.2024.
//

import Foundation
import SwiftUI

struct MainView: View {
    let programNames = [
        "After Effects",
        "Blender",
        "Premier Pro",
        "Cinema 4D",
        "Photoshop"
    ]
    let categoryNames = [
        "Моушен-дизайн",
        "Анимация",
        "VFX",
        "Обработка фото",
        "Обработка видео",
        "3D-графика"
    ]
    let instrumentNames = [
        "Плагины",
        "Пресеты и эффекты",
        "3D-модели и текстуры",
        "Скрипты",
        "Настройки сцен",
        "Шейдеры, риги"
    ]
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("backgroundColor")
                    .edgesIgnoringSafeArea(.all)

                ScrollView {
                    VStack {
                        HStack {
                            NavigationLink(destination: LandingView()) {
                                Text("О проекте")
                                    .font(.custom("BasisGrotesquePro-Medium", size: 16))
                                    .foregroundColor(Color("textColor"))

                            }
                            
                            Spacer()
    
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .offset(x: -20)

                            
                            Spacer()

                            NavigationLink(destination: SettingsView()) {
                                Image(systemName: "gearshape.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color("buttonColor"))
                            }
                        }
                        .padding(.horizontal)
                        .offset(y: -10)

                        

                        TextField("Найти", text: .constant(""))
                            .font(.custom("BasisGrotesquePro-Regular", size: 16))
                            .padding()
                            .background(Color("cardColor"))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .offset(y: -20)


                        HStack {
                            Text("Тренды")
                                .font(.custom("BasisGrotesquePro-Medium", size: 24))
                            Spacer()
                            Image(systemName: "arrow.right")
                        }
                        .padding(.horizontal)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                ForEach(0..<3) { index in
                                    EffectCardView()
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom, 10)
                        }

                        Button(action: {}) {
                            Text("Опубликовать эффект")
                                .font(.custom("BasisGrotesquePro-Medium", size: 16))
                                .foregroundColor(Color("buttonText"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("accentColor"))
                                .cornerRadius(10)
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 20)


                        VStack(spacing: 20) {
                            HStack {
                                Text("Категории")
                                    .font(.custom("BasisGrotesquePro-Medium", size: 24))
                                Spacer()
                                Image(systemName: "arrow.right")
                            }
                            .padding(.horizontal)

                            VStack(spacing: 12) {
                                ForEach(0..<6) { index in
                                    ZStack (alignment: .leading) {
                                        Image("backgroundImage\(index)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(height: 80)
                                            .cornerRadius(10)
                                            .clipped()

                                        Text(categoryNames[index])
                                            .font(.custom("BasisGrotesquePro-Medium", size: 20))
                                            .foregroundColor(.white)
                                            .bold()
                                            .padding(.leading, 24)

                                        Spacer()
                                    }
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom, 10)


                            HStack {
                                Text("Инструменты")
                                    .font(.custom("BasisGrotesquePro-Medium", size: 24))
                                Spacer()
                                Image(systemName: "arrow.right")
                            }
                            .padding(.horizontal)

                            VStack(alignment: .leading, spacing: 10) {
                                ForEach(0..<6) { index in
                                    Text(instrumentNames[index])
                                        .font(.custom("BasisGrotesquePro-Medium", size: 20))
                                        .foregroundColor(Color("buttonText"))
                                }

                            }
                            .padding(.vertical, 18)
                            .frame(maxWidth: .infinity)
                            .background(Color("accentColor"))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.bottom, 10)


                            HStack {
                                Text("Программы")
                                    .font(.custom("BasisGrotesquePro-Medium", size: 24))
                                Spacer()
                                Image(systemName: "arrow.right")
                            }
                            .padding(.horizontal)

                            VStack(spacing: 12) {
                                ForEach(0..<5) { index in
                                    HStack(spacing: 12) {
                                        Image("programImage\(index)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 40, height: 40)
                                            .clipShape(Circle())
                                            .padding(.leading, 24)

                                        Text(programNames[index])
                                            .font(.custom("BasisGrotesquePro-Medium", size: 20))
                                        Spacer()
                                    }
                                    .frame(height: 80)
                                    .frame(maxWidth: .infinity)
                                    .background(Color("cardColor"))
                                    .cornerRadius(10)

                                }
                            }
                            .padding(.horizontal)

                        }

                    }
                }
            }
        }
        
    }
}

struct EffectCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image("cardCover")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .frame(maxWidth: .infinity)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Глитч-синхронизация")
                    .font(.custom("BasisGrotesquePro-Medium", size: 20))

                Text("Эффект цифровых сбоев с акцентом на ритм и музыкальные переходы, создающий энергичный, «ломаный» стиль")
                    .font(.custom("BasisGrotesquePro-Regular", size: 14))
                    .foregroundColor(Color("textColor"))
                HStack(spacing: 5) {
                    Spacer()
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .font(.custom("BasisGrotesquePro-Regular", size: 16))
                        .frame(alignment: .center)
                }
                .padding(.bottom)
            }
            .padding(.horizontal)
 
        }
        .background(Color("cardColor"))
        .cornerRadius(10)
        .frame(width: 300)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

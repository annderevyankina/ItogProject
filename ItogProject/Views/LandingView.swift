//
//  LandingView.swift
//  module_project
//
//  Created by Анна on 28.10.2024.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ZStack {
            Color("backgroundColor")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .offset(y: -20)
                        .padding(.bottom, -30)
                    
                    Image("landing0")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .padding(.bottom, 10)
                    
                    Text("об эффектах, пресетах, фильтрах и вдохновении")
                        .textCase(.uppercase)
                        .font(.custom("BasisGrotesquePro-Bold", size: 36))
                        .lineSpacing(0)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 6)
                    
                    Image("landing1")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 220)
                        .padding(.bottom, 30)
                    
                    VStack(alignment: .center, spacing: 10) {
                        Text("находи новое и вдохновляйся")
                            .textCase(.uppercase)
                            .font(.custom("BasisGrotesquePro-Bold", size: 28))
                            .multilineTextAlignment(.center)
                        
                        Text("Выбирай категории на главной странице по программам и конкретным задачам или используй умный поиск")
                            .font(.custom("BasisGrotesquePro-Medium", size: 16))
                            .multilineTextAlignment(.center)
                    }
                    
                    HStack(spacing: 20) {
                        Image("landing2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                        Image("landing3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                    }
                    
                    HStack(spacing: 20) {
                        Image("landing4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                        Image("landing5")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                    }
                    .padding(.bottom, 30)
                    
                    VStack(spacing: 10) {
                        Text("объединяй идеи в коллекции")
                            .textCase(.uppercase)
                            .font(.custom("BasisGrotesquePro-Bold", size: 28))
                            .multilineTextAlignment(.center)
                        Text("Сохраняй референсы, необходимые эффекты и ссылки на другие ресурсы в единой папке, доступной с разных устройств")
                            .font(.custom("BasisGrotesquePro-Medium", size: 16))
                            .multilineTextAlignment(.center)
                    }
                    .padding(.bottom, 40)
                    
                    ZStack {
                        Image("landing6")
                            .resizable()
                            .scaledToFit()
                            .rotationEffect(.degrees(-12))
                            .offset(x: -70, y: -20)
                            .zIndex(1)
                        
                        Image("landing7")
                            .resizable()
                            .scaledToFit()
                            .rotationEffect(.degrees(2))
                            .offset(x: 70, y: 0)
                            .zIndex(2)
                        
                        Image("landing8")
                            .resizable()
                            .scaledToFit()
                            .rotationEffect(.degrees(13))
                            .offset(y: 150)
                            .zIndex(3)
                    }
                    .frame(height: 200)
                    .padding(.bottom, 200)
                    
                    VStack(spacing: 10) {
                        Text("обсуждай эффекты с сообществом")
                            .textCase(.uppercase)
                            .font(.custom("BasisGrotesquePro-Bold", size: 28))
                            .multilineTextAlignment(.center)
                        Text("Получай фидбэк от людей из индустрии и улучшай свои работы. Публикуй свои пресеты для сообщества")
                            .font(.custom("BasisGrotesquePro-Medium", size: 16))
                            .multilineTextAlignment(.center)
                    }
                    .padding(.bottom, 20)
                    
                    VStack(spacing: 20) {
                        HStack {
                            Image("landing9")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 306)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 5)
                        
                        HStack {
                            Spacer()
                            Image("landing10")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 306)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 5)
                        
                        HStack {
                            Image("landing11")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 306)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 5)
                    }
                    .padding(.bottom, 30)
                    
                    VStack(spacing: 10) {
                        Text("настраивай ленту под себя")
                            .textCase(.uppercase)
                            .font(.custom("BasisGrotesquePro-Bold", size: 28))
                            .multilineTextAlignment(.center)
                        Text("Подписывайся на чужие коллекции и просматривай их обновления в ленте на главной странице")
                            .font(.custom("BasisGrotesquePro-Medium", size: 16))
                            .multilineTextAlignment(.center)
                    }
                    
                    HStack(spacing: 20) {
                        VStack(spacing: 5) {
                            Image("landing12")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            Text("Название 3")
                                .font(.custom("BasisGrotesquePro-Medium", size: 16))
                        }
                        VStack(spacing: 5) {
                            Image("landing13")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            Text("Название 4")
                                .font(.custom("BasisGrotesquePro-Medium", size: 16))
                        }
                    }
                    
                    HStack(spacing: 20) {
                        VStack(spacing: 5) {
                            Image("landing14")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            Text("Название 3")
                                .font(.custom("BasisGrotesquePro-Medium", size: 16))
                        }
                        VStack(spacing: 5) {
                            Image("landing15")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            Text("Название 4")
                                .font(.custom("BasisGrotesquePro-Medium", size: 16))
                        }
                    }
                    
                }
                .padding()
                
                VStack(spacing: 6) {
                    Text("узнай первым о запуске")
                        .textCase(.uppercase)
                        .font(.custom("BasisGrotesquePro-Bold", size: 36))
                        .lineSpacing(0)
                        .multilineTextAlignment(.center)
                    
                    Text("Не пропусти свежие новости\nот нашего сервиса")
                        .font(.custom("BasisGrotesquePro-Regular", size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
                    
                    TextField("Твой email", text: .constant(""))
                        .font(.custom("BasisGrotesquePro-Regular", size: 16))
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    Button(action: {}) {
                        Text("Подписаться")
                            .font(.custom("BasisGrotesquePro-Bold", size: 16))
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("accentColor"))
                            .foregroundColor(Color("buttonText"))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.bottom, 60)
                    }
                }
                .padding()
                
                ZStack {
                    Color("accentColor") 
                        .ignoresSafeArea()
                    VStack {
                        Image("efix")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                        
                        VStack(spacing: 10) {
                            Text("команда")
                                .font(.custom("BasisGrotesquePro-Medium", size: 16))
                            VStack(spacing: 5) {
                                Text("Константин Удод")
                                Text("Ксения Климова")
                                Text("Анна Деревянкина")
                            }
                            .font(.custom("BasisGrotesquePro-Medium", size: 20))
                        }
                        .padding(.bottom, 20)
                        
                        VStack(spacing: 10) {
                            Text("кураторы")
                                .font(.custom("BasisGrotesquePro-Medium", size: 16))
                            VStack(spacing: 5) {
                                Text("Захар День")
                                Text("Вадим Булгаков")
                                Text("Дмитрий Александров")
                            }
                            .font(.custom("BasisGrotesquePro-Medium", size: 20))
                        }
                        .padding(.bottom, 50)
                        
                    }
                    .foregroundColor(Color("buttonText"))
                    
                }
                .padding(-40)
            }
            .scrollIndicators(.hidden)
        }
        
    }
    
    
    struct LandingView_Previews: PreviewProvider {
        static var previews: some View {
            LandingView()
        }
    }
}

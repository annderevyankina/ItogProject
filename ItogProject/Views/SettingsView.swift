//
//  SettingsView.swift
//  module_project
//
//  Created by Анна on 28.10.2024.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject var settingsViewModel = SettingsViewModel()
    @State private var showingImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var isEditingUsername = false

    var body: some View {
        ZStack {
            Color("backgroundColor")
                .ignoresSafeArea()

            VStack(spacing: 10) {
                Button(action: {
                    showingImagePicker = true
                }) {
                    if let profileImage = settingsViewModel.settings.profileImage {
                        Image(uiImage: profileImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                    } else {
                        Image("avatar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                    }
                }
                .sheet(isPresented: $showingImagePicker) {
                    ImagePicker(selectedImage: $selectedImage)
                        .onDisappear {
                            if let image = selectedImage {
                                settingsViewModel.updateProfileImage(to: image)
                            }
                        }
                }
                .padding(.bottom, 6)

                HStack {
                    if isEditingUsername {
                        TextField("Имя пользователя", text: $settingsViewModel.settings.username)
                            .font(.custom("BasisGrotesquePro-Medium", size: 20))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 10)
                            .background(Color("cardColor"))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.bottom, 6)
                            .offset(x: 10)

                        Button(action: {
                            isEditingUsername = false
                        }) {
                            Image(systemName: "checkmark")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color("buttonColor"))
                        }
                        .padding(.trailing, 10)
                    } else {
                        Text(settingsViewModel.settings.username)
                            .font(.custom("BasisGrotesquePro-Medium", size: 36))
                            .multilineTextAlignment(.center)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .offset(x: 20)

                        Button(action: {
                            isEditingUsername.toggle()
                        }) {
                            Image(systemName: "pencil")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color("buttonColor"))
                        }
                        .padding()
                    }
                }

                Text("@seva_sdelal")
                    .font(.custom("BasisGrotesquePro-Regular", size: 16))
                    .foregroundColor(Color("buttonColor"))
                    .offset(y: -10)

                Text("Я специалист по Photoshop и Blender. У меня есть опыт в 3D-моделировании и обработке изображений. Мне нравится работать с текстурами и освещением, а также превращать обычные фото в красивые картинки")
                    .font(.custom("BasisGrotesquePro-Regular", size: 16))
                    .foregroundColor(Color("textColor"))
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)

                Spacer()
            }
            .foregroundColor(Color("textColor"))
            .padding()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

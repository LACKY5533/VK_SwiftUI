//
//  ContentView.swift
//  VK_SwiftUI
//
//  Created by LACKY on 07.02.2022.
//

import SwiftUI
import Combine

struct LoginView: View {
    
    @State private var login = "admin"
    @State private var password = "admin"
    @State private var shouldShowLogo: Bool = true
    
    @Binding var isUserLoggedIn: Bool
    
    @State private var showIncorrentCredentialsWarning = false
    
    private let keyboardIsOnPublisher = Publishers.Merge(
        NotificationCenter
            .default
            .publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .map { _ in true},
        
        NotificationCenter
            .default
            .publisher(for: UIResponder.keyboardWillHideNotification)
            .map { _ in false}
    ).removeDuplicates()
    
    var body: some View {
        
        ZStack {
            GeometryReader { geometry in
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: geometry.size.width,
                           maxHeight: geometry.size.height)
            }
        
            VStack {
                ScrollView {
                    if shouldShowLogo {
                        Text("Вход в аккаунт")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.green)
                    }
                    
                    Spacer(minLength: 60)
                    
                    VStack {
                        TextField("Логин", text: $login)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        Spacer(minLength: 15)
                        
                        SecureField("Пароль", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .frame(maxWidth: 250)
                    
                    Spacer(minLength: 30)
                    
                    Button (action: verifyLoginData) {
                        Text("Войти")
                            .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }.disabled(login.isEmpty || password.isEmpty)
                    
                    Spacer()
                }.onReceive(keyboardIsOnPublisher) { isKeyboardOn in
                    withAnimation(Animation.easeOut(duration: 0.5)) {
                        self.shouldShowLogo = !isKeyboardOn
                    }
                }
                
            }
        }.onTapGesture {
            UIApplication.shared.endEditing()
        }.alert(isPresented: $showIncorrentCredentialsWarning) {
            Alert(title: Text("Ошибка!"),
                  message: Text("Логин или пароль введены неправильно"))
        }
    }
    
    private func verifyLoginData() {
        if login == "admin" && password == "admin" {
            isUserLoggedIn = true
        } else {
            password = ""
        }
    }
    
}



extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

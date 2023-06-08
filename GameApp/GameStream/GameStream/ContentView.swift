//
//  ContentView.swift
//  GameStream
//
//  Created by Isai on 06/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Spacer()
            
            Color(red: 19/255, green: 30/255, blue: 54/255, opacity: 1.0).ignoresSafeArea()
            
            VStack{
                Image("appLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250)
                    .padding(.bottom, 20)
                
                InicioYRegistroView()
            }
        }
    }
}

struct InicioYRegistroView:View {
    
    @State var tipoInicioSesion = true
    
    var body: some View{
        VStack{
            HStack{
                

                Button("Inicia Sesión") { tipoInicioSesion = true }
                    .foregroundColor(tipoInicioSesion ? .white : .gray)
                    .fontWeight(tipoInicioSesion ? .bold : .regular)
                    .font(.system(size: 18))
                
                Spacer()
                
                Button("Reistrate") { tipoInicioSesion = false}
                    .foregroundColor(tipoInicioSesion ? .gray : .white)
                    .fontWeight(tipoInicioSesion ? .regular : .bold)
                    .font(.system(size: 18))


            }.padding(.horizontal, 40) // adds both leading and trailing padding
            
            Spacer(minLength: 25)
            
            if tipoInicioSesion == true {
                InicioSesionView()
            } else {
                RegistroSesionView()
            }
        }
    }
}

struct InicioSesionView:View {
    
    @State private var email: String = ""
    
    @State private var password: String = ""
    
    var body: some View{
        
        ScrollView{
            VStack(alignment: .leading){
                
                Text("Correo Electrónico").foregroundColor(Color("Dark-Cian")).fontWeight(.bold)
                
                ZStack(alignment: .leading){
                    if email.isEmpty{
                        Text("ejemplo@gmail.com").font(.caption).foregroundColor(.gray)
                    }
                    TextField(
                        "",
                        text: $email
                    )
                    .disableAutocorrection(true)
                }
                
                Divider().frame(height: 1).background(Color("Dark-Cian")).padding(.bottom)
                
            }.padding(.horizontal, 20)
            
            VStack(alignment: .leading){
                
                Text("Contraseña").foregroundColor(Color(.white)).fontWeight(.bold)
                
                ZStack(alignment: .leading){
                    if email.isEmpty{
                        Text("******").font(.caption).foregroundColor(.gray).fontWeight(.bold)
                    }
                    SecureField(
                        "",
                        text: $password
                    )
                    .disableAutocorrection(true)
                }
                
                Divider().frame(height: 1).background(Color.gray).padding(.bottom)
                
            }.padding(.horizontal, 20)
            
            HStack{
                
                Spacer()
                
                Button(action: {
                    print("Button tapped!")
                }) {
                    Text("¿Olvidaste tu contraseña?")
                        .padding(.trailing)
                        .foregroundColor(Color("Dark-Cian"))
                        .font(.system(size: 12))
                }
            }
            
            Button(action: login, label: {
                Text("INICIAR SESIÓN")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 22, alignment: .center)
                    .border(Color.red)
            })
        }
    }
}

func login() {
    print("Login")
}
struct RegistroSesionView:View {
    var body: some View{
        Text("Reistrate")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

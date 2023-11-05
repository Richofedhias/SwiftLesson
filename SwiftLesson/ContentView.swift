//
//  ContentView.swift
//  SwiftLesson
//
//  Created by Richo Fedhia on 04/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing:20){
                Logo()
                FormBox()
            }
            .padding(.all,20)
        }
       
     
    }
}

#Preview {
//    ContentView()
//    HandView()
    LessonTwo()
}

struct Logo: View {
    var body: some View {
        VStack {
           
            Image(systemName: "swift")
                .resizable()
                .frame(width: 100,height: 100)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
        }
        Text("Hello, Richo Mobile Developer!")
            .foregroundColor(Color.blue)
    }
}

struct FormBox: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack(alignment:.leading){
            Text("Username").font(.callout).bold()
            TextField("Username...",text: $username).textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Password").font(.callout).bold()
            SecureField("Password...",text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {print("Hello Button")}){
                HStack{
                    Text("Sign")
                    Spacer()
                }
                
                
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            .foregroundColor(Color.white)
            
        }
        .padding(.all,30)
        .background(Color.orange)
        .cornerRadius(10)
    }
}

struct LessonTwo:View {
    var body: some View {
        NavigationView{
            Form{
                Section(){
                    HStack{
                        Image("pas_foto")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        VStack(alignment:.leading){
                            Text("Richo Fedhia S").font(.headline)
                            Text("Code Enthusiast").font(.caption)
                        }
                        
                    }
                    .padding(.top,10)
                    .padding(.bottom,10)
                }
//                Section Pengaturan Umum
                Section(header: Text("Pengaturan Umum")){
                    HStack(spacing : 20){
                        Image(systemName: "star.fill")
                            .frame(width: 35,height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Pesan Berbintang")
                    }
                    
                    HStack(spacing : 20){
                        Image(systemName: "tv")
                            .frame(width: 35,height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("WhatsApp Web/Desktop")
                    }
                }
                
                //   Section Pengaturan Umum
                    Section(header: Text("Pengaturan Akun")){
                    HStack(spacing : 20){
                        NavigationLink(destination: ContentView()){
                            Image(systemName: "person")
                             .frame(width: 35,height: 35)
                             .background(Color.blue)
                             .cornerRadius(10)
                             .foregroundColor(Color.white)
                                Text("Akun")
                        }
                  
                                        }
                                    
                    HStack(spacing : 20){
                    Image(systemName: "phone.circle")
                    .frame(width: 35,height: 35)
                    .background(Color.green)
                    .cornerRadius(10)
                    .foregroundColor(Color.white)
                    Text("Chat")
                                        }
                                }
                
            }.navigationBarTitle("Setting")
        }
    }
}

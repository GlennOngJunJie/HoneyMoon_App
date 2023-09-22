//
//  InfoView.swift
//  StyleRing
//
//  Created by Glenn Ong on 22/9/23.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    let haptics = UINotificationFeedbackGenerator()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                AppInfoView()
                
                Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                CreditsView()
                
                Spacer(minLength: 10)
                
                Button(action: {
//                    print("A button was tapped.")
                    playSound(sound: "sound-click", type: "mp3")
                    self.haptics.notificationOccurred(.success)
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    InfoView()
}

struct AppInfoView: View {
    var body: some View {
    VStack(alignment: .leading, spacing: 10) {
        RowAppInfoView(ItemOne: "Application", ItemTwo: "StyleRing")
        RowAppInfoView(ItemOne: "Compatibility", ItemTwo: "IPhone & IPad")
        RowAppInfoView(ItemOne: "Developer", ItemTwo: "Glenn Ong JunJie")
        RowAppInfoView(ItemOne: "Designer", ItemTwo: "Glenn Ong JunJie")
        RowAppInfoView(ItemOne: "Website", ItemTwo: "stylering.glenn.com")
        RowAppInfoView(ItemOne: "Version", ItemTwo: "1.0.0")
        }
    }
}

struct RowAppInfoView: View {
    var ItemOne: String
    var ItemTwo: String
    var body: some View {
        VStack {
            HStack {
                Text(ItemOne).foregroundColor(Color.gray)
                Spacer()
                Text(ItemTwo)
            }
            Divider()
        }
    }
}

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack{
                Text("Photos").foregroundColor(Color.gray)
                Spacer()
                Text("Unsplash")
            }
            
            Divider()
            
            Text("Photographers").foregroundColor(Color.gray)
            
            Text("Nora Xu (Product Manager), Voon Shu Ting (Product Manager/Marketing), Glenn Ong JunJie(Project Manager/Developer)")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .font(.footnote)
        }
    }
}

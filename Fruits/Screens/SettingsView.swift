//
//  SettingsView.swift
//  Fruits
//
//  Created by Hasan on 4/3/24.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("showOnboarding12") var showOnboarding : Bool = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing:20){
                    // MARK: - Fruits
                    GroupBox(label:                         HStack{
                        Text("Fruits")
                        Spacer()
                        Image(systemName: "info.circle.fill")
                    }
                        .font(.title3)
                        .fontWeight(.bold)){
                            Divider().padding(.vertical, 5)
                            HStack(spacing:10){
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: 80)
                                    .cornerRadius(12)
                                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol, Fruits are source of many essential nutrients, including potasium, dietary fiber, vitamins, and much more.")
                                    .font(.footnote)
                            }
                        }
                    
                    // MARK: - Customization
                    
                    GroupBox(label:                         HStack{
                        Text("Customization")
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                        .font(.title3)
                        .fontWeight(.bold)){
                            Divider().padding(.vertical, 5)
                            Text("If you wish, you can restart the application by toogle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .font(.footnote)
                            
                            Toggle(isOn: $showOnboarding) {
                                Text("Restart".uppercased())
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundStyle(.gray)
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .cornerRadius(10)
                            )
                            .padding(.top, 10)
                        }
                    
                    // MARK: - Application
                    
                    GroupBox(label:                         HStack{
                        Text("Application")
                        Spacer()
                        Image(systemName: "apps.iphone")
                    }
                        .font(.title3)
                        .fontWeight(.bold)){
                           
                            CustomLabeledContent(label: "Developer", value: "Hasan")
                            CustomLabeledContent(label: "Designer", value: "Robert")
                            CustomLabeledContent(label: "Compatibility", value: "iOS 17")
                            CustomLabeledContent(label: "SwiftUI", value: "5.0")
                            CustomLabeledContent(label: "Version", value: "1.0.0")
                        }
                    
                    
                }//: VStack
                .padding(.horizontal,20)
                .padding(.vertical, 30)
            }//: ScrollView
            .navigationTitle(Text("Settings"))
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button{
                presentationMode.wrappedValue.dismiss()
            }label: {
                Image(systemName: "xmark")
                    .fontWeight(.bold)
            })
        }
        
        
    }
}

#Preview {
    SettingsView()
}

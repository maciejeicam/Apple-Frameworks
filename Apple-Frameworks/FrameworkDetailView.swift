//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Maciej Michalik on 03/03/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
                VStack{
                    HStack{
                        Spacer()
                        Button{
                            isShowingDetailView = false
                        }label: {
                            Image(systemName: "xmark")
                                .foregroundColor(Color(.label))
                                .imageScale(.large)
                                .frame(width: 44, height: 44)
                            
                            
                        }
                    }
                    .padding()
                    
                    Spacer()
                    
                FrameworkTitleView(framework: framework)
                    
                    Text(framework.description)
                        .font(.body)
                        .padding()
                    
                    Spacer()
                    
                    Button {
                        isShowingSafariView = true
                    }label: {
                        AFButton(title: "Learn more")
                    }
                }
                .fullScreenCover(isPresented: $isShowingSafariView) {       //full screen view
                    SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                }
            }
        }

    


struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}

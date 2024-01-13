//
//  OnboardingView.swift
//  Coordinate Pattern iOS
//
//  Created by Tusher on 1/13/24.
//

import SwiftUI

struct OnboardingView: View {
    
    var doneRequested : () -> ()
    
    var body: some View {
        TabView {
            Image("iOS")
                .resizable()
                .scaledToFit()
                .tag(0)
            
            Image("swift")
                .resizable()
                .scaledToFit()
                .tag(0)
            
            Image("xcode")
                .resizable()
                .scaledToFit()
                .tag(0)
            
           
            Button("Done") {
                doneRequested()
            }
            
            
        }.tabViewStyle(PageTabViewStyle())
            .background(Color.red)
            .ignoresSafeArea(.all)
      
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(doneRequested:{
            
        })
    }
}

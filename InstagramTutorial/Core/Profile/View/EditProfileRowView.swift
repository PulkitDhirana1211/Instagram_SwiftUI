//
//  EditProfileRowView.swift
//  InstagramTutorial
//
//  Created by Pulkit Dhirana on 22/07/23.
//

import SwiftUI

struct EditProfileRowView: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            
            VStack {
                TextField(placeholder, text: $text)
                
                Divider()
            }
        }
        .font(.subheadline)
        .frame(height: 36)
    }
}

//struct EditProfileRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditProfileRowView()
//    }
//}

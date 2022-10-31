//
//  TitleRow.swift
//  MessangerDemo
//
//  Created by Olegio on 31.10.2022.
//

import SwiftUI

struct TitleRow: View {
    var imageURL = URL(string: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2864&q=80")
    var name = "Valery Beauty"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageURL) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .cornerRadius(60)
            } placeholder: {
                ProgressView()
                    .tint(.white)
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(.white)
                Text("Online")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.green)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(Color("Violet"))
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Violet"))
    }
}

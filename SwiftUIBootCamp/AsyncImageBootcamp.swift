//
//  AsyncImageBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 16/11/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    let url2 = URL(string: "https://pisum.photos/400")
    
    var body: some View {
        VStack {
            //AsyncImage(url: url)
            
            /// it returns ``Image`` which supports all the modifiers
            AsyncImage(url: url) { returnedImage in
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            } placeholder: {
                ProgressView()
            }
            
            /*
             case empty -> NO image loaded
             case success(Image) -> image loaded returned image
             case failure(error) -> image failed loading
             */
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                case .failure(_):
                    Image(systemName: "questionmark")
                        .font(.largeTitle)
                default:
                    Image(systemName: "questionmark")
                        .font(.largeTitle)
                }
            }
        }
        
    }
}

#Preview {
    AsyncImageBootcamp()
}

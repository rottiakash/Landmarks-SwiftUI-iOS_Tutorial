//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Akash Rotti on 16/12/20.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate).frame(height:300).ignoresSafeArea(edges: .top)
            CircleImage(image: landmark.image).offset(y:-130)
                .padding(.bottom,-130)
        VStack(alignment: .leading){
            Text(landmark.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack{
                Text(landmark.park)
                Spacer()
                Text(landmark.state)
            }.font(.subheadline)
            .foregroundColor(.secondary)
            Divider()
            Text("About \(landmark.name)")
                               .font(.title2)
            Text(landmark.description)
        }.padding()
        }  .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    }

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
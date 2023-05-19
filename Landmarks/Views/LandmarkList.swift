import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavortiesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavortiesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavortiesOnly) {
                    Text("Favorite only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
                
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
          
            .environmentObject(ModelData())
            
        }
    }


import Foundation

class ConvertDataViewModel: ObservableObject {
    @Published var currentData: LatestModel? = UserDefaults.standard.object(forKey: "LatestModel") as? LatestModel
    func convertCurrency(type: String, number: Float) {
        
    }
    
//    func getlatestModel() -> LatestModel {
//        var latestModel: LatestModel = LatestModel(base: "", rates: ["": 0.0])
//        if let model: LatestModel = UserDefaults.standard.object(forKey: "LatestModel") as? LatestModel {
//            return model
//        }
//        return latestModel
//    }
}

import Foundation

class CurrencyDataViewModel: ObservableObject {
    @Published var currencyData: LatestModel?
    
    func saveLastServiceCalledDate() {
        UserDefaults.standard.set(Date(), forKey: "lastServiceCallDate")
    }
    
    func saveLatestModel(latestModel: LatestModel?) {
        UserDefaults.standard.set(latestModel, forKey: "LatestModel")
    }

    func isCalledInLast30Min() -> Bool {
        guard let lastDate = UserDefaults.standard.value(forKey: "lastServiceCallDate") as? Date else { return false }
        let timeElapsed: Int = Int(Date().timeIntervalSince(lastDate))
        return timeElapsed < 30 * 60
    }

    func apiCallforData() {
        if isCalledInLast30Min() { return }
        getData()
    }
    
    private func getData() {
        guard let url = URL(string: "\(Constants.api_domain)\(Constants.currencies)") else {
            fatalError("Missing URL")
        }
        
        let urlRequest = URLRequest(url: url)

        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error: ", error)
                return
            }

            guard let response = response as? HTTPURLResponse else { return }

            if response.statusCode == 200 {
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let decodedUsers = try JSONDecoder().decode(APIModel<LatestModel?>.self, from: data)
                        if let data = decodedUsers.data {
                            print(decodedUsers.message ?? "")
                            self.currencyData = data
                            self.saveLastServiceCalledDate()
                            self.saveLatestModel(latestModel: data)
                        }
                    } catch let error {
                        print("Error decoding: ", error)
                    }
                }
            } else {
                
            }
        }
        dataTask.resume()
    }
}

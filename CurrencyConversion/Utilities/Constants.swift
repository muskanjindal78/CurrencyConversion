import Foundation

struct Constants {
    static let app_id = "bff7006a66c841f49ad114c88b6cb6d2"
    static let api_domain = "https://openexchangerates.org/"
    static let latest = "latest.json?app_id="
    static let currencies = "currencies.json"
    var latestModel: LatestModel = LatestModel(base: "", rates: ["": 0.0])
}

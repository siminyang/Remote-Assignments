//
//  ViewController.swift
//  URLSessionAssignment
//
//  Created by Nicky Y on 2024/7/8.
//

import UIKit

// 建立Station物件屬性
struct Station: Codable {
    var stationID: String
    var stationName: String
    var stationAddress: String
}

class ViewController: UIViewController {
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Task {
            await fetchdataAndUpdateUI()
        }
    }
    
    func fetchdataAndUpdateUI() async {
        do {
            let stationData = try await fetchdata()     // 請求 data
            await MainActor.run {
                updateUI(with: stationData)     // 更新UI
            }
        } catch StationError.invalidURL {
            print("invalid URL")
        } catch StationError.invalidResponse {
            print("invalid response")
        } catch StationError.invalidData {
            print("invalid data")
        } catch {
            print("An unexpected error occurred: \(error.localizedDescription)")
        }
    }
    
    func fetchdata() async throws -> Station {
            // 解包URL
        guard let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station") else {
            throw StationError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
            // 解包response
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw StationError.invalidResponse
        }
        
            // 解碼data內容
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(Station.self, from: data)
        } catch {
            throw StationError.invalidData
        }
    }
    
    func updateUI(with station: Station) {
        stationIDLabel.text = station.stationID
        stationNameLabel.text = station.stationName
        stationAddressLabel.text = station.stationAddress
    }
}

// 定義error type
enum StationError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}

//
//  UnderstandingResultType.swift
//  SwiftUITutorials
//
//  Created by Ramill Ibragimov on 19.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

enum NetworkError: Error {
    case badURL, requestFailed, unknown
}

struct UnderstandingResultType: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                let url = URL(string: "https://www.apple.com")!
                URLSession.shared.dataTask(with: url) { data, response, error in
                    if data != nil {
                        print("We got data!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }.resume()
        }
    }
    
    func fetchData(from urlString: String, completion: @escaping (Result<String, NetworkError>) -> Void) {
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.badURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    let stringData = String(decoding: data, as: UTF8.self)
                    completion(.success(stringData))
                } else if error != nil {
                    completion(.failure(.requestFailed))
                } else {
                    completion(.failure(.unknown))
                }
            }
        }.resume()
        
        DispatchQueue.main.async {
            completion(.failure(.badURL))
        }
    }
}

struct UnderstandingResultType_Previews: PreviewProvider {
    static var previews: some View {
        UnderstandingResultType()
    }
}
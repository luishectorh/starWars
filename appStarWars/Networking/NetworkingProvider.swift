//
//  NetworkingProvider.swift
//  Star Wars
//
//  Created by luis hector hernandez godinez  on 21/06/23.
//

import Foundation

final class NetworkingProvider{

    static let shared = NetworkingProvider()

    public init() {

    }

    func retrieveDeta(closure: @escaping(Result<ResponsePeople, Error>) -> Void){

        let session = URLSession.shared
        let url = URL(string: "https://swapi.py4e.com/api/people/")!

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    do {

                        let json = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
                        print(json!)
                        let decoder = JSONDecoder()
                        let res = try decoder.decode(ResponsePeople.self, from: data)
                        closure(.success(res))
                        print(res)
                    } catch {
                        closure(.failure(error))
                        print("JSON error: \(error.localizedDescription)")
                    }
                }
            }
        }

        task.resume()
    }

    func dataPlanet(closure: @escaping(Result<ResponsePlanets, Error>) -> Void){

        let session = URLSession.shared
        let url = URL(string: "https://swapi.py4e.com/api/planets/")!

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    do {

                        let json = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
                        print(json!)
                        let decoder = JSONDecoder()
                        let res = try decoder.decode(ResponsePlanets.self, from: data)
                        closure(.success(res))
                        print(res)
                    } catch {
                        closure(.failure(error))
                        print("JSON error: \(error.localizedDescription)")
                    }
                }
            }
        }

        task.resume()
    }
}

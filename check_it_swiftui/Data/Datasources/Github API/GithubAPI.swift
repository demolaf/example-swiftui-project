//
//  GithubAPI.swift
//  check_it
//
//  Created by Ademola Fadumo on 01/01/2024.
//

import Foundation

class GithubAPI {
    let httpClient: HTTPClient
    
    init(httpClient: HTTPClient) {
        self.httpClient = httpClient
    }
    
    func fetchPublicReposList() async -> Result<[PublicRepositoryListResponse], CustomDataError> {
        self.storePublicReposList()

        return await httpClient.get(
            url: HTTPConstants.Endpoints.getPublicRepositories.url,
            headers: nil,
            response: [PublicRepositoryListResponse].self
        )
    }
    
    func fetchPublicReposListFromDB() -> Result<[PublicRepositoryListResponse], CustomDataError> {
//        return localStorage.readAll(
//            object: PublicRepositoryListResponse.self,
//            sortBy: nil,
//            predicate: nil
//        )
        .success([])
    }
    
    private func storePublicReposList() {}
}

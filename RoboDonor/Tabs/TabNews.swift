//
//  TabNews.swift
//  RoboDonor
//
//  Created by Adam Braus on 4/21/20.
//  Copyright © 2020 Adam Braus. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct ArticleArray: Identifiable, Decodable {
    private enum CodingKeys: String, CodingKey {
        case articles = "articles"
    }
    let id = UUID()
    let articles: [Article]
}

struct Article: Identifiable, Decodable {
    private enum CodingKeys: String, CodingKey {
        case author = "author"
        case title = "title"
        case description = "description"
        case imgUrl = "urlToImage"
    }
    
    let id = UUID()
    let title, author, description, imgUrl: String?
}

class ArticlesViewModel: ObservableObject {
    @Published var articles = [Article]()
    
    func fetchArticles() {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=012dd97ac4c94c039b86832510f13b7f")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let err = error {
                print("Error fetching from newsAPI: ", err.localizedDescription)
            }
            do {
                DispatchQueue.main.async {
                    let articleArray = try! JSONDecoder().decode(ArticleArray.self, from: data!)
                    self.articles = articleArray.articles
                }
            }
        }.resume()
    }
}

struct TabNews: View {
    
    @ObservedObject var articlesVM = ArticlesViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                if !self.articlesVM.articles.isEmpty {
                    ForEach(self.articlesVM.articles, id: \.id) { article in
                        ArticleView(article: article, url: URL(string: article.imgUrl!)!)
                    }
                }
            }.navigationBarTitle("News & Updates")
        }.onAppear(perform: self.articlesVM.fetchArticles)
    }
}

struct ArticleView: View {
    let article: Article
    let url: URL
    
    var body: some View {
        VStack(alignment: .leading) {
            KFImage(url)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(4)
            Text(article.title!)
                .font(.headline)
        }
    }
}

struct TabNews_Previews: PreviewProvider {
    static var previews: some View {
        TabNews()
    }
}

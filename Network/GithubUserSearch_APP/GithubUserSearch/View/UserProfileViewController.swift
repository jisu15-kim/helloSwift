//
//  SearchViewController.swift
//  GithubUserSearch
//
//  Created by joonwon lee on 2022/05/25.
//

import UIKit
import Combine
import Kingfisher
// bind -> updateUI
// search control -> Network
// network


class UserProfileViewController: UIViewController {
    
    let network = NetworkService(configuration: .default)
    
    @Published private(set) var user: UserProfile?
    var subscription = Set<AnyCancellable>()
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var followerLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bind()
    }
    
    var selectedUser : String = ""
    
    private func setupUI() {
        thumbnail.layer.cornerRadius = 80
        print("\(selectedUser)")
        
        let resource = Resource<UserProfile>(base: "https://api.github.com/", path: "users/\(selectedUser)", params: [:], header: ["Content-Type": "application/json"])
        
        // NetworkService
        network.load(resource)
            .receive(on: RunLoop.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    self.user = nil
                case .finished: break
                }
            } receiveValue: { user in
                self.user = user
            }.store(in: &subscription)
    }
    
    private func bind() {
        $user
            .receive(on: RunLoop.main)
            .sink { [unowned self] result in
                self.update(result)
            }.store(in: &subscription)
    }
    
    private func update(_ user: UserProfile?) {
        guard let user = user else {
            self.nameLabel.text = "존재하지 않는 사용자입니다"
            self.loginLabel.text = "n/a"
            self.followerLabel.text = ""
            self.followingLabel.text = ""
            self.thumbnail.image = nil
            return
        }
        
        self.nameLabel.text = user.name
        self.loginLabel.text = user.login
        self.followerLabel.text = "follwer: \(user.followers)"
        self.followingLabel.text = "follwer: \(user.following)"
        self.thumbnail.kf.setImage(with: user.avatarUrl) // kingfisher를 사용해 url to image 변환
    }
}

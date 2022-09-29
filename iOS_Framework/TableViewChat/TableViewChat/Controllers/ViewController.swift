//
//  ViewController.swift
//  TableViewChat
//
//  Created by 김지수 on 2022/09/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var moviesArray: [Movie] = []
    var movieDataManager = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDatas()
        setupTableView()
        
        title = "영화목록"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear")
        updateCell()
    }
    
    func setupTableView() {
        tableView.dataSource = self // delegate패턴과 동일하지만 이름만 datasource
        tableView.delegate = self
        tableView.rowHeight = 120
    }
    
    func setupDatas() {
        movieDataManager.makeMovieData()
        moviesArray = movieDataManager.getMovieData()
    }
    
    func updateCell() {
        moviesArray = movieDataManager.getMovieData()
        self.tableView.reloadData()
        print(moviesArray)
        print(#function)
    }

    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toAddVC", sender: nil) // AddViewController 호출
//        movieDataManager.updateMovieData()
//        moviesArray = movieDataManager.getMovieData()
//        tableView.reloadData()
//        print(moviesArray)
    }
}

extension ViewController: UITableViewDataSource {
    // 셀 몇개를 리턴?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    // 셀에 대한 설정
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let array = moviesArray
        let movie = array[indexPath.row]
        
        cell.mainImageView.image = movie.movieImage
        cell.movieNameLabel.text = movie.movieName
        cell.descriptionLabel.text = movie.movieDescription
//        cell.selectionStyle = .none // 선택 효과 X
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let detailVC = segue.destination as! DetailViewController
            let array = moviesArray
            let indexPath = sender as! IndexPath // sender에서 indexpath를 받음
            detailVC.movieData = array[indexPath.row]
        }
    }
}

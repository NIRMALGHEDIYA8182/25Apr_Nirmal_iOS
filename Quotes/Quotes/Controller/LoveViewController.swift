//
//  LoveViewController.swift
//  Quotes
//
//  Created by Nirmal Ghediya on 09/10/23.
//

import UIKit

class LoveViewController: UIViewController {

    @IBOutlet weak var my_table: UITableView!
    var apidata = [APIModel]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        apicalling()
        print(apidata)
    }
    func apicalling()
    {
        let apiurl = URL(string: "https://zenquotes.io/api/quotes")
        
        URLSession.shared.dataTask(with: apiurl!) { (data, response, error) in
            do
            {
                self.apidata = try JSONDecoder().decode([APIModel].self, from: data!)
                print(self.apidata)
                
                DispatchQueue.main.async {
                    self.my_table.reloadData()
                }
            }
            catch
            {
                print(error.localizedDescription)
            }
        }.resume()
    }

   //LoveViewController
    @IBAction func swipe_gst(_ sender: UISwipeGestureRecognizer)
    {
        if sender.direction == .right
        {
            navigationController?.popViewController(animated: true)
        }
    }
    
}

extension LoveViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apidata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_quotes.text = apidata[indexPath.row].q
        cell.lbl_author.text = apidata[indexPath.row].a
        cell.cell_pink.layer.cornerRadius = 20
        cell.cell_pink.layer.shadowRadius = 3.0
        cell.cell_pink.layer.shadowColor = UIColor.systemPink.cgColor
        cell.cell_pink.layer.shadowOpacity = 0.9
        //cell.cell_pink.layer.masksToBounds = true
        
        cell.cell_img.layer.cornerRadius = 20
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let showvc = storyboard?.instantiateViewController(identifier: "showvc") as! ShowViewController
        showvc.quotes = apidata[indexPath.row].q!
        showvc.auth = apidata[indexPath.row].a!
        navigationController?.pushViewController(showvc, animated: true)
    }
    
    
}

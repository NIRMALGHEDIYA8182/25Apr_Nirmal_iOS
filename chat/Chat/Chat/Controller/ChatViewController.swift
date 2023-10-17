//
//  ChatViewController.swift
//  FireAPP
//
//  Created by Rutvik Pipaliya on 17/10/23.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth


class ChatViewController: UIViewController {

    @IBOutlet weak var my_tbl: UITableView!
    
    @IBOutlet weak var txt_msg: UITextField!
    
    @IBOutlet weak var btn_send: UIButton!
    
var messageArr = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getMsgs()
    }
    
    
    
    
    @IBAction func btn_send(_ sender: Any)
    {
        txt_msg.endEditing(true)
        txt_msg.isEnabled = false
        btn_send.isEnabled = false
        let msgDB = Database.database().reference().child("fire")
        let msgDict = ["Sender" : Auth.auth().currentUser?.email, "MessageBody" : txt_msg.text!]
        msgDB.childByAutoId().setValue(msgDict){(error,ref) in
            if(error != nil){
                debugPrint(error!.localizedDescription)
            }else{
                debugPrint("Msg saved successfully")
                self.txt_msg.isEnabled = true
                self.btn_send.isEnabled = true
                self.txt_msg.text = nil
            }
        }
    }
    
    func getMsgs(){
        let rootRef = Database.database().reference()
        let ref = rootRef.child("fire")
        ref.observe(.value, with: { snapshot in
         
        let value = snapshot.value as! Dictionary<String,String>
        let text = value["MessageBody"]
        let sender = value["Sender"]
            var msg = Message()
        msg.msgBody = text
        msg.sender = sender
        self.messageArr.append(msg)
        debugPrint(self.messageArr.count)
        self.my_tbl.reloadData()
          print(snapshot.value as Any)
        })

        }
    
}

extension ChatViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_first.text = messageArr[indexPath.row].sender
        cell.lbl_bold.text = messageArr[indexPath.row].msgBody
        return cell
    }
    
    
}

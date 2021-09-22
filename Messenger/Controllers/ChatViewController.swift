//
//  ChatViewController.swift
//  Messenger
//
//  Created by Maria Roodnitsky on 9/21/21.
//
import UIKit
import MessageKit

struct Message: MessageType {
    var sentDate: Date
    var kind: MessageKind
    var sender: SenderType
    var messageId: String
}

struct Sender: SenderType {
    var senderId: String
    var displayName: String
    var photoURL: String
}

class ChatViewController: MessagesViewController {

    private var messages = [Message]()

    private let selfSender = Sender(senderId: "1", displayName: "Maria Roodnitsky", photoURL: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        messages.append(Message(sentDate: Date(), kind: .text("Are you home?"), sender: selfSender, messageId: "1"))
        messages.append(Message(sentDate: Date(), kind: .text("I think Will is home."), sender: selfSender, messageId: "1"))
        view.backgroundColor = .red

        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self

    }


}

extension ChatViewController: MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate{
    func currentSender() -> SenderType {
        return selfSender
    }

    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }

    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }

}

//
//  LocalNotificationFramework.swift
//  FBSnapshotTestCase
//
//  Created by Argyl P. Rebanal on 2/13/20.
//

import Foundation

class LocalNotifiicationFramework: UIView {
  let baseView: UIView = {
      let view = UIView()
      view.backgroundColor = .red
      view.translatesAutoresizingMaskIntoConstraints = false
      view.layer.cornerRadius = 25
      view.layer.masksToBounds = true
      view.alpha = 0
      
      // add shadow
      view.layer.shadowColor = UIColor.black.cgColor
      view.layer.shadowOpacity = 1
      view.layer.shadowOffset = .zero
      view.layer.shadowRadius = 10
      
      return view
  }()
  
  override init(frame: CGRect) {
      super.init(frame: frame)
      setupViews()
  }
  
  func showLocalNotification(animated: Bool) {
    UIView.animate(withDuration: 2, animations: {
      self.baseView.alpha = 1
    }) { (completionHandler) in
      
    }
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
      
  }
  
  private func setupViews() {
      addSubview(baseView)
      
      addConstraintsWithFormat(format: "H:|-10-[v0]-10-|", views: baseView)
      addConstraintsWithFormat(format: "V:|-10-[v0(50)]-10-|", views: baseView)
  }
}

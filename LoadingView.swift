//
//  LoadingView1.swift
//  ProRAE Guardian
//
//  Created by E Software Solutions on 03.11.18.
//  Copyright © 2018 vhm. All rights reserved.
//

import UIKit

class LoadingView: NSObject
{
    static let shared = LoadingView()

    var imageview = UIImageView()
    var mainview = UIView()
    let window = UIApplication.shared.keyWindow

    override init()
    {
        super.init()
        mainview.frame = self.window!.bounds
        mainview.backgroundColor = UIColor.black.withAlphaComponent(0.37)
        self.window?.addSubview(mainview)
        mainview.translatesAutoresizingMaskIntoConstraints = false
        mainview.topAnchor.constraint(equalTo: window!.topAnchor, constant: 0).isActive = true
        mainview.bottomAnchor.constraint(equalTo: window!.bottomAnchor, constant: 0).isActive = true
        mainview.leadingAnchor.constraint(equalTo: window!.leadingAnchor, constant: 0).isActive = true
        mainview.trailingAnchor.constraint(equalTo: window!.trailingAnchor, constant: 0).isActive = true

       
        imageview = UIImageView(frame: CGRect(x: 2, y: 2, width: 55, height: 55))
        imageview.image = UIImage.gifImageWithName("doctour_loader")
        imageview.contentMode = .scaleAspectFit
        mainview.addSubview(imageview)
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.heightAnchor.constraint(equalToConstant: 135).isActive = true
        imageview.widthAnchor.constraint(equalToConstant: 135).isActive = true
        imageview.centerXAnchor.constraint(equalTo: mainview.centerXAnchor).isActive = true
        imageview.centerYAnchor.constraint(equalTo: mainview.centerYAnchor).isActive = true
    }

    func start()
    {
        self.window?.bringSubviewToFront(mainview)
        self.mainview.isHidden = false
    }

     func dismiss()
     {
        self.mainview.isHidden = true
    }
}

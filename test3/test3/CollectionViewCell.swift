//
//  CollectionViewCell.swift
//  test3
//
//  Created by Huy Vu on 11/6/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var first: UILabel!
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var Menu: UIButton!
    
    @IBOutlet weak var Home: UIButton!
    
    @IBOutlet weak var Share: UIButton!
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        

        
        // Làm cho ảnh tròn bằng cách thiết lập cornerRadius cho 1 nửa chiều rộng của UIImageView
        img1.layer.cornerRadius = img1.frame.size.width / 2
        img1.layer.masksToBounds = true

                // Thiết lập thuộc tính clipsToBounds cho UIImageView để đảm bảo ảnh không thò ra ngoài vòng bo
        img1.clipsToBounds = true
        

                // Đảm bảo ảnh hiển thị đúng tỷ lệ
        img1.contentMode = .scaleAspectFill
        

        img.autoresizingMask = [.flexibleWidth,.flexibleHeight]
      
        
        // Thiết lập font size cho UILabel
        first.font = UIFont.systemFont(ofSize: 20) // Đặt kích thước font cho phù hợp
      
        
        // Điều chỉnh số dòng hiển thị (nếu cần)
        first.numberOfLines = 2 // Đặt số dòng hiển thị cho first



    }

}

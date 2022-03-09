//
//  KeyCell.swift
//  Wrodle
//
//  Created by Urmat on 9/3/22.
//

import UIKit

class KeyCell: UICollectionViewCell {
    static let identifier = "KeyCell"
    
    let label: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 19, weight: .medium)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray5
        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.right.top.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        label.text = nil
    }
    
    func configure(with letter: Character) {
        label.text = String(letter).uppercased()
    }
}

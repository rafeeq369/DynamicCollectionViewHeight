//
//  TestVc.swift
//  Tester
//
//  Created by intelmac on 05/07/21.
//

import UIKit

class TestVc: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
}
class DynamicCollectionView: UICollectionView {

    override func layoutSubviews() {
        super.layoutSubviews()
        if !__CGSizeEqualToSize(bounds.size, self.intrinsicContentSize) {
            self.invalidateIntrinsicContentSize()
        }

    }

    override var intrinsicContentSize: CGSize {
        return contentSize
    }

}

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var categoryColletcionView: UICollectionView!
    @IBOutlet weak var popoularCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Africa Dish0", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish5", image: "https://picsum.photos/100/200"),
    ]
    
    var populars : [Dish] = [
        .init(id: "id1", name: "KingSlayerKulhan", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56.61234),
        .init(id: "id1", name: "KingSlayerSerdar", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 36.61234),
        .init(id: "id1", name: "KingSlayerKaan", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 26.61234),
        .init(id: "id1", name: "KingSlayerSibel", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56.61234),
        .init(id: "id1", name: "KingSlayerHakan", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 66.61234),
        .init(id: "id1", name: "KingSlayerZeynep", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 76.61234)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    
    private func registerCells() {
        categoryColletcionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popoularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryColletcionView:
            return categories.count
        case popoularCollectionView:
            return populars.count
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case categoryColletcionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case popoularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
        default: return UICollectionViewCell()
        }
        
        
    }
}

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
        .init(id: "", name: "", decription: "", image: "", calories: 0.0)
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
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        return cell
    }
}

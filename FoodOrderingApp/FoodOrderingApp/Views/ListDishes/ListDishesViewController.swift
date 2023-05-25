
import UIKit

class ListDishesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var category: DishCategory!
    
    var dishes : [Dish] = [
        .init(id: "id1", name: "Kuru Fasulye", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56),
        .init(id: "id1", name: "Çiğ Köfte", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 36),
        .init(id: "id1", name: "Tavuk Dürüm", decription: "This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 26),
        .init(id: "id1", name: "Etli Ekmek", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56),
        .init(id: "id1", name: "Mantı", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 66),
        .init(id: "id1", name: "Köfte", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 76)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = category.name
        registerCells()
    }
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
}


import UIKit

class ListOrdersViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var orders: [Order] = [
        .init(id: "id", name: "Serdar Altındaş", dish: .init(id: "id1", name: "Kuru Fasulye", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56)),
        .init(id: "id1", name: "Zeynep Özbağdatlı", dish: .init(id: "id1", name: "Kuru Fasulye", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56)),
        .init(id: "id1", name: "Zeynep Özbağdatlı", dish: .init(id: "id1", name: "Kuru Fasulye", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56)),
        .init(id: "id1", name: "Zeynep Özbağdatlı", dish: .init(id: "id1", name: "Kuru Fasulye", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56)),
        .init(id: "id1", name: "Zeynep Özbağdatlı", dish: .init(id: "id1", name: "Kuru Fasulye", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56)),
        .init(id: "id1", name: "Zeynep Özbağdatlı", dish: .init(id: "id1", name: "Kuru Fasulye", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56)),
        .init(id: "id1", name: "Zeynep Özbağdatlı", dish: .init(id: "id1", name: "Kuru Fasulye", decription: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 56))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
        registerCell()
    }
    
    private func registerCell() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}
extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}

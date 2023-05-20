
import Foundation

struct Dish {
    let id , name , decription , image: String?
    let calories: Double?
    
    var formattedCalories: String {
        return String(format: "%.2f calories", calories ?? 0)
    }
}

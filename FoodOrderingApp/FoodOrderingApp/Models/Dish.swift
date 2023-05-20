
import Foundation

struct Dish {
    let id , name , decription , image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) Calories"
    }
}

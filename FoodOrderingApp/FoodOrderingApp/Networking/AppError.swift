
import Foundation

enum AppError : LocalizedError {
    case errorDecoding
    case unknownError
    case invalidError
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
        case .errorDecoding:
            return "Response could not be decoded"
        case .unknownError:
            return "Bruh!! I have no idea!"
        case .invalidError:
            return "Hey!! Give me a URL"
        case .serverError(let error):
            return error
        }
    }
}

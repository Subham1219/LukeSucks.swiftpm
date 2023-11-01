import Foundation
struct Player1: Identifiable, Codable {
    var id: String
    var name: String
    var position: String
    init(id: String, name: String, position: String) {
        self.id = id
        self.name = name
        self.position = position
    }
    init?(id: String, dictionary: [String: Any]) {
        guard let name = dictionary["name"] as? String,
              let position = dictionary["position"] as? String else {
            return nil
        }
        self.init(id: id, name: name, position: position)
    }
    var dictionary: [String: Any] {
        return ["name": name, "position": position]
        
    }
}


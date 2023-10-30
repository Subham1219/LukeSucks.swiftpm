import Firebase
import FirebaseDatabase
import FirebaseFirestoreSwift

class FirebaseManager {
    let database = Database.database().reference()
    
    func addPlayer(player: Player) {
        let playerRef = database.child("players").childByAutoId()
        playerRef.setValue(player.dictionary)
    }
    
    func getAllPlayers(completion: @escaping ([Player]) -> Void) {
        database.child("players").observe(.value) { snapshot in
            var players: [Player] = []
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                   let playerDict = snapshot.value as? [String: Any],
                   let player = Player(id: snapshot.key, dictionary: playerDict) {
                    players.append(player)
                }
            }
            completion(players)
        }
    }
}

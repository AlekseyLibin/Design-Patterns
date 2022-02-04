

class User {
    let name = "Petr"
    let password = "123"

}
 


protocol ServerProtocol {
    func grantAccess(user: User)
}


class ServerSide: ServerProtocol {
    func grantAccess(user: User) {
        print("Access granted to user \(user.name)")
        
    }
}
 

class ServerProxy: ServerProtocol {
    private var server: ServerSide!

    func grantAccess(user: User) {
        guard server != nil
        else {
            print("Access can't be granted")
            return
        }
        server.grantAccess(user: user)
    }
    func authenticate(user: User) {
        guard user.password == "123" else { return }
        print("User is authenticated")
        server = ServerSide()
     }
 }
 
let user = User()
let proxy = ServerProxy()

proxy.grantAccess(user: user)
 
proxy.authenticate(user: user)
proxy.grantAccess(user: user)

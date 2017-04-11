
import Foundation

class UserService {

    //the service delivers mocked data with a delay
    func getUsers(_ callBack:@escaping ([User]) -> Void){
        let users = [User(firstName: "Gabriel", lastName: "Cuesta", email: "gabriel.cuesta@test.com", age: 43),
                     User(firstName: "David", lastName: "Cuesta", email: "david.cuesta@test.om", age: 42),
                     User(firstName: "Miriam", lastName: "Cuesta", email: "miriam.cuesta@test.com", age: 32)
        ]
        let delayTime = DispatchTime.now() + Double(Int64(2 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            callBack(users)
        }
    }
}

//
//  RealmManager.swift
//  SwiftUI_Study
//
//  Created by 권나영 on 2023/12/08.
//

import Foundation
import RealmSwift

class FruitModelForRealM: Object {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var name: String
    @Persisted var count: Int
    
    convenience init(name: String, count: Int) {
        self.init()
        self.name = name
        self.count = count
    }
}

struct RealmManager {
    static var shared = RealmManager()
    let realm = try! Realm()
    
    private init() { }
    
    func create(_ fruitModel: FruitModel) {
        try! realm.write {
            realm.add(FruitModelForRealM(name: fruitModel.name, count: fruitModel.count))
            print("data added")
        }
    }

    func read() -> FruitModelForRealM? {
        let fruitModel = realm.objects(FruitModelForRealM.self).first
        return fruitModel
    }
}

//
//  FMDBfile.swift
//  ExamLocalDataBase
//
//  Created by Sneh kalariya on 12/04/23.
//

import Foundation

struct Modal {
    var name: String
    var id: Int
}
class fmdbHelper {
    static var file: FMDatabase!
    
    static func createFile(){
        var x = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        x.appendPathComponent("My FMDB file2.db")
        file = FMDatabase(url: x)
        file.open()
        print(x.path)
        createTable()
    }
    static func createTable(){
        let q = "Create Table if not exists Students(name text,id integer)"
        try? file.executeUpdate(q,values:nil)
        print("Create Table")
    }
    static func addData(name: String,id: Int){
        let q = "insert into Students values ('\(name)',\(id))"
        try? file.executeUpdate(q,values: [name,id])
        print("Add Data")
    }
    static func getData() -> [Modal]{
        var array = [Modal]()
        let q = " Select * from Students "
        if let data = try? file.executeQuery(q,values: nil){
            while data.next(){
                let name = data.object(forColumn: "name") as? String ?? ""
                let id = data.object(forColumn: "id") as? Int ?? 0
                let obj = Modal(name: name, id: id)
                array.append(obj)
            }
        }
        return  array
    }
    static func deleteData(name: String,id: Int){
        let q = " DELETE FROM Students where id = \(id.self)"
        try? file.executeUpdate(q,values :[name,id])
        print("Delete Data")
    }
    
}

//
//  TDTaskListViewModel.swift
//  MVVM-sui
//
//  Created by MAGH on 01/03/24.
//

import Foundation

class TDTaskListViewModel : ObservableObject {
    @Published var tdTasks : [TDTask] = []
    
    var dataTasks = [
        TDTask(title: "Comprar chocolates a mi novia", description: "Le gustan los Ferreo de avellana", isCompleted: true),
        TDTask(title: "Pasear al Perro", description: "Sacar al perro al parque a las 13 horas", isCompleted: false),
        TDTask(title: "Cancelar Spotify Premium", description: "Cancelar antes del día 1 de marzo", isCompleted: false)
    ]
    
    func fetchTDTask(){
        tdTasks = dataTasks
    }
    
    func countTDTask() -> Int {
        return tdTasks.count
    }
    
    func getTDTask(at index : Int) -> TDTask{
        return tdTasks[index]
    }
    
    func updateTDTaskCompletion(index : Int){
        tdTasks[index].isCompleted.toggle()
        print(tdTasks[index].title,tdTasks[index].isCompleted)
    }
}

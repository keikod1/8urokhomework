//
//  main.swift
//  8urok
//
//  Created by my macbook on 24/11/21.
//

import Foundation
 
var bossHealth = 1800
var bossDamage = 110

var heroesHealth = [500, 400, 500, 500, 300, 500, 700]
var heroesdamage = [100, 100, 100, 100, 0, 100, 50]
var heroesName = ["Adina", "Samir", "Rashid", "Emir", "Dastan", "Nursultan", "Tank"]



var random = Int.random(in: 1..<100)
var random2 = Int.random(in:500..<700)
var treatment = 50
var randomBoss = Int.random(in: 120..<150)

func doctor(){
    for i in 0..<heroesHealth.count{
        if (heroesHealth[i] <= 390) && (heroesHealth[i] > 0) && (heroesHealth[4] > 0){
        heroesHealth[i] = heroesHealth[i] + treatment
        }
}
}

func heroesHit(){
    for i in 0..<heroesdamage.count{
        bossHealth = (bossHealth - heroesdamage[i]) + random
        if (bossHealth < 0){
            bossHealth = 0
    }
       
}
}



func bossHit(){
    for i in 0..<heroesHealth.count{
        heroesHealth[i] = heroesHealth[i] - bossDamage
        if (heroesHealth[i] < 0) {
            heroesHealth[i] = 0
       
    }
        }
}

func criticalheroesHit(){
    if (bossHealth <= 1000)&&(bossHealth > 400){
        bossHealth = bossHealth - random2
        print(heroesName[5], "использовал критический удар!", random2)
    }
    }
func tankHit(){
    for i in 0..<heroesHealth.count{
            if (heroesHealth[i] <= 700)&&(heroesHealth[6] > 0){
                let bossDamage2 = bossDamage / 2
                heroesHealth[i] = heroesHealth[i] + bossDamage2
                print(heroesName[6],"блокировка удара", bossDamage2)
                break
    }
    }
}

func criticalbossHit(){
        if (heroesHealth[6] <= 50)&&(heroesHealth[6] > 20){
            heroesHealth[0] = heroesHealth[0] - randomBoss
            heroesHealth[1] = heroesHealth[1] - randomBoss
            heroesHealth[2] = heroesHealth[2] - randomBoss
            heroesHealth[3] = heroesHealth[3] - randomBoss
            heroesHealth[4] = heroesHealth[4] - randomBoss
            heroesHealth[5] = heroesHealth[5] - randomBoss
            heroesHealth[6] = heroesHealth[6] - randomBoss
        print("Boss использовал критический удар!", randomBoss)
       
    }
}

    


//heroesHit()
//bossHit()
//print(bossHealth)
//print(heroesHealth)

func rounds(){
    doctor()
    criticalheroesHit()
    tankHit()
    criticalbossHit()
    heroesHit()
    print(bossHealth)
    bossHit()
    print(heroesHealth)
    
    
}

var isFinished = true

while isFinished {
    if bossHealth <= 0{
        print("Heroes win!")
        isFinished = false
        break
    }
    if heroesHealth[0] <= 0 && heroesHealth[1] <= 0 && heroesHealth[2]  <= 0 && heroesHealth [3] <= 0 && heroesHealth [4] <= 0 && heroesHealth [5] <= 0 && heroesHealth [6] <= 0{
        print("boss win!")
        isFinished = false
        break
    }
    rounds()
    
}





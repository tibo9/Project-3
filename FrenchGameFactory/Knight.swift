//
//  Knight.swift
//  FrenchGameFactory
//
//  Created by Laurent Debeaujon on 04/02/2020.
//  Copyright © 2020 Laurent Debeaujon. All rights reserved.
//

import Foundation

//****************************************************************
//***  Class Wizard
//***
//****************************************************************
class Knight: Personages {
    var damage: Int {
            let globalDamage = (weapon.damage * dexterity / armor)
            return globalDamage
    }
    let weapon: Weapons
    let weapons: [Weapons] =  [Weapons(name: "Sabre", damage: 10),
       Weapons(name: "Hache", damage: 8),
       Weapons(name: "Epée", damage: 8),
       Weapons(name: "Katana", damage: 11),
       Weapons(name: "Dague", damage: 3),
       Weapons(name: "Poignard", damage: 3),
       Weapons(name: "Arbalète", damage: 10)]
    override init(life: Int, armor: Int, dexterity: Int) {
        if let myWeapon = weapons.randomElement() {
            self.weapon = myWeapon
        } else {
            self.weapon = Weapons(name: "Dague", damage: 3)
        }
        super.init(life: life, armor: armor, dexterity: dexterity)
    }
    func displayStatus() -> String {
            return "\(name) de classe \(getClass()) dispose de \(lifePoints) points de vie ! Arme utilisée : \(weapon.name) => Dégat: \(weapon.damage)"
        }
    func checkSameName(name: String) ->Bool {
           if super.name == name {
               return false
           } else {
               return true
           }
       }
    override func getClass() -> String {
         return "Knight"
     }
}

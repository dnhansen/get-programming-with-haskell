-- Project: fighting robots

-- Constructor
robot (name, attack, hp) = \message -> message (name, attack hp)

-- Helper functions
name (n,_,_) = n
attack (_,a,_) = a
hp (_,_,hp) = hp

-- Accessor functions
getName aRobot = aRobot name
getAttack aRobot = aRobot attack
getHP aRobot = aRobot hp

-- Mutator functions (create new robot objects)
setName aRobot newName = aRobot (\(n,a,h) -> robot (newName,a,h))

-- Print
printRobot aRobot = aRobot (\(n,a,h) -> n ++
                                        " attack: " ++ (show a) ++
                                        " hp: " ++ (show h))

-- Fighting
damage aRobot attDmg = aRobot (\(n,a,h) -> robot (n,a,h - attDmg))

fight aRobot defender = damage defender attack
  attack = if getHP aRobot > 10
           then getAttack aRobot
           else 0
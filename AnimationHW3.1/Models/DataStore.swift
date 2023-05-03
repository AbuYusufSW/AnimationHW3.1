//
//  DataStore.swift
//  AnimationHW3.1
//
//  Created by AbuYusuf on 03.05.2023.
//

struct SpringAnimation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> SpringAnimation {
        SpringAnimation(
            name: Animation.shared.names.randomElement() ?? "pop",
            curve: Animation.shared.curves.randomElement() ?? "linear",
            force: Double.random(in: 0.5...2),
            duration: Double.random(in: 0.5...2),
            delay: Double.random(in: 0.5...2)
        )
    }
}

//
//  BlackHole.swift
//  BookCore
//
//  Created by PATRICIA S SIQUEIRA on 12/04/21.
//


import PlaygroundSupport
import SceneKit


public class BlackHole: SCNNode {
    
    static public func getBlackHole() -> SCNParticleSystem {
        // create the particle system
        let particles = SCNParticleSystem()
        particles.loops = true
        particles.particleMass = 5
        particles.birthRate = 80000
        particles.emissionDuration = 10
        particles.particleSize = 0.08
        particles.emitterShape = SCNTorus(ringRadius: 10, pipeRadius: 1)
        particles.particleLifeSpan = 15
        particles.particleVelocity = 1
        particles.particleColor = UIColor.systemOrange
        particles.isAffectedByPhysicsFields = true
        return particles
    }
    
    static public func fieldVortex() -> SCNNode {
        // create the field
        let field = SCNPhysicsField.vortex()
        field.strength = -5
        field.direction = SCNVector3(x: 0, y: 0.5, z: 0)
        let fieldNode = SCNNode()
        fieldNode.physicsField = field
        return fieldNode
    }
    
}



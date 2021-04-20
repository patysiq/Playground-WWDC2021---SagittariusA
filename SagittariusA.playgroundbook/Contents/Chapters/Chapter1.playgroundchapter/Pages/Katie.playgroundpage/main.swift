//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
import BookCore
import SceneKit
import QuartzCore
import PlaygroundSupport

let scnView = SCNView(frame: CGRect(x: 0, y: 0, width: 640, height: 480))

    let scene = SCNScene()
    scnView.scene = scene
    scene.background.contents = UIImage(named: "back")
    
    let camNode = SCNNode()
    camNode.camera = SCNCamera()
    scene.rootNode.addChildNode(camNode)
    camNode.position = SCNVector3(0,0,18)
    scene.rootNode.addChildNode(camNode)

    let lightNode = SCNNode()
    lightNode.light = SCNLight()
    lightNode.light?.type = .probe
    lightNode.position = SCNVector3(x: 0, y: 0, z: 2)
    scene.rootNode.addChildNode(lightNode)
    
    let planetNode = SCNNode()
    planetNode.geometry = SCNSphere(radius: 1.7)
    planetNode.position = SCNVector3(3, 1, 5)
    planetNode.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "mars")
    planetNode.geometry?.firstMaterial?.shininess = 3

    let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi/180), around: SCNVector3(0, 0, 0), duration: 12)
    let repeatAction = SCNAction.repeatForever(action)
    planetNode.runAction(repeatAction)
    scene.rootNode.addChildNode(planetNode)

    let planetNode01 = SCNNode()
    planetNode01.geometry = SCNSphere(radius: 1.2)
    planetNode01.position = SCNVector3(-2, -2, -2)
    planetNode01.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "uran")
    planetNode01.geometry?.firstMaterial?.shininess = 3
    planetNode01.runAction(repeatAction)
    scene.rootNode.addChildNode(planetNode01)

    let planetNode02 = SCNNode()
    planetNode02.geometry = SCNSphere(radius: 0.8)
    planetNode02.position = SCNVector3(-4, 5, -5)
    planetNode02.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "venus")
    planetNode02.geometry?.firstMaterial?.shininess = 3
    planetNode02.runAction(repeatAction)
    scene.rootNode.addChildNode(planetNode02)

    let planetNode03 = SCNNode()
    planetNode03.geometry = SCNSphere(radius: 0.8)
    planetNode03.position = SCNVector3(7, 8, 5)
    planetNode03.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "moon")
    planetNode03.geometry?.firstMaterial?.shininess = 3
    planetNode03.runAction(repeatAction)
    scene.rootNode.addChildNode(planetNode03)

    let planetNode04 = SCNNode()
    planetNode04.geometry = SCNSphere(radius: 0.4)
    planetNode04.position = SCNVector3(-7, -8, -9)
    planetNode04.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "neptun")
    planetNode04.geometry?.firstMaterial?.shininess = 3
    planetNode04.runAction(repeatAction)
    scene.rootNode.addChildNode(planetNode04)

    let planetNode05 = SCNNode()
    planetNode05.geometry = SCNSphere(radius: 1.5)
    planetNode05.position = SCNVector3(10, 8, -9)
    planetNode05.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "saturn")
    planetNode05.geometry?.firstMaterial?.shininess = 3
    planetNode05.runAction(repeatAction)
    

let ringPlanet = SCNTorus(ringRadius:2.1 , pipeRadius: 0.03)
    let ringNode = SCNNode(geometry: ringPlanet)
    ringPlanet.firstMaterial?.diffuse.contents = UIImage(named: "saturnringcolor")
    ringPlanet.firstMaterial?.specular.contents = UIImage(named: "saturnringpattern")
    ringNode.runAction(SCNAction.repeatForever(SCNAction.rotate(by: 360 * CGFloat(Double.pi/180), around: SCNVector3(0, 1, 0), duration: 12)))
    planetNode05.addChildNode(ringNode)
    scene.rootNode.addChildNode(planetNode05)


    let particleSystem = SCNParticleSystem()
    particleSystem.particleImage = UIImage(named: "star")
    particleSystem.birthDirection = .random
    particleSystem.birthRate = 200
    particleSystem.particleLifeSpan = 0.8
    particleSystem.particleColor = .white
    particleSystem.particleSize = 0.02
    particleSystem.speedFactor = 0.2
    particleSystem.emittingDirection = SCNVector3(1,1,1)
    particleSystem.emitterShape = .some(SCNSphere(radius: 7))

    let particlesNode = SCNNode()
    particlesNode.scale = SCNVector3(2,2,2)
    particlesNode.addParticleSystem(particleSystem)
    scene.rootNode.addChildNode(particlesNode)

    scnView.allowsCameraControl = true

    scnView.autoenablesDefaultLighting = true
    Sounds.playAudio()
    
    PlaygroundSupport.PlaygroundPage.current.liveView = scnView
//#-end-hidden-code
/*:
# **Katie Bourman**

🤓 HI! I am **Patricia** and I am a research student at the Apple Developer Academy - IFCE and I'm a computer
 engineering graduate also at the same institution.👩🏽‍💻

 
There are many taboos about women in technology that need to be discussed
and demystified. We know that there have been many incredible women in history
and we currently see fantastic work done by them. The challenges for these women
who continue in the technological career are many, so we need to modify thoughts,
deconstruct stereotypes and gain spaces, showing talents and valuing them more and
more to face this current imbalance and modify the future of the technology area.
 
In this scenario, the inclusion and female participation in the spaces will bring
new perspectives and important perceptions for the production of technology.

😟 I feel this story in a very special way, because I started my computer engineering
study just last year. I am 40 years old and I realize how much prejudice
against age and against sexism we still need to overcome.

However, I decided to show **Katherine Bouman**'s magnificent work. I feel in the
smile of this fantastic researcher the persistent need to value and discuss the
strengthof scientific research done by women. 🧐
 
🤓 Assistant professor of computer science at the California Institute of Technology🔭.
She was responsible at MIT (Massachusetts Institute of Technology) for an algorithm
used in creating the first images of a black hole🌑, published in April 2019, providing
computational support to learn about general relativity in the strong field regime.


 ### **Let's explore**
🪐 Images of the Milky Way Galaxy have always impressed Katie. So let's explore this wonderful universe:
 
 * ⭐️ Touch the planets and explore around them.
 * ⭐️ You can zoom in and out too

 
 
 
 
 
 
 
 
![Katie Bouman](katieBourman.png)
 
 */

//:[Sagittarius A](@next)



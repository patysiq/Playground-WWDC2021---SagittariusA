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
    camNode.position = SCNVector3(0,0,100)

    scene.addParticleSystem(BlackHole.getBlackHole(), transform: SCNMatrix4MakeRotation(0 , 0, 0, 0))
    scene.rootNode.addChildNode(BlackHole.fieldVortex())
    Sounds.playAudio()

    scnView.allowsCameraControl = true

    scnView.autoenablesDefaultLighting = true
    
PlaygroundSupport.PlaygroundPage.current.liveView = scnView
//#-end-hidden-code
/*:
 # **Sagittarius A**

😛 The mystery about black holes is old. In 1905, Albert Einstein published his Theory of Relativity, which explained, among many other things, that black holes have a point of no return, that is, an event horizon - a theoretical boundary around the hole where the force of gravity it is extremely strong. At that point, nothing that arrives there comes back, not even the light escapes. Therefore, it is not possible to see black holes using traditional methods. Einstein also found that the event horizon should be circular and of a predictable size: exactly as seen in the photo.
 
 
 ![Sagittarius A](blackhole.png)
 
 🔭 Specially developed to take the first photo of the black hole, the Event Horizon Telescope is a collaboration project
 of seven different telescopes around the Earth, with a resolution so precise that it was able to capture the image of this phenomenon.

 However, that was not enough to know what a black hole really looked like. Katie Bouman started to develop the algorithm capable of combining the images obtained by the telescopes. After countless tests of this project, in 2019, Katie put it into practice and was surprised by the success of her years of research: the algorithm managed to gather all the images captured by the telescopes, forming the first complete image of the black hole called **Sagittarius A**.
 
 🌑 Sagittarius A is a bright and very compact astronomical radio source at the Galactic Center of the Milky Way. It is located near the border of the constellations Sagittarius and Scorpius.
 
 ✨ A great moment that made it possible to confirm the enigmatic Theory of Relativity.

 ## **Lett's explore Sagittaius A**

 * ⭐️ Touch the black hole and explore around them.
 * ⭐️ You can zoom in and out too

 *“We must have perseverance and above all confidence in ourselves. We must believe that we are gifted for something and that this thing must be attained.” – Marie Curie*
 
 */

//:Credits:
//: * 📹 Video: ESO/L. Calçada, Digitized Sky Survey 2, ESA/Hubble, RadioAstron,
//:De Gasperin et al., Kim et al., EHT Collaboration. Music: Niklas Falcke.
//: * 🎵 Pages's Music: David Renda.




//
//  Activity.swift
//  testList
//
//  Created by Francesca Napolitano on 25/10/22.
//

import Foundation
import SwiftUI

var activity = [
    //Neutral
    Activity(mood: .neutral, activityIcon: "play.fill", activityColor: Color("myRed"), activityName: "Movie night", activitySub: "Daily activity", description: Text("Re-watch your favourite movie or a film that you really enjoyed. If you have the opportunity to watch it with somene else it’s even better!")),
    /*Activity(mood: .neutral, activityIcon: "basket.fill", activityColor: Color("myPink"), activityName: "Sweet day", activitySub: "Daily activity", description: Text("Try to cook something sweet that you never bake before or a sweet that you really like.\n\nHere some suggestion: pancake, crepes, caprese, muffin, pan di stelle cake.")),
    Activity(mood: .neutral, activityIcon: "person.2.fill", activityColor: Color("myLightBlue"), activityName: "Connect with others", activitySub: "Daily activity", description: Text("Good relationships are important for your mental wellbeing.\n\nTake time to be with your family, with friends you haven’t seen for a while or have lunch with a colleague.")),*/
    
    //Happy
    Activity(mood: .happy, activityIcon: "pencil.and.outline", activityColor: Color("myLightBlue"), activityName: "Draw a line", activitySub: "Activity", description: Text("Try to draw a line between you and people who want to complain and vent their problems on you, without giving even a few seconds of listening in return.\n\nTurn your attention elsewhere and no longer give weight to the words of these 'parasites'.")),
    Activity(mood: .happy, activityIcon: "leaf.fill", activityColor: Color("myGreen"), activityName: "Create change", activitySub: "Activity", description: Text("Your goals should be small and easy to accomplish, but as you keep working on them, you’ll be closer and closer to where you want to be in the future.\n\nThe only person who can change the course of your life is yourself. So take action and create change.")),
    
    //Surprised
    Activity(mood: .surprised, activityIcon: "figure.yoga", activityColor: Color("myGreen"), activityName: "Practice your strenghts", activitySub: "Activity", description: Text("Do something you're good at. When you practice your distinctive strengths endorphins are released in your brain giving you a boost of positivity and happiness.")),
    Activity(mood: .surprised, activityIcon: "lungs.fill", activityColor: Color("myLightBlue"), activityName: "Breathing", activitySub: "Activity", description: Text("Disgust creates a state of stress that can ruin your mood. Breathing slowly and focusing on it help stabilize pressure and relax the body.\n\nYou can repeat this at least 5 times.")),
    
    //Scared
    Activity(mood: .scared, activityIcon: "bubbles.and.sparkles.fill", activityColor: Color("myTeal"), activityName: "Self care", activitySub: "Activity", description: Text("Doing skincare or taking a warm shower can reduce symptoms of anxiety. The body’s reaction to being warm naturally relaxes your muscles, decrease cortisol levels and clear your thoughts.")),
    Activity(mood: .scared, activityIcon: "hourglass.bottomhalf.filled", activityColor: Color("myGreen"), activityName: "Remember the past", activitySub: "Activity", description: Text("When you start to feel overwhelmed and scared think back to a time when you triumphed over something and came out stronger on the other side.\n\nRemember that this one is all part of your story.")),
    
    //Disgusted
    Activity(mood: .disgusted, activityIcon: "lungs.fill", activityColor: Color("myLightBlue"), activityName: "Breathing", activitySub: "Activity", description: Text("Disgust creates a state of stress that can ruin your mood. Breathing slowly and focusing on it help stabilize pressure and relax the body.\n\nYou can repeat this at least 5 times.")),
    Activity(mood: .disgusted, activityIcon: "figure.walk.motion", activityColor: Color("myGreen"), activityName: "Do the opposite", activitySub: "Activity", description: Text("Find a place inside yourself where you feel kind, respectful and caring. This helps you reframe your feelings, they don’t control you.\n\nMake a mental note that you are ready to look at the bigger picture")),
    
    //Angry
    Activity(mood: .angry, activityIcon: "wind", activityColor: Color("myLightBlue"), activityName: "Take a deep breath", activitySub: "Activity", description: Text("Breathing deeply can help you relieve anger. Deep, controlled breathing slows the heart rate, stabilizes pressure and relaxes the body.\n- Put a hand on your abdomen.\n- Inhale slowly through your nose. Focus on filling your belly with air as you inhale and hold your breath for a few seconds.\n- Slowly exhale from your mouth.\n\nYou can repeat this at least 10 times.")),
    Activity(mood: .angry, activityIcon: "airpodsmax", activityColor: Color("myGreen"), activityName: "Relax with music", activitySub: "Activity", description: Text("Listening to music is an excellent distraction technique that can help you vent your anger.Here some suggestion:\n- Pink Floyd - Breathe (In the air)\n- Boards of Canada - Olson\n- Brian Eno - Fullness of the Wind\n- Daft Punk - Veridis Quo")),
    
    //Sad
    Activity(mood: .sad, activityIcon: "list.clipboard.fill", activityColor: Color("myTeal"), activityName: "Organize your space", activitySub: "Activity", description: Text("One of the best way to feel better is to give a quick and effective clean to your living space. Remember that where/how you live have a direct impact on your feelings.")),
    Activity(mood: .sad, activityIcon: "leaf.fill", activityColor: Color("myGreen"), activityName: "Create change", activitySub: "Activity", description: Text("Your goals should be small and easy to accomplish, but as you keep working on them, you’ll be closer and closer to where you want to be in the future.\n\nThe only person who can change the course of your life is yourself. So take action and create change."))
    
]

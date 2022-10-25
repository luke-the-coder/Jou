//
//  FocusView.swift
//  MC1
//

import SwiftUI

struct FocusView: View {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var focusCard = [
        FocusCard(focusIcon: "person.wave.2.fill", focusColor: Color("myTeal"), focusName: "Mindfulness", time: 2, article: Text("**Mindfulness** is a way of paying attention to the present moment, using techniques like meditation, breathing and yoga. It helps us become more aware of our thoughts and feelings so that, instead of being overwhelmed by them, we’re better able to manage them.\n\n**Mindfulness** can be used as a tool to manage your well-being and mental wellness. We all have times when we feel down, stressed or frightened; most of the time, those feelings pass, but sometimes they develop into a more serious problem, which could happen to any one of us.\n\nWhile research is still growing in the area of mindfulness, evidence has suggested the benefit of **mindfulness** to health and wellbeing, with results showing positive effects on several aspects of whole-person health, including the mind, the brain, the body, and behaviour, as well as a person’s relationships with others.\n\n**Mindfulness** has also been shown to help with many conditions, including stress, anxiety, depression and physical problems like hypertension, heart disease and chronic pain.")),
        FocusCard(focusIcon: "cloud.rain.fill", focusColor: Color("myBlue"), focusName: "Okay not to be okay", time: 2, article: Text("As humans, we have the tendency to keep things to ourselves. However, with these exact thoughts, we unknowingly summon the feelings of loneliness and may eventually see ourselves as a burden to ourselves.\n\nDon’t degrade yourself to a quick judgement. A flower does not instantly blossom. Time, care, sun, rain, space. These are just some of the things that nature requires to uphold its beauty. So why do you give yourself nothing?\n\n**Our minds are the most powerful thing we can be in possession of**. It’s always down to how we perceive ourselves. Sometimes, the pain causes our view to become a little hazy and we can’t clearly see the strength and bravery we are made of. Sometimes we need to share and enlighten the burden and clear our vision to unfold the careful path in front of us. The path may seem long or tiring, but all those days of fighting battles with yourself blanketed your capability of overcoming hurdles.\n\nIt’s okay to talk to someone about it. It’s okay to write everything down. It’s okay to lose yourself for a few moments. It’s okay to want to tackle the world by yourself. But it’s never okay to watch yourself fall through an abyss and continue watching.\n\n**You are way stronger than you can see**, maybe your vision is a little hazy now. Trust the process, trust yourself and help yourself.")),
        FocusCard(focusIcon: "camera.macro", focusColor: Color("myPink"), focusName: "Self Confidence", time: 5, article: Text("**Self-confidence is crucial**. It means to have high self-esteem and an overall favorable view of one’s self-value and worth. You are more likely to set goals and have ambitions, stand by your own convictions and beliefs, and not be swayed by peer pressure. You are also more socially adept and better equipped to handle the inevitable ups and downs of adolescence. Additional benefits of confidence building include:\n\n**- Improve self-esteem and self-worth**\nThe higher your confidence, the better you feel about yourself, refusing to settle for less than the best.\n\n**- Reduce fear and anxiety**\nAs we grow in self-confidence, that little voice in our head screaming, “you’re not good enough!” begins to dissipate.\n\n**- Increase life motivation**\nWhen we lack confidence, we find ourselves making excuses for why we can’t do what we want in life. The more you build your confidence, the better you will feel about doing what you have always wanted without fears holding you back.\n\n**- Be okay with setbacks and failure**\nWe all make mistakes. The more confidence we have, the better we will handle those inevitable setbacks and failures.\n\n**- Have healthier relationships**\nConfident people have a better ability to be there for other people. When we lack self-confidence, we constantly worry about what others are thinking about us. This makes it hard to give energy to what’s going on with the people around us.\n\n**- Develop a stronger sense of self**\nConfidence allows you to build a solid foundation for your beliefs and morals. Confident people can accept their strengths and flaws and embrace them as what makes them who they are. It will allow you to stand up for yourself, your beliefs, and other people.\n\n**Self-confidence may take some work to build but it isn’t impossible**. Your confidence will come as you build yourself up through self-love and care."))
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("myBackground")
                    .ignoresSafeArea()
                VStack (spacing: 20) {
                    Text("Learn more about different topic and how it can affect your daily life.")
                    VStack(spacing: 24) {
                        ForEach(focusCard) { card in
                            NavigationLink( destination: DetailView( detail: card)){
                                FocusCardView(card: card)
                            }
                            
                        }
                    }
                    Spacer()
                }
            }
            .navigationTitle("Focus")
        }
    }
}

struct FocusView_Previews: PreviewProvider {
    static var previews: some View {
        FocusView()
    }
}

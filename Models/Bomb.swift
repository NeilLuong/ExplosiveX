//
//  SwiftUIView.swift
//  
//
//  Created by Neil Luong on 4/5/23.
//

import SwiftUI

struct BombDropHistory: Identifiable {
    var id: Int
    var name: String
    var radius: CGFloat
    var imageName: String
    var deaths: Int32
    var injuries: Int32
    var timestamp: Int32
    var affectedAreaImageName: String
    
}

struct Bomb: Identifiable {
    var id: Int
    var title: String
    var imageName: String
    var dropHistories: [BombDropHistory]
    var moreInfo: String
    
}

var BombType = [
    Bomb(
        id: 0,
        title: "Little Boy",
        imageName: "LittleBoy",
        dropHistories: [
            BombDropHistory(
                id: 0,
                name: "Hiroshima",
                radius: 1,
                imageName: "hiroshima1",
                deaths: 66000,
                injuries: 69000,
                timestamp: -770155200,
                affectedAreaImageName: "hiroshimablast"
            )
        ], moreInfo: "Little Boy - The Atomic Bomb That Changed History\nDescription:\nThe \"Little Boy\" was the first atomic bomb ever used in warfare, marking a turning point in human history. Developed during World War II by the United States as part of the top-secret Manhattan Project, the Little Boy was a uranium-based weapon that utilized nuclear fission to unleash a devastating force.\nOn August 6, 1945, the Little Boy was dropped on the Japanese city of Hiroshima by the American B-29 bomber, the Enola Gay, piloted by Colonel Paul W. Tibbets Jr. The bomb detonated approximately 1,900 feet (580 meters) above the city, releasing a blast equivalent to approximately 15,000 tons of TNT. In an instant, the city was flattened, and the intense heat and radiation claimed the lives of tens of thousands of people.\nThe Little Boy's design was relatively simple yet groundbreaking. It used a gun-type mechanism that fired one sub-critical mass of uranium-235 into another, creating a supercritical mass and initiating a chain reaction. The bomb itself was 10 feet (3 meters) long, 28 inches (71 centimeters) in diameter, and weighed around 9,700 pounds (4,400 kilograms).\nThe detonation of the Little Boy, along with the subsequent bombing of Nagasaki with the \"Fat Man\" plutonium-based atomic bomb, ultimately led to Japan's surrender, ending World War II. The bombings demonstrated the immense power of nuclear weapons and ushered in the atomic age, a period of unparalleled technological advancement and global tension.\nThe legacy of the Little Boy remains a topic of debate and reflection, as the world grapples with the implications of nuclear warfare and the ethical dilemmas posed by such devastating weapons."
    ),
    Bomb(
        id: 1,
        title: "MOAB Bomb",
        imageName: "MOAB",
        dropHistories: [
            BombDropHistory(
                id: 1,
                name: "Nangahar province",
                radius: 1,
                imageName: "nangarhar",
                deaths: 100,
                injuries: -1,
                timestamp: 1492056000,
                affectedAreaImageName: "nangarharblast"
            )],
        moreInfo: "MOAB - The Massive Ordnance Air Blast and Modern Non-Nuclear Power\nDescription:\nThe Massive Ordnance Air Blast (MOAB), colloquially known as the \"Mother of All Bombs,\" is a powerful non-nuclear weapon developed by the United States Air Force. Designed to create large-scale destruction without the long-term environmental consequences of nuclear weapons, the MOAB stands as a testament to advancements in conventional weaponry.\nFirst tested in 2003, the MOAB is a 30-foot (9-meter) long, GPS-guided bomb that weighs an impressive 21,600 pounds (9,800 kilograms). Its explosive payload consists of 18,700 pounds (8,480 kilograms) of H6, a high-performance explosive that is 1.35 times more powerful than TNT. Upon detonation, the MOAB releases a massive blast wave capable of obliterating everything within a one-mile (1.6-kilometer) radius.\nThe MOAB's design employs a thin-walled aluminum casing, which maximizes the blast radius by ensuring that most of the explosive energy is converted into an atmospheric shockwave. This makes the MOAB highly effective at destroying soft targets, such as tunnel systems, bunkers, and personnel in the open.\nAs of September 2021, the MOAB has been used in combat only once. On April 13, 2017, the United States dropped a MOAB on a tunnel complex in the Achin District of Nangarhar Province, Afghanistan. The target, used by ISIS-Khorasan (ISIS-K), an affiliate of the Islamic State group, was obliterated by the bomb's immense destructive power.\nThe MOAB serves as a stark reminder of the ever-evolving landscape of modern warfare and the continued development of powerful non-nuclear weapons. Its use in combat has demonstrated the potential of such weapons to shape military strategy and provoke discussion about the ethical implications of their deployment."
    ),
    Bomb(
        id: 2,
        title: "Tsar Bomba",
        imageName: "TsarBomba",
        dropHistories: [
            BombDropHistory(
                id: 2,
                name: "Mityushikha Bay Nuclear Testing Range",
                radius: 15.5,
                imageName: "mityushikha",
                deaths: 0,
                injuries: 0,
                timestamp: -257886000,
            affectedAreaImageName: "tsarbombablast")],
        moreInfo: "Tsar Bomba - The Largest Nuclear Weapon in History\nDescription:\nThe Tsar Bomba, officially known as RDS-220, was the most powerful nuclear weapon ever detonated. Developed by the Soviet Union during the height of the Cold War, the Tsar Bomba stands as a sobering example of the destructive capabilities of nuclear weapons and the potential for unimaginable devastation.\nThe Tsar Bomba was designed and tested in 1961, amidst escalating tensions between the United States and the Soviet Union. The colossal weapon measured 26 feet (8 meters) in length and weighed 27 metric tons (59,525 pounds). Its explosive yield was an astounding 50 megatons, equivalent to 50 million tons of TNT, making it approximately 3,333 times more powerful than the bomb dropped on Hiroshima.\nThe design of the Tsar Bomba included a three-stage thermonuclear device, with a uranium-238 tamper to increase the efficiency of the fusion process. The original design called for a 100-megaton yield, but this was reduced to 50 megatons to limit the risk of radioactive fallout and to ensure the safe delivery of the bomb.\nOn October 30, 1961, the Tsar Bomba was detonated in a test over the remote Novaya Zemlya archipelago in the Arctic Ocean. The explosion generated a fireball visible from over 600 miles (1,000 kilometers) away and produced a mushroom cloud that rose to a height of 40 miles (64 kilometers). The shockwave from the blast traveled around the Earth three times and caused widespread damage up to 100 miles (160 kilometers) from the epicenter.\nThe Tsar Bomba remains a chilling reminder of the immense destructive power of nuclear weapons and the precarious balance that existed during the Cold War. Its development and testing prompted international efforts to reduce nuclear stockpiles and limit the proliferation of such devastating weapons. Today, the Tsar Bomba serves as a symbol of the need for continued vigilance and diplomacy to prevent the use of nuclear weapons in future conflicts."
    ),
    Bomb(
        id: 3,
        title: "Fat Man",
        imageName: "FatMan",
        dropHistories: [
            BombDropHistory(
                id: 3,
                name: "Nagasaki",
                radius: 2.5,
                imageName: "nagasaki1",
                deaths: 50000,
                injuries: 60000,
                timestamp: -769896000,
                affectedAreaImageName: "nagasakiblast"
            )],
        moreInfo: "Fat Man - The Second Atomic Bomb and the End of World War II\nDescription:\nThe \"Fat Man\" was the second atomic bomb used in warfare, deployed just three days after the \"Little Boy\" devastated Hiroshima. Developed by the United States during World War II as part of the highly classified Manhattan Project, the Fat Man was a plutonium-based weapon that relied on nuclear fission to release an immense destructive force.\nOn August 9, 1945, the Fat Man was dropped on the Japanese city of Nagasaki by the American B-29 bomber, Bockscar, piloted by Major Charles W. Sweeney. Detonating at an altitude of approximately 1,650 feet (503 meters) above the city, the bomb unleashed a blast equivalent to around 21,000 tons of TNT. The explosion obliterated a significant portion of Nagasaki, with the intense heat and radiation causing massive casualties and destruction.\nThe Fat Man's design was more complex than that of the Little Boy, utilizing an implosion-type mechanism. A sub-critical sphere of plutonium-239 was surrounded by a shell of high explosives, which, when detonated, compressed the plutonium into a supercritical mass, initiating a nuclear chain reaction. The bomb measured 10 feet 8 inches (3.25 meters) in length, 60 inches (152 centimeters) in diameter, and weighed approximately 10,300 pounds (4,670 kilograms).\nThe bombings of Hiroshima and Nagasaki, with the Fat Man's detonation serving as the final devastating blow, ultimately led to Japan's unconditional surrender on August 15, 1945, effectively ending World War II. These events marked the beginning of the atomic age and sparked an ongoing debate about the ethics and ramifications of nuclear warfare. The legacy of the Fat Man and its immense destructive power serves as a reminder of the responsibility that comes with harnessing such technology."
            
    ),
    Bomb(
        id: 4,
        title: "V-2 Rocket",
        imageName: "V2_Rocket",
        dropHistories: [BombDropHistory(
            id: 4,
            name: "v2rocket",
            radius: 0.125,
            imageName: "london1",
            deaths: 2754,
            injuries: 6,
            timestamp: -798840000,
            affectedAreaImageName: "londonblast"
        ), BombDropHistory(
            id: 5,
            name: "v2rocket",
            radius: 0.125,
            imageName: "belgium",
            deaths: 2754,
            injuries: 6,
            timestamp: -795816000,
            affectedAreaImageName: "belgiumblast"
        )],
        moreInfo: "V-2 Rocket - The World's First Long-Range Guided Ballistic Missile\nDescription:\nThe V-2 rocket, also known as the A-4 or Vergeltungswaffe 2, was a groundbreaking weapon developed by Nazi Germany during World War II. As the world's first long-range guided ballistic missile, the V-2 paved the way for modern rocketry and ballistic missile technology, while also posing a significant threat to civilian populations during the conflict.\nDesigned by German engineer Wernher von Braun and his team at the Peenemünde Army Research Center, the V-2 rocket was first successfully tested in October 1942. Measuring 46 feet (14 meters) in length and weighing 27,600 pounds (12,500 kilograms), the V-2 was powered by a liquid-propellant rocket engine, utilizing a combination of liquid oxygen and ethanol as fuel. The rocket was capable of reaching an altitude of 128 miles (206 kilometers) and had a range of approximately 200 miles (320 kilometers).\nThe V-2's guidance system was based on a gyroscope and accelerometer, enabling the missile to follow a predetermined trajectory and reach its target with reasonable accuracy. The rocket carried a 2,200-pound (1,000-kilogram) high-explosive warhead, which could cause significant damage upon impact.\nDuring the latter stages of World War II, Nazi Germany launched thousands of V-2 rockets against Allied targets, primarily London and Antwerp. The V-2's supersonic speed and high altitude made it nearly impossible for existing air defenses to intercept, resulting in the deaths of an estimated 9,000 civilians and military personnel.\nDespite its destructive capabilities, the V-2's impact on the outcome of the war was limited, largely due to its high production cost and the disruption of its manufacturing facilities by Allied bombing. Following the end of the war, both the United States and the Soviet Union seized V-2 technology and personnel to jumpstart their own rocket and missile programs.\nThe V-2 rocket stands as a pivotal development in the history of military technology and space exploration, with its innovations paving the way for the Intercontinental Ballistic Missiles (ICBMs) and space launch vehicles of the post-war era. However, the human cost of its development and deployment remains a sobering reminder of the destructive potential of such advanced weaponry."
    )
]

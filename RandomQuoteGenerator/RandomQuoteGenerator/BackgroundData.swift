//
//  BackgroundData.swift
//  RandomQuoteGenerator
//
//  Created by Shah, Om on 3/10/24.
//

import SwiftUI

let quotes : [String] = [
"Everybody deserves to be loved.",
"It gets easier. Every day it gets a little easier. But you gotta do it every day, that's the hard part.",
   "You have to play the hand you're dealt, but sometimes you gotta reshuffle the deck.",
   "I don't know what to tell you, man. Life's a bitch and then you die, right?",
   "You know, sometimes I feel like I was born with a leak, and any goodness I started with just slowly spilled out of me and now it's all gone.",
   "The key to being happy isn't a search for meaning. It's to just keep yourself busy with unimportant nonsense, and eventually, you'll be dead.",
   "You know, it's funny; when you look at someone through rose-colored glasses, all the red flags just look like flags.",
   "You are all the things that are wrong with you. It's not the alcohol or the drugs or any of the shitty things that happened to you in your career or when you were a kid. It's you.",
   "It's not about being happy, that is the thing. I'm just trying to get through each day.",
   "You can't keep doing this! You can't keep doing shitty things, and then feel bad about yourself, like that makes it okay!",
"I spent so much time being miserable, thinking that I was damaged goods. But every time I find a new way to sabotage myself, I realize I'm still here.",
  "You're responsible for your own happiness. You just have to keep moving forward.",
  "It's like the great 21st-century philosopher Chris Rock once said: 'Whatever doesn't kill you, makes you older.'",
  "Life is a series of closing doors, isn't it?",
  "You get addicted to the concept of someone. You spend all this time thinking about them, imagining a relationship with them. You build them up in your head, but they don't know that person.",
  "Closure is a made-up thing by Steven Spielberg to sell movie tickets. It, like true love and the Munich Olympics, doesn't exist in the real world. The only thing to do now is just to keep living forward.",
  "There are no happy endings. You just need to do the best you can until you can't do it anymore.",
  "You can't cling to the past, because no matter how tightly you hold on, it's already gone."
]

func getQuote() -> String {
    let randomNum = Int.random(in: 0..<quotes.count)
    return quotes[randomNum]
}


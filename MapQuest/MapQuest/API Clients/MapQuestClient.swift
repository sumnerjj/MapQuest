//
//  MapQuestAPIClient.swift
//  MapQuest
//
//  Created by Mushaheed Kapadia on 10/14/17.
//  Copyright © 2017 Mushaheed Kapadia. All rights reserved.
//

import Foundation
import Parse

class MapQuestClient: NSObject {
    
    private static var client: MapQuestClient! = nil
    
    override init() {
        // Initialize Parse
        // Set applicationId and server based on the values in the Heroku settings.
        // clientKey is not used on Parse open source unless explicitly configured
        Parse.initialize(
            with: ParseClientConfiguration(block: { (configuration: ParseMutableClientConfiguration) -> Void in
                configuration.applicationId = "myAppId"
                configuration.clientKey = nil  // set to nil assuming you have not set clientKey
                configuration.server = "https://questmakers.herokuapp.com/parse"
            })
        )
    }
    
    class func initializeClient() {
        // noop if client is already initialized
        if client == nil {
            client = MapQuestClient()
        }
    }
    
    class func getInstance() -> MapQuestClient {
        if client == nil {
            client = MapQuestClient()
        }
        return client
    }
    
    func fetchAllQuests(completion: ([Quest]) -> Void) -> Void {
        // temporary while we get Parse hooked up
        var quests: [Quest] = [Quest]()
        
        quests.append(Quest(questDict: ["name": "All Quests 1", "state": "Completed", "questDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis in ex sed rutrum. Sed viverra vehicula turpis, sit amet pellentesque nunc interdum at. Nulla rutrum mi eu lacus congue rhoncus. Cras vel est velit. Pellentesque vel feugiat leo. Vestibulum fermentum felis nec diam viverra tempus. Sed sodales pulvinar nibh, sit amet fringilla turpis posuere eu. Curabitur varius accumsan facilisis. Etiam sit amet pharetra dui. Maecenas vehicula dignissim est, ac consectetur orci ullamcorper a."]))
        quests.append(Quest(questDict: ["name": "All Quests 2", "state": "Completed", "questDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis in ex sed rutrum. Sed viverra vehicula turpis, sit amet pellentesque nunc interdum at. Nulla rutrum mi eu lacus congue rhoncus. Cras vel est velit. Pellentesque vel feugiat leo. Vestibulum fermentum felis nec diam viverra tempus. Sed sodales pulvinar nibh, sit amet fringilla turpis posuere eu. Curabitur varius accumsan facilisis. Etiam sit amet pharetra dui. Maecenas vehicula dignissim est, ac consectetur orci ullamcorper a."]))
        quests.append(Quest(questDict: ["name": "All Quests 3", "state": "Completed", "questDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis in ex sed rutrum. Sed viverra vehicula turpis, sit amet pellentesque nunc interdum at. Nulla rutrum mi eu lacus congue rhoncus. Cras vel est velit. Pellentesque vel feugiat leo. Vestibulum fermentum felis nec diam viverra tempus. Sed sodales pulvinar nibh, sit amet fringilla turpis posuere eu. Curabitur varius accumsan facilisis. Etiam sit amet pharetra dui. Maecenas vehicula dignissim est, ac consectetur orci ullamcorper a."]))
        quests.append(Quest(questDict: ["name": "All Quests 4", "state": "Completed", "questDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis in ex sed rutrum. Sed viverra vehicula turpis, sit amet pellentesque nunc interdum at. Nulla rutrum mi eu lacus congue rhoncus. Cras vel est velit. Pellentesque vel feugiat leo. Vestibulum fermentum felis nec diam viverra tempus. Sed sodales pulvinar nibh, sit amet fringilla turpis posuere eu. Curabitur varius accumsan facilisis. Etiam sit amet pharetra dui. Maecenas vehicula dignissim est, ac consectetur orci ullamcorper a."]))

        return completion(quests)
    }
    
    func fetchMyQuests(completion: ([Quest]) -> Void) -> Void {
        // temporary while we get Parse hooked up
        var quests: [Quest] = [Quest]()
        
        quests.append(Quest(questDict: ["name": "My Quests 1", "state": "Completed", "questDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis in ex sed rutrum. Sed viverra vehicula turpis, sit amet pellentesque nunc interdum at. Nulla rutrum mi eu lacus congue rhoncus. Cras vel est velit. Pellentesque vel feugiat leo. Vestibulum fermentum felis nec diam viverra tempus. Sed sodales pulvinar nibh, sit amet fringilla turpis posuere eu. Curabitur varius accumsan facilisis. Etiam sit amet pharetra dui. Maecenas vehicula dignissim est, ac consectetur orci ullamcorper a."]))
        quests.append(Quest(questDict: ["name": "My Quests 2", "state": "Completed", "questDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis in ex sed rutrum. Sed viverra vehicula turpis, sit amet pellentesque nunc interdum at. Nulla rutrum mi eu lacus congue rhoncus. Cras vel est velit. Pellentesque vel feugiat leo. Vestibulum fermentum felis nec diam viverra tempus. Sed sodales pulvinar nibh, sit amet fringilla turpis posuere eu. Curabitur varius accumsan facilisis. Etiam sit amet pharetra dui. Maecenas vehicula dignissim est, ac consectetur orci ullamcorper a."]))
        quests.append(Quest(questDict: ["name": "My Quests 3", "state": "Completed", "questDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis in ex sed rutrum. Sed viverra vehicula turpis, sit amet pellentesque nunc interdum at. Nulla rutrum mi eu lacus congue rhoncus. Cras vel est velit. Pellentesque vel feugiat leo. Vestibulum fermentum felis nec diam viverra tempus. Sed sodales pulvinar nibh, sit amet fringilla turpis posuere eu. Curabitur varius accumsan facilisis. Etiam sit amet pharetra dui. Maecenas vehicula dignissim est, ac consectetur orci ullamcorper a."]))
        quests.append(Quest(questDict: ["name": "My Quests 4", "state": "Completed", "questDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis in ex sed rutrum. Sed viverra vehicula turpis, sit amet pellentesque nunc interdum at. Nulla rutrum mi eu lacus congue rhoncus. Cras vel est velit. Pellentesque vel feugiat leo. Vestibulum fermentum felis nec diam viverra tempus. Sed sodales pulvinar nibh, sit amet fringilla turpis posuere eu. Curabitur varius accumsan facilisis. Etiam sit amet pharetra dui. Maecenas vehicula dignissim est, ac consectetur orci ullamcorper a."]))

        return completion(quests)
    }
    
    func fetchInProgressQuests(completion: ([Quest]) -> Void) -> Void {
        fetchMyQuests { (quests: [Quest]) in
            let inProgressQuests = quests.filter({ (quest: Quest) -> Bool in
                quest.state == State.IN_PROGRESS
            })
            return completion(inProgressQuests)
        }
    }
    
    func fetchCompletedQuests(completion: ([Quest]) -> Void) -> Void {
        fetchMyQuests { (quests: [Quest]) in
            let completedQuests = quests.filter({ (quest: Quest) -> Bool in
                quest.state == State.COMPLETED
            })
            return completion(completedQuests)
        }
    }
    
}
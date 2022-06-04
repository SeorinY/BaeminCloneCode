//
//  LocalRestaurant.swift
//  Search_seorin
//
//  Created by Mac Book Pro on 2022/06/03.
//

import Foundation

class Restaurant{
    var name : String
    var image : String
    var rank : Float
    var leastDeliveryCost : Int
    var mostDeliveryCost : Int
    var leastDeliveryTime : Int
    var mostDeliveryTime : Int
    
    init (name : String, image : String, rank : Float, leastDeliveryCost : Int, mostDeliveryCost : Int, leastDeliveryTime : Int, mostDeliveryTime : Int){
        self.name = name
        self.image = image
        self.rank = rank
        self.leastDeliveryCost =  leastDeliveryCost
        self.mostDeliveryCost  = mostDeliveryCost
        self.leastDeliveryTime = leastDeliveryTime
        self.mostDeliveryTime = mostDeliveryTime
    }
    
    
}

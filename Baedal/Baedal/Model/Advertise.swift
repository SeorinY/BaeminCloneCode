//
//  Advertise.swift
//  Baedal
//
//  Created by Mac Book Pro on 2022/04/28.
//

import Foundation

class Advertise : ObservableObject{
    @Published var image : String
    @Published var restaurant : String
    @Published var eval : Float
    @Published var leastDeliveryMin : Int
    @Published var mostDeliveryMin : Int
    @Published var leastCost : Int
    @Published var leastDeliveryCost : Int
    @Published var mostDeliveryCost : Int
    @Published var distance : Float
    @Published var isCoupon : Bool
    @Published var isPacking : Bool
    @Published var isReservation : Bool
    
    init(image : String, restaurant : String, eval : Float, leastDeliveryMin : Int, mostDeliveryMin : Int, leastCost : Int, leastDeliveryCost : Int, mostDeliveryCost : Int, distance : Float, isCoupon : Bool, isPacking : Bool, isReservation : Bool){
        self.image = image
        self.restaurant = restaurant
        self.eval = eval
        self.leastDeliveryMin = leastDeliveryMin
        self.mostDeliveryMin = mostDeliveryMin
        
        self.leastCost = leastCost
        self.leastDeliveryCost = leastDeliveryCost
        self.mostDeliveryCost = mostDeliveryCost
        self.distance = distance
        self.isCoupon = isCoupon
        self.isPacking = isPacking
        self.isReservation = isReservation
    }
    
}

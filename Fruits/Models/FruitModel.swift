//
//  FruitModel.swift
//  Fruits
//
//  Created by Hasan on 4/2/24.
//


import SwiftUI


struct FruitModel : Identifiable, Hashable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}

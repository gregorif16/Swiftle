//
//  Model.swift
//  Swiftle
//
//  Created by David Ortega Iglesias on 17/7/24.
//

import Foundation
import SwiftUI

enum Status {
	case normal
	case match
	case dontAppear
	case appear
}

var keyboardData: [LetterModel] = [
	.init("Q"), .init("W"), .init("E"), .init("R"), .init("T"), .init("Y"), .init("U"), .init("I"), .init("O"), .init("P"),
	.init("A"), .init("S"), .init("D"), .init("F"), .init("G"), .init("H"), .init("J"), .init("K"), .init("L"), .init("Ñ"),
	 .init(""), .init("Z"), .init("X"), .init("V"), .init("B"), .init("N"), .init("M"), .init(""), .init("🗑️"),
    .init("Verificar 🚀"),
]

struct LetterModel {
	let id: String = UUID().uuidString
	let name: String
	var status: Status
	
	var backgroundColor: Color {
		switch status {
			
		case .normal:
			// Grey
			return Color(red: 213.0/255, green: 216.0/255, blue: 222.0/255)
		case .match:
			// Green
			return Color(red: 109.0/255, green: 169.0/255, blue: 103.0/255)
		case .dontAppear:
			// Black
			return Color(red: 120.0/255, green: 124.0/255, blue: 127.0/255)
		case .appear:
			// Yellow
			return Color(red: 201.0/255, green: 180.0/255, blue: 87.0/255)
		}
	}
	
	var foregroundColor: Color {
		switch status {
		case .normal:
			return .black
		case .match, .dontAppear, .appear:
			return .white
		}
	}
	
	init(_ name: String) {
		self.name = name
		self.status = .normal
	}
}

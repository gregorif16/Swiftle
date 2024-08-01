//
//  ViewModel.swift
//  Swiftle
//
//  Created by David Ortega Iglesias on 17/7/24.
//

import Foundation
import UIKit

enum BannerType {
	case error(String)
	case success
}

final class ViewModel: ObservableObject {
	var numOfRow: Int = 0
	@Published var bannerType: BannerType? = nil
	@Published var result: String = "ARRAY"
	@Published var word: [LetterModel] = []
	@Published var gameData: [[LetterModel]] = [
		[.init(""), .init(""), .init(""), .init(""), .init("")],
		[.init(""), .init(""), .init(""), .init(""), .init("")],
		[.init(""), .init(""), .init(""), .init(""), .init("")],
		[.init(""), .init(""), .init(""), .init(""), .init("")],
		[.init(""), .init(""), .init(""), .init(""), .init("")],
		[.init(""), .init(""), .init(""), .init(""), .init("")],
	]
	
	// Este metodo se va a llamar cada vez que el usuario presione una tecla del keyboard
	
	func addNewLetter(letterModel: LetterModel) {
		bannerType = nil
		
		if letterModel.name == "🚀" {
			tapOnSend()
			return
		}
		
		if letterModel.name == "🗑️" {
			tapOnRemove()
			return
		}
		
		if word.count < 5 {
			let letter = LetterModel(letterModel.name)
			word.append(letter)
			gameData[numOfRow][word.count-1] = letter
		}
	}
	
	private func tapOnSend() {
		print("Tap on send")
		// Comprobamos que la palabra tiene 5 letras
		guard word.count == 5 else {
			print("Añade mas letras!")
			bannerType = .error("¡Añade mas letras!")
			return
		}
		
		// Juntamos todas las letras de la fila
		let finalStringWord = word.map { $0.name }.joined()
		
		if wordIsReal(word: finalStringWord) {
			print("Correct word")
			
			for (index, _) in word.enumerated() {
				let currentCharacter = word[index].name
				var status: Status
				
				// Comprobar que la letra añadida aparece en la palabra resultado
				if result.contains(where: {String($0) == currentCharacter }) {
					status = .appear
					print("\(currentCharacter) .appear")
					
					// Comprobar letra por letra si coincide
					if currentCharacter == String(result[result.index(result.startIndex, offsetBy: index)]) {
						status = .match
						print("\(currentCharacter) .match")
                        SoundManager.intance.playSound(sound: .fail)
					}
				} else {
					status = .dontAppear
					print("\(currentCharacter) .dontAppear")
				}
				
				// Update GamwView
				var updateGameBoardCell = gameData[numOfRow][index]
				updateGameBoardCell.status = status
				gameData[numOfRow][index] = updateGameBoardCell
				
				// Update KeyboardView
				let indexToUpdate = keyboardData.firstIndex(where: { $0.name == word[index].name })
				var keyboardKey = keyboardData[indexToUpdate!]
				if keyboardKey.status != .match {
					keyboardKey.status = status
					keyboardData[indexToUpdate!] = keyboardKey
				}
			}
			
			// Buscamos todas las letras que tienen de estado match
			let isUserWinner = gameData[numOfRow].reduce(0) { partialResult, letterModel in
				if letterModel.status == .match {
					return partialResult + 1
				}
				return 0
			}
			
			if isUserWinner == 5 {
				bannerType = .success
			} else {
				// Clean word and move to the new row
				word = []
				numOfRow += 1
			}

		} else {
			print("Incorrect word")
			bannerType = .error("Palabra incorrecta, no existe")
		}
		
	}
	
	func hasError(index: Int) -> Bool {
		guard let bannerType = bannerType else {
			return false
		}
		
		switch bannerType {
		case .error(_):
			return index == numOfRow
		case .success:
			return false
		}
	}
	
	private func tapOnRemove() {
		print("Tap on remove")
		guard word.count > 0 else {
			return
		}
		gameData[numOfRow][word.count-1] = .init("")
		word.removeLast()
	}
	
	//si esta palabra existe en el diccionario retornara true
	private func wordIsReal(word: String) -> Bool {
		UIReferenceLibraryViewController.dictionaryHasDefinition(forTerm: word)
	}
}

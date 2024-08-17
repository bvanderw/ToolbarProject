//
//  KeyboardExampleView.swift
//  ToolbarProject
//
//  Created by Karin Prater on 30.10.21.
//

import SwiftUI

// MARK: - KeyboardExampleView

struct KeyboardExampleView: View
{
  @State private var text = ""
  var body: some View
  {
    VStack
    {
      Text("Keyboard")
      TextField("", text: $text)
        .textFieldStyle(RoundedBorderTextFieldStyle())
    }
    .padding()
    .toolbar
    {
      ToolbarItemGroup(placement: .keyboard)
      {
        Button
        {
          text.append("this thing")
        } label: {
          Text("this thing")
        }
      }
    }
  }
}

// MARK: - KeyboardExampleView_Previews

struct KeyboardExampleView_Previews: PreviewProvider
{
  static var previews: some View
  {
    KeyboardExampleView()
  }
}

// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 40) {
            RoundRectButtonView(
                color: Color(red: 0.941, green: 0.498, blue: 0.353),
                titleColor: .white,
                borderColor: Color(red: 0.925, green: 0.235, blue: 0.102),
                borderWidth: 2,
                title: "Hello",
                size: 20
            )
            .frame(height: 60)
            .padding(.horizontal, 60)
            
            RoundRectButtonView(
                color: Color(red: 0.475, green: 0.839, blue: 0.976),
                titleColor: .white,
                borderColor: Color(red: 0.141, green: 0.396, blue: 0.565),
                borderWidth: 2,
                title: "Hello",
                size: 20,
                image: Image(systemName: "phone")
            )
            .frame(height: 60)
            .padding(.horizontal, 60)
            
            RoundSquareButtonView(
                color: Color(red: 0.584, green: 0.824, blue: 0.42),
                titleColor: .white,
                borderColor: Color(red: 0.196, green: 0.341, blue: 0.102),
                borderWidth: 1,
                size: 20,
                image: Image(systemName: "phone")
            )
            .frame(width: 60, height: 60)
            .padding(.horizontal, 60)
        }
        .padding(.top, 200)
    }
}

struct RoundRectButtonView: View {
    let color: Color
    let titleColor: Color
    let borderColor: Color
    let borderWidth: CGFloat
    let title: String
    let size: CGFloat
    var image: Image? = nil
    
    var body: some View {
        Button(action: {
            print("Button tapped")
        }) {
            if let image = image {
                HStack {
                    image
                        .foregroundColor(titleColor)
                    Text(title)
                        .foregroundColor(titleColor)
                        .font(.system(size: size))
                }
            } else {
                Text(title)
                    .foregroundColor(titleColor)
                    .font(.system(size: size))
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(color)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(borderColor, lineWidth: borderWidth)
        )
    }
}

struct RoundSquareButtonView: View {
    let color: Color
    let titleColor: Color
    let borderColor: Color
    let borderWidth: CGFloat
    let size: CGFloat
    let image: Image
    
    var body: some View {
        Button(action: {
            print("Button tapped")
        }) {
            image
                .foregroundColor(titleColor)
                .font(.system(size: size))
        }
        .frame(width: 60, height: 60)
        .background(color)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(borderColor, lineWidth: borderWidth)
        )
    }
}

@available(iOS 14.0, *)
@available(macOS 11.0, *)
@main
struct SwiftyViewsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

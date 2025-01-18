// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

extension View {
    @available(iOS 17.0, *)
    @ViewBuilder
    public func floatingWindow<Content: View>(
        animated: Animation = .snappy,
        show: Binding<Bool>,
        @ViewBuilder content: @escaping () -> Content
    ) -> some View {
        self
            .modifier(
                UniversalOverlayModifier(
                    animation: animated,
                    show: show,
                    viewContent: content))
    }
}

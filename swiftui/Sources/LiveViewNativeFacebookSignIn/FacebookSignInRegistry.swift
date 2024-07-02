import LiveViewNative
import LiveViewNativeStylesheet
import SwiftUI

public extension Addons {
    @Addon
    struct FacebookSignIn<Root: RootRegistry> {
        
        public enum TagName: String {
            case facebookSignInButton = "FacebookSignInButton"
        }
        
        public static func lookup(_ name: TagName, element: ElementNode) -> some View {
            switch name {
            case .facebookSignInButton:
                FacebookSignInButton<Root>()
            }
        }
    }
}

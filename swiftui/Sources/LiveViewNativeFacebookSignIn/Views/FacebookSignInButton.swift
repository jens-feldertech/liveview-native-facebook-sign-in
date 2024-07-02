import SwiftUI
import LiveViewNative
import FacebookLogin

@_documentation(visibility: public)
@LiveElement
struct FacebookSignInButton<Root: RootRegistry>: View {
    @Event("onSignIn", type: "click") private var onSignIn
    
    var body: some View {
        Button(action: handleSignInButton) {
            Text("Sign in with Facebook")
                .frame(maxWidth: .infinity, maxHeight: 44)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
    
    func handleSignInButton() {
        let loginManager = LoginManager()
        loginManager.logIn(permissions: [.publicProfile, .email], from: nil) { result, error in
            guard error == nil else { return }
            guard let result = result, !result.isCancelled else { return }

            if let token = AccessToken.current {
                onSignIn(value: ["access_token": token.tokenString])
            }
        }
    }
}
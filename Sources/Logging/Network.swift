import Sentry

@objc(Logging)
public class Logging: NSObject {
    @objc public func execute() {
        SentrySDK.start { options in
            options.dsn = "<sua-dsn>"
            options.debug = true
        }

        print("🔵 Logging (Sentry) module executed!")
    }
}

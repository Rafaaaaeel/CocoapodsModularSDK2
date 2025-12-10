public enum ModularSDK {
    public static func start() {
        run("ModularSDK.Chat")
        run("ModularSDK.Network")
        run("ModularSDK.Logging")
    }
}

private extension ModularSDK {

    static func run(_ className: String) {
        guard let type = NSClassFromString(className) as? NSObject.Type else {
            print("Class not found:", className)
            return
        }
        
        let instance = type.init()
        instance.perform(NSSelectorFromString("execute"))
    }
}

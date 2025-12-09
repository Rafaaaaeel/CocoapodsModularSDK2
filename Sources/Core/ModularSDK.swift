public enum ModularSDK {
    public static func start() {
        run("ModularSDK_Chat.Chat")
        run("ModularSDK_Network.Network")
    }
}

private extension ModularSDK {

    static func run(_ className: String) {
        guard let type = NSClassFromString(className) as? NSObject.Type else { return }
        let instance = type.init()
        instance.perform(NSSelectorFromString("execute"))
    }
}

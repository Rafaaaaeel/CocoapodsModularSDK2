public enum ModularSDK {
    public static func start() {
        runChatIfAvailable()
        runNetworkIfAvailable()
    }
}

private extension ModularSDK {

    static func runChatIfAvailable() {
        guard let chatType = NSClassFromString("ChatModule.Chat") as? NSObject.Type else { return }
        let instance = chatType.init()
        instance.perform(NSSelectorFromString("execute"))
    }

    static func runNetworkIfAvailable() {
        guard let netType = NSClassFromString("NetworkModule.Network") as? NSObject.Type else { return }
        let instance = netType.init()
        instance.perform(NSSelectorFromString("execute"))
    }
}

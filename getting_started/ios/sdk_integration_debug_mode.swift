 #if DEBUG
    CleverTap.setDebugLevel(CleverTapLogLevel.debug.rawValue)
#else
    CleverTap.setDebugLevel(CleverTapLogLevel.off.rawValue)
#endif

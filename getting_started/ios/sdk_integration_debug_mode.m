#ifdef INFO
 [CleverTap setDebugLevel: CleverTapLogInfo];
#endif

#ifdef DEBUG
[CleverTap setDebugLevel: CleverTapLogDebug];
#endif

#ifdef OFF
[CleverTap setDebugLevel: CleverTapLogOff];
#endif


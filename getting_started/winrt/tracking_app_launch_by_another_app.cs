// In the OnActivated method of App.xaml.cs, add the following code
// (Tip: You can either use method #1, or method #2 as shown below):

protected override void OnActivated(IActivatedEventArgs args)
{
 base.OnActivated(args);
 if (args.Kind == ActivationKind.Protocol)
 {
 ProtocolActivatedEventArgs eventArgs = args as ProtocolActivatedEventArgs;
 // METHOD #1:Handle URI activation
 // The received URI is eventArgs.Uri.AbsoluteUri
 // save the returning instance in a global variable for later use
 CleverTapApi.Init(CleverTapAccountId, CleverTapToken, eventArgs.Uri.AbsoluteUri);
 }

 // METHOD #2: if you already have dictionary of parameters just pass the params
 // save the returning instance in a global variable for later use
 CleverTapApi.Init(CleverTapAccountId, CleverTapToken, paramDictionary);
}
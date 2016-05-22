public App()
{
  this.InitializeComponent();
  this.Suspending += this.OnSuspending;
  this.Resuming += this.OnResuming;
}
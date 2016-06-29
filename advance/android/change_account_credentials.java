import android.app.Application;
import com.clevertap.android.sdk.ActivityLifecycleCallback;
import com.clevertap.android.sdk.CleverTapAPI;

public class MyApplication extends Application {
    @Override
    public void onCreate() {
        CleverTapAPI.changeCredentials("Your account ID here", "Your account token here");
        ActivityLifecycleCallback.register(this); // Must be called before super.onCreate()
        super.onCreate();
    }
}

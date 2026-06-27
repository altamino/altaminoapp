package com.narvii.util.services;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.narvii.app.NVApplication;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class TopActivityService {
    WeakReference<Activity> lastResumeActivity;
    WeakReference<Activity> topActivity;

    public TopActivityService() {
        NVApplication.instance().registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.narvii.util.services.TopActivityService.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                TopActivityService.this.lastResumeActivity = new WeakReference<>(activity);
            }
        });
    }

    public Activity getLastResumedActivity() {
        WeakReference<Activity> weakReference = this.lastResumeActivity;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public Activity getTopActivity() {
        WeakReference<Activity> weakReference = this.topActivity;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }
}

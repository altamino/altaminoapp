package com.codemonkeylabs.fpslibrary;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class Foreground implements Application.ActivityLifecycleCallbacks {
    public static final long CHECK_DELAY = 600;
    public static final String TAG = Foreground.class.getName();
    private static Foreground instance;
    private Runnable check;
    private boolean foreground = true;
    private boolean paused = true;
    private Handler handler = new Handler();
    private List<Listener> listeners = new CopyOnWriteArrayList();

    public interface Listener {
        void onBecameBackground();

        void onBecameForeground();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
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

    public static Foreground init(Application application) {
        if (instance == null) {
            instance = new Foreground();
            application.registerActivityLifecycleCallbacks(instance);
        }
        return instance;
    }

    public static Foreground get(Context context) {
        Foreground foreground = instance;
        if (foreground != null) {
            return foreground;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            init((Application) applicationContext);
        }
        throw new IllegalStateException("Foreground is not initialised and cannot obtain the Application object");
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.paused = false;
        boolean z = !this.foreground;
        this.foreground = true;
        Runnable runnable = this.check;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        if (z) {
            Log.i(TAG, "went foreground");
            Iterator<Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onBecameForeground();
                } catch (Exception e) {
                    Log.e(TAG, "Listener threw exception!", e);
                }
            }
            return;
        }
        Log.i(TAG, "still foreground");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.paused = true;
        Runnable runnable = this.check;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        Handler handler = this.handler;
        Runnable runnable2 = new Runnable() { // from class: com.codemonkeylabs.fpslibrary.Foreground.1
            @Override // java.lang.Runnable
            public void run() {
                if (Foreground.this.foreground && Foreground.this.paused) {
                    Foreground.this.foreground = false;
                    Log.i(Foreground.TAG, "went background");
                    Iterator it = Foreground.this.listeners.iterator();
                    while (it.hasNext()) {
                        try {
                            ((Listener) it.next()).onBecameBackground();
                        } catch (Exception e) {
                            Log.e(Foreground.TAG, "Listener threw exception!", e);
                        }
                    }
                    return;
                }
                Log.i(Foreground.TAG, "still foreground");
            }
        };
        this.check = runnable2;
        handler.postDelayed(runnable2, 600L);
    }
}

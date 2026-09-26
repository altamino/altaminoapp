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

/* JADX INFO: loaded from: classes6.dex */
public class d implements Application.ActivityLifecycleCallbacks {
    public static final long CHECK_DELAY = 600;
    public static final String TAG = "com.codemonkeylabs.fpslibrary.d";
    private static d instance;
    private Runnable check;
    private boolean foreground = true;
    private boolean paused = true;
    private Handler handler = new Handler();
    private List<b> listeners = new CopyOnWriteArrayList();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!d.this.foreground || !d.this.paused) {
                Log.i(d.TAG, "still foreground");
                return;
            }
            d.this.foreground = false;
            Log.i(d.TAG, "went background");
            Iterator it = d.this.listeners.iterator();
            while (it.hasNext()) {
                try {
                    ((b) it.next()).a();
                } catch (Exception e) {
                    Log.e(d.TAG, "Listener threw exception!", e);
                }
            }
        }
    }

    public interface b {
        void a();

        void b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.paused = true;
        Runnable runnable = this.check;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        Handler handler = this.handler;
        a aVar = new a();
        this.check = aVar;
        handler.postDelayed(aVar, 600L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.paused = false;
        boolean z6 = !this.foreground;
        this.foreground = true;
        Runnable runnable = this.check;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        if (!z6) {
            Log.i(TAG, "still foreground");
            return;
        }
        Log.i(TAG, "went foreground");
        Iterator<b> it = this.listeners.iterator();
        while (it.hasNext()) {
            try {
                it.next().b();
            } catch (Exception e) {
                Log.e(TAG, "Listener threw exception!", e);
            }
        }
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

    public static d f(Context context) {
        d dVar = instance;
        if (dVar != null) {
            return dVar;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            g((Application) applicationContext);
        }
        throw new IllegalStateException("Foreground is not initialised and cannot obtain the Application object");
    }

    public static d g(Application application) {
        if (instance == null) {
            d dVar = new d();
            instance = dVar;
            application.registerActivityLifecycleCallbacks(dVar);
        }
        return instance;
    }

    public void e(b bVar) {
        this.listeners.add(bVar);
    }

    public void h(b bVar) {
        this.listeners.remove(bVar);
    }
}

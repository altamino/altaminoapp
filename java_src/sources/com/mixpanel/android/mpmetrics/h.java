package com.mixpanel.android.mpmetrics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(14)
class h implements Application.ActivityLifecycleCallbacks {
    public static final int CHECK_DELAY = 500;
    private static Double sStartSessionTime;
    private Runnable check;
    private final d mConfig;
    private WeakReference<Activity> mCurrentActivity;
    private final g mMpInstance;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private boolean mIsForeground = false;
    private boolean mPaused = true;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (h.this.mIsForeground && h.this.mPaused) {
                h.this.mIsForeground = false;
                try {
                    double dCurrentTimeMillis = System.currentTimeMillis() - h.sStartSessionTime.doubleValue();
                    if (dCurrentTimeMillis >= h.this.mConfig.o() && dCurrentTimeMillis < h.this.mConfig.u() && h.this.mMpInstance.q().booleanValue()) {
                        double dRound = Math.round((dCurrentTimeMillis / 1000.0d) * 10.0d) / 10.0d;
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("$ae_session_length", dRound);
                        h.this.mMpInstance.o().e("$ae_total_app_sessions", 1.0d);
                        h.this.mMpInstance.o().e("$ae_total_app_session_length", dRound);
                        h.this.mMpInstance.H("$ae_session", jSONObject, true);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                h.this.mMpInstance.v();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.mPaused = true;
        Runnable runnable = this.check;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
        }
        this.mCurrentActivity = null;
        Handler handler = this.mHandler;
        a aVar = new a();
        this.check = aVar;
        handler.postDelayed(aVar, 500L);
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
        this.mCurrentActivity = new WeakReference<>(activity);
        this.mPaused = false;
        boolean z6 = !this.mIsForeground;
        this.mIsForeground = true;
        Runnable runnable = this.check;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
        }
        if (z6) {
            sStartSessionTime = Double.valueOf(System.currentTimeMillis());
            this.mMpInstance.w();
        }
    }

    public h(g gVar, d dVar) {
        this.mMpInstance = gVar;
        this.mConfig = dVar;
        if (sStartSessionTime == null) {
            sStartSessionTime = Double.valueOf(System.currentTimeMillis());
        }
    }
}

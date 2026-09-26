package com.google.firebase.perf.metrics;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.google.firebase.o;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.transport.k;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.m;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class AppStartTrace implements Application.ActivityLifecycleCallbacks, LifecycleObserver {
    private static final int CORE_POOL_SIZE = 0;
    private static final int MAX_POOL_SIZE = 1;
    private static ExecutorService executorService;
    private static volatile AppStartTrace instance;
    private Context appContext;
    private WeakReference<Activity> appStartActivity;
    private final com.google.firebase.perf.util.a clock;
    private final com.google.firebase.perf.config.a configResolver;
    private final m.b experimentTtid;

    @Nullable
    private final Timer firebaseClassLoadTime;
    private WeakReference<Activity> launchActivity;

    @Nullable
    private final Timer processStartTime;
    private PerfSession startSession;
    private final k transportManager;

    @NonNull
    private static final Timer PERF_CLASS_LOAD_TIME = new com.google.firebase.perf.util.a().a();
    private static final long MAX_LATENCY_BEFORE_UI_INIT = TimeUnit.MINUTES.toMicros(1);
    private boolean isRegisteredForLifecycleCallbacks = false;
    private boolean isTooLateToInitUI = false;
    private Timer onCreateTime = null;
    private Timer onStartTime = null;
    private Timer onResumeTime = null;
    private Timer firstForegroundTime = null;

    @Nullable
    private Timer firstBackgroundTime = null;
    private Timer preDrawPostTime = null;
    private Timer preDrawPostAtFrontOfQueueTime = null;
    private Timer onDrawPostAtFrontOfQueueTime = null;
    private boolean isStartedFromBackground = false;
    private int onDrawCount = 0;
    private final b onDrawCounterListener = new b();
    private boolean systemForegroundCheck = false;

    private final class b implements ViewTreeObserver.OnDrawListener {
        private b() {
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            AppStartTrace.h(AppStartTrace.this);
        }
    }

    public static class c implements Runnable {
        private final AppStartTrace trace;

        @Override // java.lang.Runnable
        public void run() {
            if (this.trace.onCreateTime == null) {
                this.trace.isStartedFromBackground = true;
            }
        }

        public c(AppStartTrace appStartTrace) {
            this.trace = appStartTrace;
        }
    }

    @NonNull
    private Timer i() {
        Timer timer = this.firebaseClassLoadTime;
        return timer != null ? timer : PERF_CLASS_LOAD_TIME;
    }

    @Keep
    public static void setLauncherActivityOnCreateTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnResumeTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnStartTime(String str) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            if (!this.isStartedFromBackground && this.onCreateTime == null) {
                this.systemForegroundCheck = this.systemForegroundCheck || m(this.appContext);
                this.launchActivity = new WeakReference<>(activity);
                this.onCreateTime = this.clock.a();
                if (l().h(this.onCreateTime) > MAX_LATENCY_BEFORE_UI_INIT) {
                    this.isTooLateToInitUI = true;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        try {
            if (!this.isStartedFromBackground && !this.isTooLateToInitUI) {
                boolean zH = this.configResolver.h();
                if (zH) {
                    View viewFindViewById = activity.findViewById(R.id.content);
                    viewFindViewById.getViewTreeObserver().addOnDrawListener(this.onDrawCounterListener);
                    com.google.firebase.perf.util.e.e(viewFindViewById, new Runnable() { // from class: com.google.firebase.perf.metrics.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f1609a.q();
                        }
                    });
                    com.google.firebase.perf.util.h.a(viewFindViewById, new Runnable() { // from class: com.google.firebase.perf.metrics.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f1610a.r();
                        }
                    }, new Runnable() { // from class: com.google.firebase.perf.metrics.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f1611a.s();
                        }
                    });
                }
                if (this.onResumeTime != null) {
                    return;
                }
                this.appStartActivity = new WeakReference<>(activity);
                this.onResumeTime = this.clock.a();
                this.startSession = SessionManager.getInstance().perfSession();
                y4.a.e().a("onResume(): " + activity.getClass().getName() + ": " + i().h(this.onResumeTime) + " microseconds");
                executorService.execute(new Runnable() { // from class: com.google.firebase.perf.metrics.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1612a.o();
                    }
                });
                if (!zH) {
                    u();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStarted(Activity activity) {
        if (!this.isStartedFromBackground && this.onStartTime == null && !this.isTooLateToInitUI) {
            this.onStartTime = this.clock.a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    public synchronized void t(@NonNull Context context) {
        try {
            if (this.isRegisteredForLifecycleCallbacks) {
                return;
            }
            ProcessLifecycleOwner.l().getLifecycle().a(this);
            Context applicationContext = context.getApplicationContext();
            if (applicationContext instanceof Application) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
                this.systemForegroundCheck = this.systemForegroundCheck || m(applicationContext);
                this.isRegisteredForLifecycleCallbacks = true;
                this.appContext = applicationContext;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void u() {
        if (this.isRegisteredForLifecycleCallbacks) {
            ProcessLifecycleOwner.l().getLifecycle().d(this);
            ((Application) this.appContext).unregisterActivityLifecycleCallbacks(this);
            this.isRegisteredForLifecycleCallbacks = false;
        }
    }

    static /* synthetic */ int h(AppStartTrace appStartTrace) {
        int i10 = appStartTrace.onDrawCount;
        appStartTrace.onDrawCount = i10 + 1;
        return i10;
    }

    public static AppStartTrace j() {
        return instance != null ? instance : k(k.k(), new com.google.firebase.perf.util.a());
    }

    @SuppressLint({"ThreadPoolCreation"})
    static AppStartTrace k(k kVar, com.google.firebase.perf.util.a aVar) {
        if (instance == null) {
            synchronized (AppStartTrace.class) {
                try {
                    if (instance == null) {
                        instance = new AppStartTrace(kVar, aVar, com.google.firebase.perf.config.a.g(), new ThreadPoolExecutor(0, 1, MAX_LATENCY_BEFORE_UI_INIT + 10, TimeUnit.SECONDS, new LinkedBlockingQueue()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    @NonNull
    private Timer l() {
        Timer timer = this.processStartTime;
        return timer != null ? timer : i();
    }

    public static boolean m(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return true;
        }
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        String packageName = context.getPackageName();
        String str = packageName + ":";
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && (runningAppProcessInfo.processName.equals(packageName) || runningAppProcessInfo.processName.startsWith(str))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(m.b bVar) {
        this.transportManager.C(bVar.build(), com.google.firebase.perf.v1.d.FOREGROUND_BACKGROUND);
    }

    private void p(final m.b bVar) {
        if (this.preDrawPostTime == null || this.preDrawPostAtFrontOfQueueTime == null || this.onDrawPostAtFrontOfQueueTime == null) {
            return;
        }
        executorService.execute(new Runnable() { // from class: com.google.firebase.perf.metrics.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f1613a.n(bVar);
            }
        });
        u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (this.onDrawPostAtFrontOfQueueTime != null) {
            return;
        }
        this.onDrawPostAtFrontOfQueueTime = this.clock.a();
        this.experimentTtid.k(m.L().r("_experiment_onDrawFoQ").p(l().i()).q(l().h(this.onDrawPostAtFrontOfQueueTime)).build());
        if (this.processStartTime != null) {
            this.experimentTtid.k(m.L().r("_experiment_procStart_to_classLoad").p(l().i()).q(l().h(i())).build());
        }
        this.experimentTtid.o("systemDeterminedForeground", this.systemForegroundCheck ? "true" : "false");
        this.experimentTtid.n("onDrawCount", this.onDrawCount);
        this.experimentTtid.j(this.startSession.c());
        p(this.experimentTtid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (this.preDrawPostTime != null) {
            return;
        }
        this.preDrawPostTime = this.clock.a();
        this.experimentTtid.p(l().i()).q(l().h(this.preDrawPostTime));
        p(this.experimentTtid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (this.preDrawPostAtFrontOfQueueTime != null) {
            return;
        }
        this.preDrawPostAtFrontOfQueueTime = this.clock.a();
        this.experimentTtid.k(m.L().r("_experiment_preDrawFoQ").p(l().i()).q(l().h(this.preDrawPostAtFrontOfQueueTime)).build());
        p(this.experimentTtid);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (this.isStartedFromBackground || this.isTooLateToInitUI || !this.configResolver.h()) {
            return;
        }
        activity.findViewById(R.id.content).getViewTreeObserver().removeOnDrawListener(this.onDrawCounterListener);
    }

    @Keep
    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onAppEnteredBackground() {
        if (this.isStartedFromBackground || this.isTooLateToInitUI || this.firstBackgroundTime != null) {
            return;
        }
        this.firstBackgroundTime = this.clock.a();
        this.experimentTtid.k(m.L().r("_experiment_firstBackgrounding").p(l().i()).q(l().h(this.firstBackgroundTime)).build());
    }

    @Keep
    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onAppEnteredForeground() {
        if (this.isStartedFromBackground || this.isTooLateToInitUI || this.firstForegroundTime != null) {
            return;
        }
        this.firstForegroundTime = this.clock.a();
        this.experimentTtid.k(m.L().r("_experiment_firstForegrounding").p(l().i()).q(l().h(this.firstForegroundTime)).build());
    }

    /* JADX WARN: Multi-variable type inference failed */
    AppStartTrace(@NonNull k kVar, @NonNull com.google.firebase.perf.util.a aVar, @NonNull com.google.firebase.perf.config.a aVar2, @NonNull ExecutorService executorService2) {
        Timer timerK;
        this.transportManager = kVar;
        this.clock = aVar;
        this.configResolver = aVar2;
        executorService = executorService2;
        this.experimentTtid = m.L().r("_experiment_app_start_ttid");
        if (Build.VERSION.SDK_INT >= 24) {
            timerK = Timer.k(Process.getStartElapsedRealtime());
        } else {
            timerK = null;
        }
        this.processStartTime = timerK;
        o oVar = (o) com.google.firebase.f.l().j(o.class);
        this.firebaseClassLoadTime = oVar != null ? Timer.k(oVar.b()) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        m.b bVarQ = m.L().r(com.google.firebase.perf.util.c.APP_START_TRACE_NAME.toString()).p(i().i()).q(i().h(this.onResumeTime));
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(m.L().r(com.google.firebase.perf.util.c.ON_CREATE_TRACE_NAME.toString()).p(i().i()).q(i().h(this.onCreateTime)).build());
        if (this.onStartTime != null) {
            m.b bVarL = m.L();
            bVarL.r(com.google.firebase.perf.util.c.ON_START_TRACE_NAME.toString()).p(this.onCreateTime.i()).q(this.onCreateTime.h(this.onStartTime));
            arrayList.add(bVarL.build());
            m.b bVarL2 = m.L();
            bVarL2.r(com.google.firebase.perf.util.c.ON_RESUME_TRACE_NAME.toString()).p(this.onStartTime.i()).q(this.onStartTime.h(this.onResumeTime));
            arrayList.add(bVarL2.build());
        }
        bVarQ.h(arrayList).j(this.startSession.c());
        this.transportManager.C((m) bVarQ.build(), com.google.firebase.perf.v1.d.FOREGROUND_BACKGROUND);
    }
}

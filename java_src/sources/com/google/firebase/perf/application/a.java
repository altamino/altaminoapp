package com.google.firebase.perf.application;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.transport.k;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.util.g;
import com.google.firebase.perf.util.j;
import com.google.firebase.perf.v1.m;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class a implements Application.ActivityLifecycleCallbacks {
    private static volatile a instance;
    private static final y4.a logger = y4.a.e();
    private final WeakHashMap<Activity, c> activityToFragmentStateMonitorMap;
    private final WeakHashMap<Activity, d> activityToRecorderMap;
    private final WeakHashMap<Activity, Boolean> activityToResumedMap;
    private final WeakHashMap<Activity, Trace> activityToScreenTraceMap;
    private Set<InterfaceC0260a> appColdStartSubscribers;
    private final Set<WeakReference<b>> appStateSubscribers;
    private final com.google.firebase.perf.util.a clock;
    private final com.google.firebase.perf.config.a configResolver;
    private com.google.firebase.perf.v1.d currentAppState;
    private boolean isColdStart;
    private boolean isRegisteredForLifecycleCallbacks;
    private final Map<String, Long> metricToCountMap;
    private Timer resumeTime;
    private final boolean screenPerformanceRecordingSupported;
    private Timer stopTime;
    private final k transportManager;
    private final AtomicInteger tsnsCount;

    /* JADX INFO: renamed from: com.google.firebase.perf.application.a$a, reason: collision with other inner class name */
    public interface InterfaceC0260a {
        void a();
    }

    public interface b {
        void onUpdateAppState(com.google.firebase.perf.v1.d dVar);
    }

    a(k kVar, com.google.firebase.perf.util.a aVar) {
        this(kVar, aVar, com.google.firebase.perf.config.a.g(), g());
    }

    public com.google.firebase.perf.v1.d a() {
        return this.currentAppState;
    }

    public boolean f() {
        return this.isColdStart;
    }

    protected boolean h() {
        return this.screenPerformanceRecordingSupported;
    }

    public synchronized void i(Context context) {
        if (this.isRegisteredForLifecycleCallbacks) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
            this.isRegisteredForLifecycleCallbacks = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        try {
            if (this.activityToResumedMap.isEmpty()) {
                this.resumeTime = this.clock.a();
                this.activityToResumedMap.put(activity, Boolean.TRUE);
                if (this.isColdStart) {
                    q(com.google.firebase.perf.v1.d.FOREGROUND);
                    l();
                    this.isColdStart = false;
                } else {
                    n(com.google.firebase.perf.util.c.BACKGROUND_TRACE_NAME.toString(), this.stopTime, this.resumeTime);
                    q(com.google.firebase.perf.v1.d.FOREGROUND);
                }
            } else {
                this.activityToResumedMap.put(activity, Boolean.TRUE);
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
        try {
            if (h() && this.configResolver.K()) {
                if (!this.activityToRecorderMap.containsKey(activity)) {
                    o(activity);
                }
                this.activityToRecorderMap.get(activity).c();
                Trace trace = new Trace(c(activity), this.transportManager, this.clock, this);
                trace.start();
                this.activityToScreenTraceMap.put(activity, trace);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStopped(Activity activity) {
        try {
            if (h()) {
                m(activity);
            }
            if (this.activityToResumedMap.containsKey(activity)) {
                this.activityToResumedMap.remove(activity);
                if (this.activityToResumedMap.isEmpty()) {
                    this.stopTime = this.clock.a();
                    n(com.google.firebase.perf.util.c.FOREGROUND_TRACE_NAME.toString(), this.resumeTime, this.stopTime);
                    q(com.google.firebase.perf.v1.d.BACKGROUND);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static a b() {
        if (instance == null) {
            synchronized (a.class) {
                try {
                    if (instance == null) {
                        instance = new a(k.k(), new com.google.firebase.perf.util.a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public static String c(Activity activity) {
        return "_st_" + activity.getClass().getSimpleName();
    }

    private void l() {
        synchronized (this.appColdStartSubscribers) {
            try {
                for (InterfaceC0260a interfaceC0260a : this.appColdStartSubscribers) {
                    if (interfaceC0260a != null) {
                        interfaceC0260a.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void m(Activity activity) {
        Trace trace = this.activityToScreenTraceMap.get(activity);
        if (trace == null) {
            return;
        }
        this.activityToScreenTraceMap.remove(activity);
        g<com.google.firebase.perf.metrics.g.a> gVarE = this.activityToRecorderMap.get(activity).e();
        if (!gVarE.d()) {
            logger.k("Failed to record frame data for %s.", activity.getClass().getSimpleName());
        } else {
            j.a(trace, gVarE.c());
            trace.stop();
        }
    }

    private void n(String str, Timer timer, Timer timer2) {
        if (this.configResolver.K()) {
            m.b bVarJ = m.L().r(str).p(timer.i()).q(timer.h(timer2)).j(SessionManager.getInstance().perfSession().c());
            int andSet = this.tsnsCount.getAndSet(0);
            synchronized (this.metricToCountMap) {
                try {
                    bVarJ.l(this.metricToCountMap);
                    if (andSet != 0) {
                        bVarJ.n(com.google.firebase.perf.util.b.TRACE_STARTED_NOT_STOPPED.toString(), andSet);
                    }
                    this.metricToCountMap.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.transportManager.C(bVarJ.build(), com.google.firebase.perf.v1.d.FOREGROUND_BACKGROUND);
        }
    }

    private void q(com.google.firebase.perf.v1.d dVar) {
        this.currentAppState = dVar;
        synchronized (this.appStateSubscribers) {
            try {
                Iterator<WeakReference<b>> it = this.appStateSubscribers.iterator();
                while (it.hasNext()) {
                    b bVar = it.next().get();
                    if (bVar != null) {
                        bVar.onUpdateAppState(this.currentAppState);
                    } else {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(@NonNull String str, long j6) {
        synchronized (this.metricToCountMap) {
            try {
                Long l = this.metricToCountMap.get(str);
                if (l == null) {
                    this.metricToCountMap.put(str, Long.valueOf(j6));
                } else {
                    this.metricToCountMap.put(str, Long.valueOf(l.longValue() + j6));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e(int i10) {
        this.tsnsCount.addAndGet(i10);
    }

    public void j(InterfaceC0260a interfaceC0260a) {
        synchronized (this.appColdStartSubscribers) {
            this.appColdStartSubscribers.add(interfaceC0260a);
        }
    }

    public void k(WeakReference<b> weakReference) {
        synchronized (this.appStateSubscribers) {
            this.appStateSubscribers.add(weakReference);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        this.activityToRecorderMap.remove(activity);
        if (this.activityToFragmentStateMonitorMap.containsKey(activity)) {
            ((FragmentActivity) activity).getSupportFragmentManager().M1(this.activityToFragmentStateMonitorMap.remove(activity));
        }
    }

    public void p(WeakReference<b> weakReference) {
        synchronized (this.appStateSubscribers) {
            this.appStateSubscribers.remove(weakReference);
        }
    }

    private static boolean g() {
        return d.a();
    }

    private void o(Activity activity) {
        if (h() && this.configResolver.K()) {
            d dVar = new d(activity);
            this.activityToRecorderMap.put(activity, dVar);
            if (activity instanceof FragmentActivity) {
                c cVar = new c(this.clock, this.transportManager, this, dVar);
                this.activityToFragmentStateMonitorMap.put(activity, cVar);
                ((FragmentActivity) activity).getSupportFragmentManager().r1(cVar, true);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        o(activity);
    }

    @VisibleForTesting
    a(k kVar, com.google.firebase.perf.util.a aVar, com.google.firebase.perf.config.a aVar2, boolean z6) {
        this.activityToResumedMap = new WeakHashMap<>();
        this.activityToRecorderMap = new WeakHashMap<>();
        this.activityToFragmentStateMonitorMap = new WeakHashMap<>();
        this.activityToScreenTraceMap = new WeakHashMap<>();
        this.metricToCountMap = new HashMap();
        this.appStateSubscribers = new HashSet();
        this.appColdStartSubscribers = new HashSet();
        this.tsnsCount = new AtomicInteger(0);
        this.currentAppState = com.google.firebase.perf.v1.d.BACKGROUND;
        this.isRegisteredForLifecycleCallbacks = false;
        this.isColdStart = true;
        this.transportManager = kVar;
        this.clock = aVar;
        this.configResolver = aVar2;
        this.screenPerformanceRecordingSupported = z6;
    }
}

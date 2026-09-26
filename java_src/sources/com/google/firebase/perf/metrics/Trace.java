package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.google.firebase.perf.transport.k;
import com.google.firebase.perf.util.Timer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class Trace extends com.google.firebase.perf.application.b implements Parcelable, a5.a {
    private final com.google.firebase.perf.util.a clock;
    private final Map<String, Counter> counterNameToCounterMap;
    private final Map<String, String> customAttributesMap;
    private Timer endTime;
    private final GaugeManager gaugeManager;
    private final String name;
    private final Trace parent;
    private final WeakReference<a5.a> sessionAwareObject;
    private final List<PerfSession> sessions;
    private Timer startTime;
    private final List<Trace> subtraces;
    private final k transportManager;
    private static final y4.a logger = y4.a.e();
    private static final Map<String, Trace> traceNameToTraceMap = new ConcurrentHashMap();

    @Keep
    public static final Parcelable.Creator<Trace> CREATOR = new a();

    @VisibleForTesting
    static final Parcelable.Creator<Trace> CREATOR_DATAONLY = new b();

    class a implements Parcelable.Creator<Trace> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Trace createFromParcel(@NonNull Parcel parcel) {
            return new Trace(parcel, false, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Trace[] newArray(int i10) {
            return new Trace[i10];
        }

        a() {
        }
    }

    class b implements Parcelable.Creator<Trace> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Trace createFromParcel(Parcel parcel) {
            return new Trace(parcel, true, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Trace[] newArray(int i10) {
            return new Trace[i10];
        }

        b() {
        }
    }

    /* synthetic */ Trace(Parcel parcel, boolean z6, a aVar) {
        this(parcel, z6);
    }

    @Override // android.os.Parcelable
    @Keep
    public int describeContents() {
        return 0;
    }

    @NonNull
    @VisibleForTesting
    Map<String, Counter> e() {
        return this.counterNameToCounterMap;
    }

    @VisibleForTesting
    Timer g() {
        return this.endTime;
    }

    @NonNull
    @VisibleForTesting
    public String h() {
        return this.name;
    }

    @VisibleForTesting
    Timer k() {
        return this.startTime;
    }

    @NonNull
    @VisibleForTesting
    List<Trace> l() {
        return this.subtraces;
    }

    @VisibleForTesting
    boolean m() {
        return this.startTime != null;
    }

    @VisibleForTesting
    boolean o() {
        return this.endTime != null;
    }

    @Keep
    public void putAttribute(@NonNull String str, @NonNull String str2) {
        boolean z6 = false;
        try {
            str = str.trim();
            str2 = str2.trim();
            c(str, str2);
            logger.b("Setting attribute '%s' to '%s' on trace '%s'", str, str2, this.name);
            z6 = true;
        } catch (Exception e) {
            logger.d("Can not set attribute '%s' with value '%s' (%s)", str, str2, e.getMessage());
        }
        if (z6) {
            this.customAttributesMap.put(str, str2);
        }
    }

    public Trace(@NonNull String str, @NonNull k kVar, @NonNull com.google.firebase.perf.util.a aVar, @NonNull com.google.firebase.perf.application.a aVar2) {
        this(str, kVar, aVar, aVar2, GaugeManager.getInstance());
    }

    @NonNull
    private Counter p(@NonNull String str) {
        Counter counter = this.counterNameToCounterMap.get(str);
        if (counter != null) {
            return counter;
        }
        Counter counter2 = new Counter(str);
        this.counterNameToCounterMap.put(str, counter2);
        return counter2;
    }

    private void s(Timer timer) {
        if (this.subtraces.isEmpty()) {
            return;
        }
        Trace trace = this.subtraces.get(this.subtraces.size() - 1);
        if (trace.endTime == null) {
            trace.endTime = timer;
        }
    }

    @Override // a5.a
    public void a(PerfSession perfSession) {
        if (perfSession == null) {
            logger.j("Unable to add new SessionId to the Trace. Continuing without it.");
        } else {
            if (!m() || o()) {
                return;
            }
            this.sessions.add(perfSession);
        }
    }

    @Nullable
    @Keep
    public String getAttribute(@NonNull String str) {
        return this.customAttributesMap.get(str);
    }

    @NonNull
    @Keep
    public Map<String, String> getAttributes() {
        return new HashMap(this.customAttributesMap);
    }

    @Keep
    public long getLongMetric(@NonNull String str) {
        Counter counter = str != null ? this.counterNameToCounterMap.get(str.trim()) : null;
        if (counter == null) {
            return 0L;
        }
        return counter.c();
    }

    @VisibleForTesting
    List<PerfSession> i() {
        List<PerfSession> listUnmodifiableList;
        synchronized (this.sessions) {
            try {
                ArrayList arrayList = new ArrayList();
                for (PerfSession perfSession : this.sessions) {
                    if (perfSession != null) {
                        arrayList.add(perfSession);
                    }
                }
                listUnmodifiableList = Collections.unmodifiableList(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return listUnmodifiableList;
    }

    @Override // android.os.Parcelable
    @Keep
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeParcelable(this.parent, 0);
        parcel.writeString(this.name);
        parcel.writeList(this.subtraces);
        parcel.writeMap(this.counterNameToCounterMap);
        parcel.writeParcelable(this.startTime, 0);
        parcel.writeParcelable(this.endTime, 0);
        synchronized (this.sessions) {
            parcel.writeList(this.sessions);
        }
    }

    public Trace(@NonNull String str, @NonNull k kVar, @NonNull com.google.firebase.perf.util.a aVar, @NonNull com.google.firebase.perf.application.a aVar2, @NonNull GaugeManager gaugeManager) {
        super(aVar2);
        this.sessionAwareObject = new WeakReference<>(this);
        this.parent = null;
        this.name = str.trim();
        this.subtraces = new ArrayList();
        this.counterNameToCounterMap = new ConcurrentHashMap();
        this.customAttributesMap = new ConcurrentHashMap();
        this.clock = aVar;
        this.transportManager = kVar;
        this.sessions = Collections.synchronizedList(new ArrayList());
        this.gaugeManager = gaugeManager;
    }

    private void c(@NonNull String str, @NonNull String str2) {
        if (!o()) {
            if (!this.customAttributesMap.containsKey(str) && this.customAttributesMap.size() >= 5) {
                throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Exceeds max limit of number of attributes - %d", 5));
            }
            z4.e.d(str, str2);
            return;
        }
        throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Trace '%s' has been stopped", this.name));
    }

    protected void finalize() throws Throwable {
        try {
            if (n()) {
                logger.k("Trace '%s' is started but not stopped when it is destructed!", this.name);
                incrementTsnsCount(1);
            }
        } finally {
            super.finalize();
        }
    }

    @Keep
    public void incrementMetric(@NonNull String str, long j6) {
        String strE = z4.e.e(str);
        if (strE != null) {
            logger.d("Cannot increment metric '%s'. Metric name is invalid.(%s)", str, strE);
            return;
        }
        if (!m()) {
            logger.k("Cannot increment metric '%s' for trace '%s' because it's not started", str, this.name);
        } else {
            if (o()) {
                logger.k("Cannot increment metric '%s' for trace '%s' because it's been stopped", str, this.name);
                return;
            }
            Counter counterP = p(str.trim());
            counterP.g(j6);
            logger.b("Incrementing metric '%s' to %d on trace '%s'", str, Long.valueOf(counterP.c()), this.name);
        }
    }

    @VisibleForTesting
    boolean n() {
        if (m() && !o()) {
            return true;
        }
        return false;
    }

    @Keep
    public void putMetric(@NonNull String str, long j6) {
        String strE = z4.e.e(str);
        if (strE != null) {
            logger.d("Cannot set value for metric '%s'. Metric name is invalid.(%s)", str, strE);
            return;
        }
        if (!m()) {
            logger.k("Cannot set value for metric '%s' for trace '%s' because it's not started", str, this.name);
        } else if (o()) {
            logger.k("Cannot set value for metric '%s' for trace '%s' because it's been stopped", str, this.name);
        } else {
            p(str.trim()).h(j6);
            logger.b("Setting metric '%s' to '%s' on trace '%s'", str, Long.valueOf(j6), this.name);
        }
    }

    @Keep
    public void removeAttribute(@NonNull String str) {
        if (o()) {
            logger.c("Can't remove a attribute from a Trace that's stopped.");
        } else {
            this.customAttributesMap.remove(str);
        }
    }

    @Keep
    public void start() {
        if (!com.google.firebase.perf.config.a.g().K()) {
            logger.a("Trace feature is disabled.");
            return;
        }
        String strF = z4.e.f(this.name);
        if (strF != null) {
            logger.d("Cannot start trace '%s'. Trace name is invalid.(%s)", this.name, strF);
            return;
        }
        if (this.startTime != null) {
            logger.d("Trace '%s' has already started, should not start again!", this.name);
            return;
        }
        this.startTime = this.clock.a();
        registerForAppState();
        PerfSession perfSession = SessionManager.getInstance().perfSession();
        SessionManager.getInstance().registerForSessionUpdates(this.sessionAwareObject);
        a(perfSession);
        if (perfSession.i()) {
            this.gaugeManager.collectGaugeMetricOnce(perfSession.h());
        }
    }

    @Keep
    public void stop() {
        if (!m()) {
            logger.d("Trace '%s' has not been started so unable to stop!", this.name);
            return;
        }
        if (o()) {
            logger.d("Trace '%s' has already stopped, should not stop again!", this.name);
            return;
        }
        SessionManager.getInstance().unregisterForSessionUpdates(this.sessionAwareObject);
        unregisterForAppState();
        Timer timerA = this.clock.a();
        this.endTime = timerA;
        if (this.parent == null) {
            s(timerA);
            if (!this.name.isEmpty()) {
                this.transportManager.C(new i(this).a(), getAppState());
                if (SessionManager.getInstance().perfSession().i()) {
                    this.gaugeManager.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().h());
                    return;
                }
                return;
            }
            logger.c("Trace name is empty, no log is sent to server");
        }
    }

    private Trace(@NonNull Parcel parcel, boolean z6) {
        super(z6 ? null : com.google.firebase.perf.application.a.b());
        this.sessionAwareObject = new WeakReference<>(this);
        this.parent = (Trace) parcel.readParcelable(Trace.class.getClassLoader());
        this.name = parcel.readString();
        ArrayList arrayList = new ArrayList();
        this.subtraces = arrayList;
        parcel.readList(arrayList, Trace.class.getClassLoader());
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.counterNameToCounterMap = concurrentHashMap;
        this.customAttributesMap = new ConcurrentHashMap();
        parcel.readMap(concurrentHashMap, Counter.class.getClassLoader());
        this.startTime = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
        this.endTime = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
        List<PerfSession> listSynchronizedList = Collections.synchronizedList(new ArrayList());
        this.sessions = listSynchronizedList;
        parcel.readList(listSynchronizedList, PerfSession.class.getClassLoader());
        if (z6) {
            this.transportManager = null;
            this.clock = null;
            this.gaugeManager = null;
        } else {
            this.transportManager = k.k();
            this.clock = new com.google.firebase.perf.util.a();
            this.gaugeManager = GaugeManager.getInstance();
        }
    }
}

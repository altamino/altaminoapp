package com.google.firebase.perf.metrics;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.perf.network.j;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.google.firebase.perf.transport.k;
import com.google.firebase.perf.util.n;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public final class h extends com.google.firebase.perf.application.b implements a5.a {
    private static final char HIGHEST_ASCII_CHAR = 127;
    private static final char HIGHEST_CONTROL_CHAR = 31;
    private static final y4.a logger = y4.a.e();
    private final com.google.firebase.perf.v1.h.b builder;
    private final GaugeManager gaugeManager;
    private boolean isManualNetworkRequestMetric;
    private boolean isReportSent;
    private final List<PerfSession> sessions;
    private final k transportManager;

    @Nullable
    private String userAgent;
    private final WeakReference<a5.a> weakReference;

    private h(k kVar) {
        this(kVar, com.google.firebase.perf.application.a.b(), GaugeManager.getInstance());
    }

    public h A(@Nullable String str) {
        this.userAgent = str;
        return this;
    }

    public h(k kVar, com.google.firebase.perf.application.a aVar, GaugeManager gaugeManager) {
        super(aVar);
        this.builder = com.google.firebase.perf.v1.h.R();
        this.weakReference = new WeakReference<>(this);
        this.transportManager = kVar;
        this.gaugeManager = gaugeManager;
        this.sessions = Collections.synchronizedList(new ArrayList());
        registerForAppState();
    }

    public static h e(k kVar) {
        return new h(kVar);
    }

    private boolean k() {
        return this.builder.l();
    }

    private boolean l() {
        return this.builder.n();
    }

    @Override // a5.a
    public void a(PerfSession perfSession) {
        if (perfSession == null) {
            logger.j("Unable to add new SessionId to the Network Trace. Continuing without it.");
        } else {
            if (!k() || l()) {
                return;
            }
            this.sessions.add(perfSession);
        }
    }

    @VisibleForTesting
    List<PerfSession> g() {
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

    public long h() {
        return this.builder.k();
    }

    public boolean i() {
        return this.builder.m();
    }

    public h n(@Nullable String str) {
        com.google.firebase.perf.v1.h.d dVar;
        if (str != null) {
            com.google.firebase.perf.v1.h.d dVar2 = com.google.firebase.perf.v1.h.d.HTTP_METHOD_UNKNOWN;
            String upperCase = str.toUpperCase();
            upperCase.hashCode();
            switch (upperCase) {
                case "OPTIONS":
                    dVar = com.google.firebase.perf.v1.h.d.OPTIONS;
                    break;
                case "GET":
                    dVar = com.google.firebase.perf.v1.h.d.GET;
                    break;
                case "PUT":
                    dVar = com.google.firebase.perf.v1.h.d.PUT;
                    break;
                case "HEAD":
                    dVar = com.google.firebase.perf.v1.h.d.HEAD;
                    break;
                case "POST":
                    dVar = com.google.firebase.perf.v1.h.d.POST;
                    break;
                case "PATCH":
                    dVar = com.google.firebase.perf.v1.h.d.PATCH;
                    break;
                case "TRACE":
                    dVar = com.google.firebase.perf.v1.h.d.TRACE;
                    break;
                case "CONNECT":
                    dVar = com.google.firebase.perf.v1.h.d.CONNECT;
                    break;
                case "DELETE":
                    dVar = com.google.firebase.perf.v1.h.d.DELETE;
                    break;
                default:
                    dVar = com.google.firebase.perf.v1.h.d.HTTP_METHOD_UNKNOWN;
                    break;
            }
            this.builder.p(dVar);
        }
        return this;
    }

    public h o(int i10) {
        this.builder.q(i10);
        return this;
    }

    public h p() {
        this.builder.r(com.google.firebase.perf.v1.h.e.GENERIC_CLIENT_ERROR);
        return this;
    }

    public h s(long j6) {
        this.builder.s(j6);
        return this;
    }

    public h u(@Nullable String str) {
        if (str == null) {
            this.builder.j();
            return this;
        }
        if (m(str)) {
            this.builder.t(str);
        } else {
            logger.j("The content type of the response is not a valid content-type:" + str);
        }
        return this;
    }

    public h v(long j6) {
        this.builder.u(j6);
        return this;
    }

    public h w(long j6) {
        this.builder.v(j6);
        return this;
    }

    public h x(long j6) {
        this.builder.w(j6);
        if (SessionManager.getInstance().perfSession().i()) {
            this.gaugeManager.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().h());
        }
        return this;
    }

    public h y(long j6) {
        this.builder.x(j6);
        return this;
    }

    public h z(@Nullable String str) {
        if (str != null) {
            this.builder.y(n.e(n.d(str), 2000));
        }
        return this;
    }

    private static boolean m(String str) {
        if (str.length() > 128) {
            return false;
        }
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 31 || cCharAt > 127) {
                return false;
            }
        }
        return true;
    }

    public com.google.firebase.perf.v1.h c() {
        SessionManager.getInstance().unregisterForSessionUpdates(this.weakReference);
        unregisterForAppState();
        com.google.firebase.perf.v1.k[] kVarArrE = PerfSession.e(g());
        if (kVarArrE != null) {
            this.builder.d(Arrays.asList(kVarArrE));
        }
        com.google.firebase.perf.v1.h hVarBuild = this.builder.build();
        if (!j.c(this.userAgent)) {
            logger.a("Dropping network request from a 'User-Agent' that is not allowed");
            return hVarBuild;
        }
        if (!this.isReportSent) {
            this.transportManager.B(hVarBuild, getAppState());
            this.isReportSent = true;
            return hVarBuild;
        }
        if (this.isManualNetworkRequestMetric) {
            logger.a("This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response");
        }
        return hVarBuild;
    }

    public h t(long j6) {
        PerfSession perfSession = SessionManager.getInstance().perfSession();
        SessionManager.getInstance().registerForSessionUpdates(this.weakReference);
        this.builder.o(j6);
        a(perfSession);
        if (perfSession.i()) {
            this.gaugeManager.collectGaugeMetricOnce(perfSession.h());
        }
        return this;
    }
}

package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class m {

    @VisibleForTesting
    static final String FIRST_OPEN_TIME_KEY = "_fot";

    @VisibleForTesting
    static final int HTTP_TOO_MANY_REQUESTS = 429;
    private static final String X_FIREBASE_RC_FETCH_TYPE = "X-Firebase-RC-Fetch-Type";
    private final o4.b<com.google.firebase.analytics.connector.a> analyticsConnector;
    private final Clock clock;
    private final Map<String, String> customHttpHeaders;
    private final Executor executor;
    private final f fetchedConfigsCache;
    private final com.google.firebase.installations.h firebaseInstallations;
    private final ConfigFetchHttpClient frcBackendApiClient;
    private final p frcMetadata;
    private final Random randomGenerator;
    public static final long DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS = TimeUnit.HOURS.toSeconds(12);

    @VisibleForTesting
    static final int[] BACKOFF_TIME_DURATIONS_IN_MINUTES = {2, 4, 8, 16, 32, 64, 128, 256};

    public static class a {
        private final Date fetchTime;
        private final g fetchedConfigs;

        @Nullable
        private final String lastFetchETag;
        private final int status;

        public g d() {
            return this.fetchedConfigs;
        }

        @Nullable
        String e() {
            return this.lastFetchETag;
        }

        int f() {
            return this.status;
        }

        public static a a(Date date, g gVar) {
            return new a(date, 1, gVar, null);
        }

        public static a b(g gVar, String str) {
            return new a(gVar.h(), 0, gVar, str);
        }

        public static a c(Date date) {
            return new a(date, 2, null, null);
        }

        private a(Date date, int i10, g gVar, @Nullable String str) {
            this.fetchTime = date;
            this.status = i10;
            this.fetchedConfigs = gVar;
            this.lastFetchETag = str;
        }
    }

    private String h(long j6) {
        return String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(j6)));
    }

    private boolean t(int i10) {
        return i10 == HTTP_TOO_MANY_REQUESTS || i10 == 502 || i10 == 503 || i10 == 504;
    }

    public enum b {
        BASE("BASE"),
        REALTIME("REALTIME");

        private final String value;

        String a() {
            return this.value;
        }

        b(String str) {
            this.value = str;
        }
    }

    private void B(Date date) {
        int iB = this.frcMetadata.a().b() + 1;
        this.frcMetadata.k(iB, new Date(date.getTime() + q(iB)));
    }

    private boolean f(long j6, Date date) {
        Date dateE = this.frcMetadata.e();
        if (dateE.equals(p.LAST_FETCH_TIME_NO_FETCH_YET)) {
            return false;
        }
        return date.before(new Date(dateE.getTime() + TimeUnit.SECONDS.toMillis(j6)));
    }

    @WorkerThread
    private a k(String str, String str2, Date date, Map<String, String> map) throws c5.i {
        try {
            a aVarFetch = this.frcBackendApiClient.fetch(this.frcBackendApiClient.d(), str, str2, s(), this.frcMetadata.d(), map, p(), date);
            if (aVarFetch.d() != null) {
                this.frcMetadata.m(aVarFetch.d().k());
            }
            if (aVarFetch.e() != null) {
                this.frcMetadata.l(aVarFetch.e());
            }
            this.frcMetadata.i();
            return aVarFetch;
        } catch (c5.l e) {
            p.a aVarA = A(e.a(), date);
            if (z(aVarA, e.a())) {
                throw new c5.j(aVarA.a().getTime());
            }
            throw g(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Task<a> u(Task<g> task, long j6, final Map<String, String> map) {
        Task taskContinueWithTask;
        final Date date = new Date(this.clock.currentTimeMillis());
        if (task.isSuccessful() && f(j6, date)) {
            return Tasks.forResult(a.c(date));
        }
        Date dateO = o(date);
        if (dateO != null) {
            taskContinueWithTask = Tasks.forException(new c5.j(h(dateO.getTime() - date.getTime()), dateO.getTime()));
        } else {
            final Task<String> id = this.firebaseInstallations.getId();
            final Task<com.google.firebase.installations.m> taskA = this.firebaseInstallations.a(false);
            taskContinueWithTask = Tasks.whenAllComplete((Task<?>[]) new Task[]{id, taskA}).continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.i
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return this.f1657a.w(id, taskA, date, map, task2);
                }
            });
        }
        return taskContinueWithTask.continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.j
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return this.f1660a.x(date, task2);
            }
        });
    }

    @Nullable
    private Date o(Date date) {
        Date dateA = this.frcMetadata.a().a();
        if (date.before(dateA)) {
            return dateA;
        }
        return null;
    }

    @WorkerThread
    private Long p() {
        com.google.firebase.analytics.connector.a aVar = this.analyticsConnector.get();
        if (aVar == null) {
            return null;
        }
        return (Long) aVar.g(true).get(FIRST_OPEN_TIME_KEY);
    }

    private long q(int i10) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        int[] iArr = BACKOFF_TIME_DURATIONS_IN_MINUTES;
        long millis = timeUnit.toMillis(iArr[Math.min(i10, iArr.length) - 1]);
        return (millis / 2) + ((long) this.randomGenerator.nextInt((int) millis));
    }

    @WorkerThread
    private Map<String, String> s() {
        HashMap map = new HashMap();
        com.google.firebase.analytics.connector.a aVar = this.analyticsConnector.get();
        if (aVar == null) {
            return map;
        }
        for (Map.Entry<String, Object> entry : aVar.g(false).entrySet()) {
            map.put(entry.getKey(), entry.getValue().toString());
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task y(Map map, Task task) throws Exception {
        return u(task, 0L, map);
    }

    public Task<a> i() {
        return j(this.frcMetadata.g());
    }

    public Task<a> j(final long j6) {
        final HashMap map = new HashMap(this.customHttpHeaders);
        map.put(X_FIREBASE_RC_FETCH_TYPE, b.BASE.a() + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + 1);
        return this.fetchedConfigsCache.e().continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.h
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f1654a.u(j6, map, task);
            }
        });
    }

    public Task<a> n(b bVar, int i10) {
        final HashMap map = new HashMap(this.customHttpHeaders);
        map.put(X_FIREBASE_RC_FETCH_TYPE, bVar.a() + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + i10);
        return this.fetchedConfigsCache.e().continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.l
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f1663a.y(map, task);
            }
        });
    }

    public long r() {
        return this.frcMetadata.f();
    }

    public m(com.google.firebase.installations.h hVar, o4.b<com.google.firebase.analytics.connector.a> bVar, Executor executor, Clock clock, Random random, f fVar, ConfigFetchHttpClient configFetchHttpClient, p pVar, Map<String, String> map) {
        this.firebaseInstallations = hVar;
        this.analyticsConnector = bVar;
        this.executor = executor;
        this.clock = clock;
        this.randomGenerator = random;
        this.fetchedConfigsCache = fVar;
        this.frcBackendApiClient = configFetchHttpClient;
        this.frcMetadata = pVar;
        this.customHttpHeaders = map;
    }

    private p.a A(int i10, Date date) {
        if (t(i10)) {
            B(date);
        }
        return this.frcMetadata.a();
    }

    private void C(Task<a> task, Date date) {
        if (task.isSuccessful()) {
            this.frcMetadata.p(date);
            return;
        }
        Exception exception = task.getException();
        if (exception == null) {
            return;
        }
        if (exception instanceof c5.j) {
            this.frcMetadata.q();
        } else {
            this.frcMetadata.o();
        }
    }

    private c5.l g(c5.l lVar) throws c5.h {
        String str;
        int iA = lVar.a();
        if (iA != 401) {
            if (iA != 403) {
                if (iA != HTTP_TOO_MANY_REQUESTS) {
                    if (iA != 500) {
                        switch (iA) {
                            case TypedValues.PositionType.TYPE_DRAWPATH /* 502 */:
                            case TypedValues.PositionType.TYPE_PERCENT_WIDTH /* 503 */:
                            case 504:
                                str = "The server is unavailable. Please try again later.";
                                break;
                            default:
                                str = "The server returned an unexpected error.";
                                break;
                        }
                    } else {
                        str = "There was an internal server error.";
                    }
                } else {
                    throw new c5.h("The throttled response from the server was not handled correctly by the FRC SDK.");
                }
            } else {
                str = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
            }
        } else {
            str = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
        }
        return new c5.l(lVar.a(), "Fetch failed: " + str, lVar);
    }

    private Task<a> l(String str, String str2, Date date, Map<String, String> map) {
        try {
            final a aVarK = k(str, str2, date, map);
            if (aVarK.f() != 0) {
                return Tasks.forResult(aVarK);
            }
            return this.fetchedConfigsCache.k(aVarK.d()).onSuccessTask(this.executor, new SuccessContinuation() { // from class: com.google.firebase.remoteconfig.internal.k
                @Override // com.google.android.gms.tasks.SuccessContinuation
                public final Task then(Object obj) {
                    return m.v(aVarK, (g) obj);
                }
            });
        } catch (c5.i e) {
            return Tasks.forException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task v(a aVar, g gVar) throws Exception {
        return Tasks.forResult(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task w(Task task, Task task2, Date date, Map map, Task task3) throws Exception {
        if (!task.isSuccessful()) {
            return Tasks.forException(new c5.h("Firebase Installations failed to get installation ID for fetch.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new c5.h("Firebase Installations failed to get installation auth token for fetch.", task2.getException()));
        }
        return l((String) task.getResult(), ((com.google.firebase.installations.m) task2.getResult()).b(), date, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task x(Date date, Task task) throws Exception {
        C(task, date);
        return task;
    }

    private boolean z(p.a aVar, int i10) {
        if (aVar.b() > 1 || i10 == HTTP_TOO_MANY_REQUESTS) {
            return true;
        }
        return false;
    }
}

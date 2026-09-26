package com.google.firebase.crashlytics.internal.common;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.narvii.master.home.profile.GlobalProfileFragment;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
class p {
    static final FilenameFilter APP_EXCEPTION_MARKER_FILTER = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.common.o
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return p.K(file, str);
        }
    };
    static final String APP_EXCEPTION_MARKER_PREFIX = ".ae";
    static final String FIREBASE_APPLICATION_EXCEPTION = "_ae";
    static final String FIREBASE_CRASH_TYPE = "fatal";
    static final int FIREBASE_CRASH_TYPE_FATAL = 1;
    static final String FIREBASE_TIMESTAMP = "timestamp";
    private static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    private static final String META_INF_FOLDER = "META-INF/";
    static final String NATIVE_SESSION_DIR = "native-sessions";
    private static final String VERSION_CONTROL_INFO_FILE = "version-control-info.textproto";
    private static final String VERSION_CONTROL_INFO_KEY = "com.crashlytics.version-control-info";
    private final com.google.firebase.crashlytics.internal.analytics.a analyticsEventLogger;
    private final com.google.firebase.crashlytics.internal.common.a appData;
    private final n backgroundWorker;
    private final Context context;
    private v crashHandler;
    private final s crashMarker;
    private final x dataCollectionArbiter;
    private final e4.f fileStore;
    private final b0 idManager;
    private final com.google.firebase.crashlytics.internal.metadata.e logFileManager;
    private final com.google.firebase.crashlytics.internal.a nativeComponent;
    private final q0 reportingCoordinator;
    private final m sessionsSubscriber;
    private final com.google.firebase.crashlytics.internal.metadata.n userMetadata;
    private com.google.firebase.crashlytics.internal.settings.i settingsProvider = null;
    final TaskCompletionSource<Boolean> unsentReportsAvailable = new TaskCompletionSource<>();
    final TaskCompletionSource<Boolean> reportActionProvided = new TaskCompletionSource<>();
    final TaskCompletionSource<Void> unsentReportsHandled = new TaskCompletionSource<>();
    final AtomicBoolean checkForUnsentReportsCalled = new AtomicBoolean(false);

    class a implements v.a {
        a() {
        }

        @Override // com.google.firebase.crashlytics.internal.common.v.a
        public void a(@NonNull com.google.firebase.crashlytics.internal.settings.i iVar, @NonNull Thread thread, @NonNull Throwable th) {
            p.this.H(iVar, thread, th);
        }
    }

    class b implements Callable<Task<Void>> {
        final /* synthetic */ Throwable val$ex;
        final /* synthetic */ boolean val$isOnDemand;
        final /* synthetic */ com.google.firebase.crashlytics.internal.settings.i val$settingsProvider;
        final /* synthetic */ Thread val$thread;
        final /* synthetic */ long val$timestampMillis;

        class a implements SuccessContinuation<com.google.firebase.crashlytics.internal.settings.d, Void> {
            final /* synthetic */ String val$currentSessionId;
            final /* synthetic */ Executor val$executor;

            @Override // com.google.android.gms.tasks.SuccessContinuation
            @NonNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Task<Void> then(@Nullable com.google.firebase.crashlytics.internal.settings.d dVar) throws Exception {
                if (dVar == null) {
                    com.google.firebase.crashlytics.internal.g.f().k("Received null app settings, cannot send reports at crash time.");
                    return Tasks.forResult(null);
                }
                Task[] taskArr = new Task[2];
                taskArr[0] = p.this.N();
                taskArr[1] = p.this.reportingCoordinator.y(this.val$executor, b.this.val$isOnDemand ? this.val$currentSessionId : null);
                return Tasks.whenAll((Task<?>[]) taskArr);
            }

            a(Executor executor, String str) {
                this.val$executor = executor;
                this.val$currentSessionId = str;
            }
        }

        b(long j6, Throwable th, Thread thread, com.google.firebase.crashlytics.internal.settings.i iVar, boolean z6) {
            this.val$timestampMillis = j6;
            this.val$ex = th;
            this.val$thread = thread;
            this.val$settingsProvider = iVar;
            this.val$isOnDemand = z6;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<Void> call() throws Exception {
            long jF = p.F(this.val$timestampMillis);
            String strB = p.this.B();
            if (strB == null) {
                com.google.firebase.crashlytics.internal.g.f().d("Tried to write a fatal exception while no session was open.");
                return Tasks.forResult(null);
            }
            p.this.crashMarker.a();
            p.this.reportingCoordinator.t(this.val$ex, this.val$thread, strB, jF);
            p.this.w(this.val$timestampMillis);
            p.this.t(this.val$settingsProvider);
            p.this.v(new com.google.firebase.crashlytics.internal.common.h(p.this.idManager).toString(), Boolean.valueOf(this.val$isOnDemand));
            if (!p.this.dataCollectionArbiter.d()) {
                return Tasks.forResult(null);
            }
            Executor executorC = p.this.backgroundWorker.c();
            return this.val$settingsProvider.b().onSuccessTask(executorC, new a(executorC, strB));
        }
    }

    class c implements SuccessContinuation<Void, Boolean> {
        c() {
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<Boolean> then(@Nullable Void r1) throws Exception {
            return Tasks.forResult(Boolean.TRUE);
        }
    }

    class d implements SuccessContinuation<Boolean, Void> {
        final /* synthetic */ Task val$settingsDataTask;

        class a implements Callable<Task<Void>> {
            final /* synthetic */ Boolean val$send;

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.common.p$d$a$a, reason: collision with other inner class name */
            class C0230a implements SuccessContinuation<com.google.firebase.crashlytics.internal.settings.d, Void> {
                final /* synthetic */ Executor val$executor;

                @Override // com.google.android.gms.tasks.SuccessContinuation
                @NonNull
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Task<Void> then(@Nullable com.google.firebase.crashlytics.internal.settings.d dVar) throws Exception {
                    if (dVar == null) {
                        com.google.firebase.crashlytics.internal.g.f().k("Received null app settings at app startup. Cannot send cached reports");
                        return Tasks.forResult(null);
                    }
                    p.this.N();
                    p.this.reportingCoordinator.x(this.val$executor);
                    p.this.unsentReportsHandled.trySetResult(null);
                    return Tasks.forResult(null);
                }

                C0230a(Executor executor) {
                    this.val$executor = executor;
                }
            }

            a(Boolean bool) {
                this.val$send = bool;
            }

            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Task<Void> call() throws Exception {
                if (this.val$send.booleanValue()) {
                    com.google.firebase.crashlytics.internal.g.f().b("Sending cached crash reports...");
                    p.this.dataCollectionArbiter.c(this.val$send.booleanValue());
                    Executor executorC = p.this.backgroundWorker.c();
                    return d.this.val$settingsDataTask.onSuccessTask(executorC, new C0230a(executorC));
                }
                com.google.firebase.crashlytics.internal.g.f().i("Deleting cached crash reports...");
                p.r(p.this.L());
                p.this.reportingCoordinator.w();
                p.this.unsentReportsHandled.trySetResult(null);
                return Tasks.forResult(null);
            }
        }

        d(Task task) {
            this.val$settingsDataTask = task;
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<Void> then(@Nullable Boolean bool) throws Exception {
            return p.this.backgroundWorker.i(new a(bool));
        }
    }

    class e implements Callable<Void> {
        final /* synthetic */ String val$msg;
        final /* synthetic */ long val$timestamp;

        e(long j6, String str) {
            this.val$timestamp = j6;
            this.val$msg = str;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            if (p.this.J()) {
                return null;
            }
            p.this.logFileManager.g(this.val$timestamp, this.val$msg);
            return null;
        }
    }

    class f implements Runnable {
        final /* synthetic */ Throwable val$ex;
        final /* synthetic */ Thread val$thread;
        final /* synthetic */ long val$timestampMillis;

        f(long j6, Throwable th, Thread thread) {
            this.val$timestampMillis = j6;
            this.val$ex = th;
            this.val$thread = thread;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (p.this.J()) {
                return;
            }
            long jF = p.F(this.val$timestampMillis);
            String strB = p.this.B();
            if (strB == null) {
                com.google.firebase.crashlytics.internal.g.f().k("Tried to write a non-fatal exception while no session was open.");
            } else {
                p.this.reportingCoordinator.u(this.val$ex, this.val$thread, strB, jF);
            }
        }
    }

    class g implements Callable<Void> {
        final /* synthetic */ String val$sessionIdentifier;

        g(String str) {
            this.val$sessionIdentifier = str;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            p.this.v(this.val$sessionIdentifier, Boolean.FALSE);
            return null;
        }
    }

    class h implements Callable<Void> {
        final /* synthetic */ long val$timestamp;

        h(long j6) {
            this.val$timestamp = j6;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            Bundle bundle = new Bundle();
            bundle.putInt(p.FIREBASE_CRASH_TYPE, 1);
            bundle.putLong(p.FIREBASE_TIMESTAMP, this.val$timestamp);
            p.this.analyticsEventLogger.a(p.FIREBASE_APPLICATION_EXCEPTION, bundle);
            return null;
        }
    }

    void H(@NonNull com.google.firebase.crashlytics.internal.settings.i iVar, @NonNull Thread thread, @NonNull Throwable th) {
        I(iVar, thread, th, false);
    }

    synchronized void I(@NonNull com.google.firebase.crashlytics.internal.settings.i iVar, @NonNull Thread thread, @NonNull Throwable th, boolean z6) {
        com.google.firebase.crashlytics.internal.g.f().b("Handling uncaught exception \"" + th + "\" from thread " + thread.getName());
        try {
            x0.f(this.backgroundWorker.i(new b(System.currentTimeMillis(), th, thread, iVar, z6)));
        } catch (TimeoutException unused) {
            com.google.firebase.crashlytics.internal.g.f().d("Cannot send reports. Timed out while fetching settings.");
        } catch (Exception e2) {
            com.google.firebase.crashlytics.internal.g.f().e("Error handling uncaught exception", e2);
        }
    }

    void t(com.google.firebase.crashlytics.internal.settings.i iVar) {
        u(false, iVar);
    }

    private static boolean A() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public String B() {
        SortedSet<String> sortedSetP = this.reportingCoordinator.p();
        if (sortedSetP.isEmpty()) {
            return null;
        }
        return sortedSetP.first();
    }

    @NonNull
    static List<e0> D(com.google.firebase.crashlytics.internal.h hVar, String str, e4.f fVar, byte[] bArr) {
        File fileO = fVar.o(str, com.google.firebase.crashlytics.internal.metadata.n.USERDATA_FILENAME);
        File fileO2 = fVar.o(str, com.google.firebase.crashlytics.internal.metadata.n.KEYDATA_FILENAME);
        File fileO3 = fVar.o(str, com.google.firebase.crashlytics.internal.metadata.n.ROLLOUTS_STATE_FILENAME);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.google.firebase.crashlytics.internal.common.g("logs_file", "logs", bArr));
        arrayList.add(new a0("crash_meta_file", "metadata", hVar.g()));
        arrayList.add(new a0("session_meta_file", "session", hVar.f()));
        arrayList.add(new a0("app_meta_file", "app", hVar.d()));
        arrayList.add(new a0("device_meta_file", "device", hVar.a()));
        arrayList.add(new a0("os_meta_file", "os", hVar.e()));
        arrayList.add(P(hVar));
        arrayList.add(new a0("user_meta_file", GlobalProfileFragment.KEY_USER, fileO));
        arrayList.add(new a0("keys_file", com.google.firebase.crashlytics.internal.metadata.n.KEYDATA_FILENAME, fileO2));
        arrayList.add(new a0("rollouts_file", "rollouts", fileO3));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long F(long j6) {
        return j6 / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean K(File file, String str) {
        return str.startsWith(APP_EXCEPTION_MARKER_PREFIX);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task<Void> N() {
        ArrayList arrayList = new ArrayList();
        for (File file : L()) {
            try {
                arrayList.add(M(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException unused) {
                com.google.firebase.crashlytics.internal.g.f().k("Could not parse app exception timestamp from file " + file.getName());
            }
            file.delete();
        }
        return Tasks.whenAll(arrayList);
    }

    private static boolean O(String str, File file, com.google.firebase.crashlytics.internal.model.f0.a aVar) {
        if (file == null || !file.exists()) {
            com.google.firebase.crashlytics.internal.g.f().k("No minidump data found for session " + str);
        }
        if (aVar == null) {
            com.google.firebase.crashlytics.internal.g.f().g("No Tombstones data found for session " + str);
        }
        return (file == null || !file.exists()) && aVar == null;
    }

    private static byte[] R(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    private Task<Boolean> W() {
        if (this.dataCollectionArbiter.d()) {
            com.google.firebase.crashlytics.internal.g.f().b("Automatic data collection is enabled. Allowing upload.");
            this.unsentReportsAvailable.trySetResult(Boolean.FALSE);
            return Tasks.forResult(Boolean.TRUE);
        }
        com.google.firebase.crashlytics.internal.g.f().b("Automatic data collection is disabled.");
        com.google.firebase.crashlytics.internal.g.f().i("Notifying that unsent reports are available.");
        this.unsentReportsAvailable.trySetResult(Boolean.TRUE);
        Task<TContinuationResult> taskOnSuccessTask = this.dataCollectionArbiter.h().onSuccessTask(new c());
        com.google.firebase.crashlytics.internal.g.f().b("Waiting for send/deleteUnsentReports to be called.");
        return x0.n(taskOnSuccessTask, this.reportActionProvided.getTask());
    }

    private void X(String str) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 30) {
            com.google.firebase.crashlytics.internal.g.f().i("ANR feature enabled, but device is API " + i10);
            return;
        }
        List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.context.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
        if (historicalProcessExitReasons.size() != 0) {
            this.reportingCoordinator.v(str, historicalProcessExitReasons, new com.google.firebase.crashlytics.internal.metadata.e(this.fileStore, str), com.google.firebase.crashlytics.internal.metadata.n.l(str, this.fileStore, this.backgroundWorker));
        } else {
            com.google.firebase.crashlytics.internal.g.f().i("No ApplicationExitInfo available. Session: " + str);
        }
    }

    private static com.google.firebase.crashlytics.internal.model.g0.b p(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return com.google.firebase.crashlytics.internal.model.g0.b.c(i.k(), Build.MODEL, Runtime.getRuntime().availableProcessors(), i.b(context), ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()), i.w(), i.l(), Build.MANUFACTURER, Build.PRODUCT);
    }

    private static com.google.firebase.crashlytics.internal.model.g0.c q() {
        return com.google.firebase.crashlytics.internal.model.g0.c.a(Build.VERSION.RELEASE, Build.VERSION.CODENAME, i.x());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void u(boolean z6, com.google.firebase.crashlytics.internal.settings.i iVar) {
        String str;
        ArrayList arrayList = new ArrayList(this.reportingCoordinator.p());
        if (arrayList.size() <= z6) {
            com.google.firebase.crashlytics.internal.g.f().i("No open sessions to be closed.");
            return;
        }
        String str2 = (String) arrayList.get(z6 ? 1 : 0);
        if (iVar.a().featureFlagData.collectAnrs) {
            X(str2);
        } else {
            com.google.firebase.crashlytics.internal.g.f().i("ANR feature disabled.");
        }
        if (this.nativeComponent.d(str2)) {
            y(str2);
        }
        if (z6 != 0) {
            str = (String) arrayList.get(0);
        } else {
            this.sessionsSubscriber.e(null);
            str = null;
        }
        this.reportingCoordinator.k(C(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(long j6) {
        try {
            if (this.fileStore.e(APP_EXCEPTION_MARKER_PREFIX + j6).createNewFile()) {
            } else {
                throw new IOException("Create new file failed.");
            }
        } catch (IOException e2) {
            com.google.firebase.crashlytics.internal.g.f().l("Could not create app exception marker file.", e2);
        }
    }

    String G() throws IOException {
        InputStream inputStreamE = E("META-INF/version-control-info.textproto");
        if (inputStreamE == null) {
            return null;
        }
        com.google.firebase.crashlytics.internal.g.f().b("Read version control info");
        return Base64.encodeToString(R(inputStreamE), 0);
    }

    boolean J() {
        v vVar = this.crashHandler;
        return vVar != null && vVar.a();
    }

    List<File> L() {
        return this.fileStore.f(APP_EXCEPTION_MARKER_FILTER);
    }

    void Q(String str) {
        this.backgroundWorker.h(new g(str));
    }

    void T(String str, String str2) {
        try {
            this.userMetadata.o(str, str2);
        } catch (IllegalArgumentException e2) {
            Context context = this.context;
            if (context != null && i.u(context)) {
                throw e2;
            }
            com.google.firebase.crashlytics.internal.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    void U(String str) {
        this.userMetadata.q(str);
    }

    @SuppressLint({"TaskMainThread"})
    Task<Void> V(Task<com.google.firebase.crashlytics.internal.settings.d> task) {
        if (this.reportingCoordinator.n()) {
            com.google.firebase.crashlytics.internal.g.f().i("Crash reports are available to be sent.");
            return W().onSuccessTask(new d(task));
        }
        com.google.firebase.crashlytics.internal.g.f().i("No crash reports are available to be sent.");
        this.unsentReportsAvailable.trySetResult(Boolean.FALSE);
        return Tasks.forResult(null);
    }

    void Z(long j6, String str) {
        this.backgroundWorker.h(new e(j6, str));
    }

    boolean s() {
        if (!this.crashMarker.c()) {
            String strB = B();
            return strB != null && this.nativeComponent.d(strB);
        }
        com.google.firebase.crashlytics.internal.g.f().i("Found previous crash marker.");
        this.crashMarker.d();
        return true;
    }

    void x(String str, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, com.google.firebase.crashlytics.internal.settings.i iVar) {
        this.settingsProvider = iVar;
        Q(str);
        v vVar = new v(new a(), iVar, uncaughtExceptionHandler, this.nativeComponent);
        this.crashHandler = vVar;
        Thread.setDefaultUncaughtExceptionHandler(vVar);
    }

    boolean z(com.google.firebase.crashlytics.internal.settings.i iVar) {
        this.backgroundWorker.b();
        if (J()) {
            com.google.firebase.crashlytics.internal.g.f().k("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        com.google.firebase.crashlytics.internal.g.f().i("Finalizing previously open sessions.");
        try {
            u(true, iVar);
            com.google.firebase.crashlytics.internal.g.f().i("Closed all previously open sessions.");
            return true;
        } catch (Exception e2) {
            com.google.firebase.crashlytics.internal.g.f().e("Unable to finalize previously open sessions.", e2);
            return false;
        }
    }

    p(Context context, n nVar, b0 b0Var, x xVar, e4.f fVar, s sVar, com.google.firebase.crashlytics.internal.common.a aVar, com.google.firebase.crashlytics.internal.metadata.n nVar2, com.google.firebase.crashlytics.internal.metadata.e eVar, q0 q0Var, com.google.firebase.crashlytics.internal.a aVar2, com.google.firebase.crashlytics.internal.analytics.a aVar3, m mVar) {
        this.context = context;
        this.backgroundWorker = nVar;
        this.idManager = b0Var;
        this.dataCollectionArbiter = xVar;
        this.fileStore = fVar;
        this.crashMarker = sVar;
        this.appData = aVar;
        this.userMetadata = nVar2;
        this.logFileManager = eVar;
        this.nativeComponent = aVar2;
        this.analyticsEventLogger = aVar3;
        this.sessionsSubscriber = mVar;
        this.reportingCoordinator = q0Var;
    }

    private static long C() {
        return F(System.currentTimeMillis());
    }

    private InputStream E(String str) {
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            com.google.firebase.crashlytics.internal.g.f().k("Couldn't get Class Loader");
            return null;
        }
        InputStream resourceAsStream = classLoader.getResourceAsStream(str);
        if (resourceAsStream == null) {
            com.google.firebase.crashlytics.internal.g.f().g("No version control information found");
            return null;
        }
        return resourceAsStream;
    }

    private Task<Void> M(long j6) {
        if (A()) {
            com.google.firebase.crashlytics.internal.g.f().k("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return Tasks.forResult(null);
        }
        com.google.firebase.crashlytics.internal.g.f().b("Logging app exception event to Firebase Analytics");
        return Tasks.call(new ScheduledThreadPoolExecutor(1), new h(j6));
    }

    private static e0 P(com.google.firebase.crashlytics.internal.h hVar) {
        File fileC = hVar.c();
        if (fileC != null && fileC.exists()) {
            return new a0("minidump_file", "minidump", fileC);
        }
        return new com.google.firebase.crashlytics.internal.common.g("minidump_file", "minidump", new byte[]{0});
    }

    private static com.google.firebase.crashlytics.internal.model.g0.a o(b0 b0Var, com.google.firebase.crashlytics.internal.common.a aVar) {
        return com.google.firebase.crashlytics.internal.model.g0.a.b(b0Var.f(), aVar.versionCode, aVar.versionName, b0Var.a().c(), y.a(aVar.installerPackageName).b(), aVar.developmentPlatformProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r(List<File> list) {
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            it.next().delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(String str, Boolean bool) {
        long jC = C();
        com.google.firebase.crashlytics.internal.g.f().b("Opening a new session with ID " + str);
        this.nativeComponent.a(str, String.format(Locale.US, GENERATOR_FORMAT, r.i()), jC, com.google.firebase.crashlytics.internal.model.g0.b(o(this.idManager, this.appData), q(), p(this.context)));
        if (bool.booleanValue() && str != null) {
            this.userMetadata.p(str);
        }
        this.logFileManager.e(str);
        this.sessionsSubscriber.e(str);
        this.reportingCoordinator.q(str, jC);
    }

    private void y(String str) {
        com.google.firebase.crashlytics.internal.g.f().i("Finalizing native report for session " + str);
        com.google.firebase.crashlytics.internal.h hVarB = this.nativeComponent.b(str);
        File fileC = hVarB.c();
        com.google.firebase.crashlytics.internal.model.f0.a aVarB = hVarB.b();
        if (O(str, fileC, aVarB)) {
            com.google.firebase.crashlytics.internal.g.f().k("No native core present");
            return;
        }
        long jLastModified = fileC.lastModified();
        com.google.firebase.crashlytics.internal.metadata.e eVar = new com.google.firebase.crashlytics.internal.metadata.e(this.fileStore, str);
        File fileI = this.fileStore.i(str);
        if (!fileI.isDirectory()) {
            com.google.firebase.crashlytics.internal.g.f().k("Couldn't create directory to store native session files, aborting.");
            return;
        }
        w(jLastModified);
        List<e0> listD = D(hVarB, str, this.fileStore, eVar.b());
        f0.b(fileI, listD);
        com.google.firebase.crashlytics.internal.g.f().b("CrashlyticsController#finalizePreviousNativeSession");
        this.reportingCoordinator.j(str, listD, aVarB);
        eVar.a();
    }

    void S() {
        try {
            String strG = G();
            if (strG != null) {
                T(VERSION_CONTROL_INFO_KEY, strG);
                com.google.firebase.crashlytics.internal.g.f().g("Saved version control info");
            }
        } catch (IOException e2) {
            com.google.firebase.crashlytics.internal.g.f().l("Unable to save version control info", e2);
        }
    }

    void Y(@NonNull Thread thread, @NonNull Throwable th) {
        this.backgroundWorker.g(new f(System.currentTimeMillis(), th, thread));
    }
}

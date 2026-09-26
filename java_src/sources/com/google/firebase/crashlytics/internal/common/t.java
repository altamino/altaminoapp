package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class t {
    private static final Map<String, Integer> ARCHITECTURES_BY_NAME;
    static final String GENERATOR;
    static final int GENERATOR_TYPE = 3;
    static final int REPORT_ANDROID_PLATFORM = 4;
    static final int SESSION_ANDROID_PLATFORM = 3;
    static final String SIGNAL_DEFAULT = "0";
    private final a appData;
    private final Context context;
    private final b0 idManager;
    private final com.google.firebase.crashlytics.internal.j processDetailsProvider = com.google.firebase.crashlytics.internal.j.INSTANCE;
    private final com.google.firebase.crashlytics.internal.settings.i settingsProvider;
    private final f4.d stackTraceTrimmingStrategy;

    private static long f(long j6) {
        if (j6 > 0) {
            return j6;
        }
        return 0L;
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c m(f4.e eVar, int i10, int i11) {
        return n(eVar, i10, i11, 0);
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e x(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return y(thread, stackTraceElementArr, 0);
    }

    public com.google.firebase.crashlytics.internal.model.f0.e.d d(Throwable th, Thread thread, String str, long j6, int i10, int i11, boolean z6) {
        int i12 = this.context.getResources().getConfiguration().orientation;
        return com.google.firebase.crashlytics.internal.model.f0.e.d.a().g(str).f(j6).b(k(i12, f4.e.a(th, this.stackTraceTrimmingStrategy), thread, i10, i11, z6)).c(l(i12)).a();
    }

    static {
        HashMap map = new HashMap();
        ARCHITECTURES_BY_NAME = map;
        map.put("armeabi", 5);
        map.put("armeabi-v7a", 6);
        map.put("arm64-v8a", 9);
        map.put("x86", 0);
        map.put("x86_64", 1);
        GENERATOR = String.format(Locale.US, "Crashlytics Android SDK/%s", "18.6.0");
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a.c A(com.google.firebase.crashlytics.internal.model.f0.a aVar) {
        return this.processDetailsProvider.a(aVar.e(), aVar.d(), aVar.c());
    }

    private com.google.firebase.crashlytics.internal.model.f0.a a(com.google.firebase.crashlytics.internal.model.f0.a aVar) {
        List<com.google.firebase.crashlytics.internal.model.f0.a.AbstractC0235a> listUnmodifiableList;
        if (!this.settingsProvider.a().featureFlagData.collectBuildIds || this.appData.buildIdInfoList.size() <= 0) {
            listUnmodifiableList = null;
        } else {
            ArrayList arrayList = new ArrayList();
            for (f fVar : this.appData.buildIdInfoList) {
                arrayList.add(com.google.firebase.crashlytics.internal.model.f0.a.AbstractC0235a.a().d(fVar.c()).b(fVar.a()).c(fVar.b()).a());
            }
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        }
        return com.google.firebase.crashlytics.internal.model.f0.a.a().c(aVar.c()).e(aVar.e()).g(aVar.g()).i(aVar.i()).d(aVar.d()).f(aVar.f()).h(aVar.h()).j(aVar.j()).b(listUnmodifiableList).a();
    }

    private static int g() {
        Integer num;
        String str = Build.CPU_ABI;
        if (TextUtils.isEmpty(str) || (num = ARCHITECTURES_BY_NAME.get(str.toLowerCase(Locale.US))) == null) {
            return 7;
        }
        return num.intValue();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a k(int i10, f4.e eVar, Thread thread, int i11, int i12, boolean z6) {
        Boolean boolValueOf;
        com.google.firebase.crashlytics.internal.model.f0.e.d.a.c cVarE = this.processDetailsProvider.e(this.context);
        if (cVarE.b() > 0) {
            boolValueOf = Boolean.valueOf(cVarE.b() != 100);
        } else {
            boolValueOf = null;
        }
        return com.google.firebase.crashlytics.internal.model.f0.e.d.a.a().c(boolValueOf).d(cVarE).b(this.processDetailsProvider.d(this.context)).h(i10).f(p(eVar, thread, i11, i12, z6)).a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.c l(int i10) {
        e eVarA = e.a(this.context);
        Float fB = eVarA.b();
        Double dValueOf = fB != null ? Double.valueOf(fB.doubleValue()) : null;
        int iC = eVarA.c();
        boolean zN = i.n(this.context);
        return com.google.firebase.crashlytics.internal.model.f0.e.d.c.a().b(dValueOf).c(iC).f(zN).e(i10).g(f(i.b(this.context) - i.a(this.context))).d(i.c(Environment.getDataDirectory().getPath())).a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c n(f4.e eVar, int i10, int i11, int i12) {
        String str = eVar.className;
        String str2 = eVar.localizedMessage;
        StackTraceElement[] stackTraceElementArr = eVar.stacktrace;
        int i13 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        f4.e eVar2 = eVar.cause;
        if (i12 >= i11) {
            f4.e eVar3 = eVar2;
            while (eVar3 != null) {
                eVar3 = eVar3.cause;
                i13++;
            }
        }
        com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c.AbstractC0242a abstractC0242aD = com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c.a().f(str).e(str2).c(r(stackTraceElementArr, i10)).d(i13);
        if (eVar2 != null && i13 == 0) {
            abstractC0242aD.b(n(eVar2, i10, i11, i12 + 1));
        }
        return abstractC0242aD.a();
    }

    private List<com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b> r(StackTraceElement[] stackTraceElementArr, int i10) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList.add(q(stackTraceElement, com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b.a().c(i10)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.c u() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int iG = g();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        long jB = i.b(this.context);
        long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        boolean zW = i.w();
        int iL = i.l();
        String str = Build.MANUFACTURER;
        return com.google.firebase.crashlytics.internal.model.f0.e.c.a().b(iG).f(Build.MODEL).c(iAvailableProcessors).h(jB).d(blockCount).i(zW).j(iL).e(str).g(Build.PRODUCT).a();
    }

    private List<com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e> z(f4.e eVar, Thread thread, int i10, boolean z6) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(y(thread, eVar.stacktrace, i10));
        if (z6) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(x(key, this.stackTraceTrimmingStrategy.a(entry.getValue())));
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public com.google.firebase.crashlytics.internal.model.f0.e.d c(com.google.firebase.crashlytics.internal.model.f0.a aVar) {
        int i10 = this.context.getResources().getConfiguration().orientation;
        return com.google.firebase.crashlytics.internal.model.f0.e.d.a().g("anr").f(aVar.i()).b(j(i10, a(aVar))).c(l(i10)).a();
    }

    public t(Context context, b0 b0Var, a aVar, f4.d dVar, com.google.firebase.crashlytics.internal.settings.i iVar) {
        this.context = context;
        this.idManager = b0Var;
        this.appData = aVar;
        this.stackTraceTrimmingStrategy = dVar;
        this.settingsProvider = iVar;
    }

    private com.google.firebase.crashlytics.internal.model.f0.b b() {
        return com.google.firebase.crashlytics.internal.model.f0.b().k("18.6.0").g(this.appData.googleAppId).h(this.idManager.a().c()).f(this.idManager.a().d()).d(this.appData.versionCode).e(this.appData.versionName).j(4);
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a h() {
        return com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a.a().b(0L).d(0L).c(this.appData.packageName).e(this.appData.buildId).a();
    }

    private List<com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a> i() {
        return Collections.singletonList(h());
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a j(int i10, com.google.firebase.crashlytics.internal.model.f0.a aVar) {
        boolean z6;
        if (aVar.c() != 100) {
            z6 = true;
        } else {
            z6 = false;
        }
        return com.google.firebase.crashlytics.internal.model.f0.e.d.a.a().c(Boolean.valueOf(z6)).d(A(aVar)).h(i10).f(o(aVar)).a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a.b o(com.google.firebase.crashlytics.internal.model.f0.a aVar) {
        return com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.a().b(aVar).e(w()).c(i()).a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a.b p(f4.e eVar, Thread thread, int i10, int i11, boolean z6) {
        return com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.a().f(z(eVar, thread, i10, z6)).d(m(eVar, i10, i11)).e(w()).c(i()).a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b q(StackTraceElement stackTraceElement, com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a abstractC0248a) {
        long jMax;
        long lineNumber = 0;
        if (stackTraceElement.isNativeMethod()) {
            jMax = Math.max(stackTraceElement.getLineNumber(), 0L);
        } else {
            jMax = 0;
        }
        String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            lineNumber = stackTraceElement.getLineNumber();
        }
        return abstractC0248a.e(jMax).f(str).b(fileName).d(lineNumber).a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.a s() {
        return com.google.firebase.crashlytics.internal.model.f0.e.a.a().e(this.idManager.f()).g(this.appData.versionCode).d(this.appData.versionName).f(this.idManager.a().c()).b(this.appData.developmentPlatformProvider.d()).c(this.appData.developmentPlatformProvider.e()).a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e t(String str, long j6) {
        return com.google.firebase.crashlytics.internal.model.f0.e.a().m(j6).j(str).h(GENERATOR).b(s()).l(v()).e(u()).i(3).a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e v() {
        return com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e.a().d(3).e(Build.VERSION.RELEASE).b(Build.VERSION.CODENAME).c(i.x()).a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0243d w() {
        return com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0243d.a().d(SIGNAL_DEFAULT).c(SIGNAL_DEFAULT).b(0L).a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e y(Thread thread, StackTraceElement[] stackTraceElementArr, int i10) {
        return com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.a().d(thread.getName()).c(i10).b(r(stackTraceElementArr, i10)).a();
    }

    public com.google.firebase.crashlytics.internal.model.f0 e(String str, long j6) {
        return b().l(t(str, j6)).a();
    }
}

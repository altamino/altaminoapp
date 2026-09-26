package com.google.firebase.sessions;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class a0 {

    @NotNull
    public static final a0 INSTANCE = new a0();

    @NotNull
    private static final j4.a SESSION_EVENT_ENCODER;

    @NotNull
    public final j4.a c() {
        return SESSION_EVENT_ENCODER;
    }

    static {
        j4.a aVarI = new com.google.firebase.encoders.json.d().j(c.CONFIG).k(true).i();
        kotlin.jvm.internal.t.i(aVarI, "JsonDataEncoderBuilder()…lues(true)\n      .build()");
        SESSION_EVENT_ENCODER = aVarI;
    }

    private final d d(com.google.firebase.sessions.api.b bVar) {
        if (bVar == null) {
            return d.COLLECTION_SDK_NOT_INSTALLED;
        }
        return bVar.a() ? d.COLLECTION_ENABLED : d.COLLECTION_DISABLED;
    }

    @NotNull
    public final z a(@NotNull com.google.firebase.f firebaseApp, @NotNull y sessionDetails, @NotNull com.google.firebase.sessions.settings.f sessionsSettings, @NotNull t currentProcessDetails, @NotNull List<t> appProcessDetails, @NotNull Map<com.google.firebase.sessions.api.b.a, ? extends com.google.firebase.sessions.api.b> subscribers, @NotNull String firebaseInstallationId) {
        kotlin.jvm.internal.t.j(firebaseApp, "firebaseApp");
        kotlin.jvm.internal.t.j(sessionDetails, "sessionDetails");
        kotlin.jvm.internal.t.j(sessionsSettings, "sessionsSettings");
        kotlin.jvm.internal.t.j(currentProcessDetails, "currentProcessDetails");
        kotlin.jvm.internal.t.j(appProcessDetails, "appProcessDetails");
        kotlin.jvm.internal.t.j(subscribers, "subscribers");
        kotlin.jvm.internal.t.j(firebaseInstallationId, "firebaseInstallationId");
        return new z(i.SESSION_START, new e0(sessionDetails.b(), sessionDetails.a(), sessionDetails.c(), sessionDetails.d(), new e(d(subscribers.get(com.google.firebase.sessions.api.b.a.PERFORMANCE)), d(subscribers.get(com.google.firebase.sessions.api.b.a.CRASHLYTICS)), sessionsSettings.b()), firebaseInstallationId), b(firebaseApp));
    }

    @NotNull
    public final b b(@NotNull com.google.firebase.f firebaseApp) throws PackageManager.NameNotFoundException {
        kotlin.jvm.internal.t.j(firebaseApp, "firebaseApp");
        Context contextK = firebaseApp.k();
        kotlin.jvm.internal.t.i(contextK, "firebaseApp.applicationContext");
        String packageName = contextK.getPackageName();
        PackageInfo packageInfo = contextK.getPackageManager().getPackageInfo(packageName, 0);
        String strValueOf = Build.VERSION.SDK_INT >= 28 ? String.valueOf(packageInfo.getLongVersionCode()) : String.valueOf(packageInfo.versionCode);
        String strC = firebaseApp.n().c();
        kotlin.jvm.internal.t.i(strC, "firebaseApp.options.applicationId");
        String MODEL = Build.MODEL;
        kotlin.jvm.internal.t.i(MODEL, "MODEL");
        String RELEASE = Build.VERSION.RELEASE;
        kotlin.jvm.internal.t.i(RELEASE, "RELEASE");
        s sVar = s.LOG_ENVIRONMENT_PROD;
        kotlin.jvm.internal.t.i(packageName, "packageName");
        String str = packageInfo.versionName;
        String str2 = str == null ? strValueOf : str;
        String MANUFACTURER = Build.MANUFACTURER;
        kotlin.jvm.internal.t.i(MANUFACTURER, "MANUFACTURER");
        u uVar = u.INSTANCE;
        Context contextK2 = firebaseApp.k();
        kotlin.jvm.internal.t.i(contextK2, "firebaseApp.applicationContext");
        t tVarD = uVar.d(contextK2);
        Context contextK3 = firebaseApp.k();
        kotlin.jvm.internal.t.i(contextK3, "firebaseApp.applicationContext");
        return new b(strC, MODEL, "1.2.0", RELEASE, sVar, new a(packageName, str2, strValueOf, MANUFACTURER, tVarD, uVar.c(contextK3)));
    }

    private a0() {
    }
}

package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
public class b0 implements c0 {
    public static final String DEFAULT_VERSION_NAME = "0.0";
    static final String PREFKEY_ADVERTISING_ID = "crashlytics.advertising.id";
    static final String PREFKEY_FIREBASE_IID = "firebase.installation.id";
    static final String PREFKEY_INSTALLATION_UUID = "crashlytics.installation.id";
    static final String PREFKEY_LEGACY_INSTALLATION_UUID = "crashlytics.installation.id";
    private static final String SYNTHETIC_FID_PREFIX = "SYN_";
    private final Context appContext;
    private final String appIdentifier;
    private final x dataCollectionArbiter;
    private final com.google.firebase.installations.h firebaseInstallationsApi;
    private c0.a installIds;
    private final d0 installerPackageNameProvider;
    private static final Pattern ID_PATTERN = Pattern.compile("[^\\p{Alnum}]");
    private static final String FORWARD_SLASH_REGEX = Pattern.quote(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);

    @NonNull
    private synchronized String b(String str, SharedPreferences sharedPreferences) {
        String strE;
        strE = e(UUID.randomUUID().toString());
        com.google.firebase.crashlytics.internal.g.f().i("Created new Crashlytics installation ID: " + strE + " for FID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", strE).putString(PREFKEY_FIREBASE_IID, str).apply();
        return strE;
    }

    @Override // com.google.firebase.crashlytics.internal.common.c0
    @NonNull
    public synchronized c0.a a() {
        if (!n()) {
            return this.installIds;
        }
        com.google.firebase.crashlytics.internal.g.f().i("Determining Crashlytics installation ID...");
        SharedPreferences sharedPreferencesQ = i.q(this.appContext);
        String string = sharedPreferencesQ.getString(PREFKEY_FIREBASE_IID, null);
        com.google.firebase.crashlytics.internal.g.f().i("Cached Firebase Installation ID: " + string);
        if (this.dataCollectionArbiter.d()) {
            String strD = d();
            com.google.firebase.crashlytics.internal.g.f().i("Fetched Firebase Installation ID: " + strD);
            if (strD == null) {
                strD = string == null ? c() : string;
            }
            if (strD.equals(string)) {
                this.installIds = c0.a.a(l(sharedPreferencesQ), strD);
            } else {
                this.installIds = c0.a.a(b(strD, sharedPreferencesQ), strD);
            }
        } else if (k(string)) {
            this.installIds = c0.a.b(l(sharedPreferencesQ));
        } else {
            this.installIds = c0.a.b(b(c(), sharedPreferencesQ));
        }
        com.google.firebase.crashlytics.internal.g.f().i("Install IDs: " + this.installIds);
        return this.installIds;
    }

    public String f() {
        return this.appIdentifier;
    }

    static String c() {
        return SYNTHETIC_FID_PREFIX + UUID.randomUUID().toString();
    }

    private static String e(String str) {
        if (str == null) {
            return null;
        }
        return ID_PATTERN.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    static boolean k(String str) {
        return str != null && str.startsWith(SYNTHETIC_FID_PREFIX);
    }

    private String l(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("crashlytics.installation.id", null);
    }

    private String m(String str) {
        return str.replaceAll(FORWARD_SLASH_REGEX, "");
    }

    private boolean n() {
        c0.a aVar = this.installIds;
        return aVar == null || (aVar.d() == null && this.dataCollectionArbiter.d());
    }

    @Nullable
    @VisibleForTesting
    public String d() {
        try {
            return (String) x0.f(this.firebaseInstallationsApi.getId());
        } catch (Exception e) {
            com.google.firebase.crashlytics.internal.g.f().l("Failed to retrieve Firebase Installation ID.", e);
            return null;
        }
    }

    public String g() {
        return this.installerPackageNameProvider.a(this.appContext);
    }

    public String h() {
        return String.format(Locale.US, "%s/%s", m(Build.MANUFACTURER), m(Build.MODEL));
    }

    public String i() {
        return m(Build.VERSION.INCREMENTAL);
    }

    public String j() {
        return m(Build.VERSION.RELEASE);
    }

    public b0(Context context, String str, com.google.firebase.installations.h hVar, x xVar) {
        if (context != null) {
            if (str != null) {
                this.appContext = context;
                this.appIdentifier = str;
                this.firebaseInstallationsApi = hVar;
                this.dataCollectionArbiter = xVar;
                this.installerPackageNameProvider = new d0();
                return;
            }
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        throw new IllegalArgumentException("appContext must not be null");
    }
}

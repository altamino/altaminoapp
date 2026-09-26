package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.security.GeneralSecurityException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes9.dex */
public class d {
    public static boolean DEBUG = false;
    private static final String LOGTAG = "MixpanelAPI.Conf";
    static final String REFERRER_PREFS_NAME = "com.mixpanel.android.mpmetrics.ReferralInfo";
    public static final String VERSION = "7.5.2";
    private final int mBulkUploadLimit;
    private final long mDataExpiration;
    private final boolean mDisableAppOpenEvent;
    private final boolean mDisableExceptionHandler;
    private String mEventsEndpoint;
    private int mFlushBatchSize;
    private final int mFlushInterval;
    private final boolean mFlushOnBackground;
    private String mGroupsEndpoint;
    private String mInstanceName;
    private int mMaximumDatabaseLimit;
    private final int mMinSessionDuration;
    private final int mMinimumDatabaseLimit;
    private com.mixpanel.android.util.e mOfflineMode;
    private String mPeopleEndpoint;
    private final boolean mRemoveLegacyResidualFiles;
    private final String mResourcePackageName;
    private SSLSocketFactory mSSLSocketFactory;
    private final int mSessionTimeoutDuration;
    private boolean mTrackAutomaticEvents = true;
    private boolean mUseIpAddressForGeolocation;
    private com.mixpanel.android.util.f serverCallbacks;

    private void A(String str) {
        this.mGroupsEndpoint = str;
    }

    private void C(String str) {
        this.mPeopleEndpoint = str;
    }

    private boolean w() {
        return this.mUseIpAddressForGeolocation;
    }

    private void y(String str) {
        this.mEventsEndpoint = str;
    }

    public int a() {
        return this.mBulkUploadLimit;
    }

    public long b() {
        return this.mDataExpiration;
    }

    public boolean c() {
        return this.mDisableAppOpenEvent;
    }

    public boolean d() {
        return this.mDisableExceptionHandler;
    }

    public String f() {
        return this.mEventsEndpoint;
    }

    public int g() {
        return this.mFlushBatchSize;
    }

    public int h() {
        return this.mFlushInterval;
    }

    public boolean i() {
        return this.mFlushOnBackground;
    }

    public String j() {
        return this.mGroupsEndpoint;
    }

    public String l() {
        return this.mInstanceName;
    }

    public int m() {
        return this.mMaximumDatabaseLimit;
    }

    public int n() {
        return this.mMinimumDatabaseLimit;
    }

    public int o() {
        return this.mMinSessionDuration;
    }

    public synchronized com.mixpanel.android.util.e p() {
        return null;
    }

    public String q() {
        return this.mPeopleEndpoint;
    }

    public com.mixpanel.android.util.f r() {
        return null;
    }

    public boolean s() {
        return this.mRemoveLegacyResidualFiles;
    }

    public synchronized SSLSocketFactory t() {
        return this.mSSLSocketFactory;
    }

    public int u() {
        return this.mSessionTimeoutDuration;
    }

    public boolean v() {
        return this.mTrackAutomaticEvents;
    }

    d(Bundle bundle, Context context, String str) {
        long jFloatValue;
        SSLSocketFactory socketFactory = null;
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, null, null);
            socketFactory = sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e) {
            com.mixpanel.android.util.d.f(LOGTAG, "System has no SSL support. Built-in events editor will not be available", e);
        }
        this.mSSLSocketFactory = socketFactory;
        this.mInstanceName = str;
        boolean z6 = bundle.getBoolean("com.mixpanel.android.MPConfig.EnableDebugLogging", false);
        DEBUG = z6;
        if (z6) {
            com.mixpanel.android.util.d.g(2);
        }
        if (bundle.containsKey("com.mixpanel.android.MPConfig.DebugFlushInterval")) {
            com.mixpanel.android.util.d.k(LOGTAG, "We do not support com.mixpanel.android.MPConfig.DebugFlushInterval anymore. There will only be one flush interval. Please, update your AndroidManifest.xml.");
        }
        this.mBulkUploadLimit = bundle.getInt("com.mixpanel.android.MPConfig.BulkUploadLimit", 40);
        this.mFlushInterval = bundle.getInt("com.mixpanel.android.MPConfig.FlushInterval", 60000);
        this.mFlushBatchSize = bundle.getInt("com.mixpanel.android.MPConfig.FlushBatchSize", 50);
        this.mFlushOnBackground = bundle.getBoolean("com.mixpanel.android.MPConfig.FlushOnBackground", true);
        this.mMinimumDatabaseLimit = bundle.getInt("com.mixpanel.android.MPConfig.MinimumDatabaseLimit", 20971520);
        this.mMaximumDatabaseLimit = bundle.getInt("com.mixpanel.android.MPConfig.MaximumDatabaseLimit", Integer.MAX_VALUE);
        this.mResourcePackageName = bundle.getString("com.mixpanel.android.MPConfig.ResourcePackageName");
        this.mDisableAppOpenEvent = bundle.getBoolean("com.mixpanel.android.MPConfig.DisableAppOpenEvent", true);
        this.mDisableExceptionHandler = bundle.getBoolean("com.mixpanel.android.MPConfig.DisableExceptionHandler", false);
        this.mMinSessionDuration = bundle.getInt("com.mixpanel.android.MPConfig.MinimumSessionDuration", 10000);
        this.mSessionTimeoutDuration = bundle.getInt("com.mixpanel.android.MPConfig.SessionTimeoutDuration", Integer.MAX_VALUE);
        this.mUseIpAddressForGeolocation = bundle.getBoolean("com.mixpanel.android.MPConfig.UseIpAddressForGeolocation", true);
        this.mRemoveLegacyResidualFiles = bundle.getBoolean("com.mixpanel.android.MPConfig.RemoveLegacyResidualFiles", false);
        Object obj = bundle.get("com.mixpanel.android.MPConfig.DataExpiration");
        if (obj != null) {
            try {
                if (obj instanceof Integer) {
                    jFloatValue = ((Integer) obj).intValue();
                } else {
                    if (!(obj instanceof Float)) {
                        throw new NumberFormatException(obj.toString() + " is not a number.");
                    }
                    jFloatValue = (long) ((Float) obj).floatValue();
                }
            } catch (Exception e2) {
                com.mixpanel.android.util.d.d(LOGTAG, "Error parsing com.mixpanel.android.MPConfig.DataExpiration meta-data value", e2);
                jFloatValue = 432000000;
            }
        } else {
            jFloatValue = 432000000;
        }
        this.mDataExpiration = jFloatValue;
        boolean z10 = !bundle.containsKey("com.mixpanel.android.MPConfig.UseIpAddressForGeolocation");
        String string = bundle.getString("com.mixpanel.android.MPConfig.EventsEndpoint");
        if (string != null) {
            y(z10 ? string : e(string, w()));
        } else {
            z("https://api.mixpanel.com");
        }
        String string2 = bundle.getString("com.mixpanel.android.MPConfig.PeopleEndpoint");
        if (string2 != null) {
            C(z10 ? string2 : e(string2, w()));
        } else {
            D("https://api.mixpanel.com");
        }
        String string3 = bundle.getString("com.mixpanel.android.MPConfig.GroupsEndpoint");
        if (string3 != null) {
            A(z10 ? string3 : e(string3, w()));
        } else {
            B("https://api.mixpanel.com");
        }
        com.mixpanel.android.util.d.i(LOGTAG, toString());
    }

    private void B(String str) {
        A(e(str + "/groups/", w()));
    }

    private void D(String str) {
        C(e(str + "/engage/", w()));
    }

    private String e(String str, boolean z6) {
        if (str.contains("?ip=")) {
            StringBuilder sb = new StringBuilder();
            sb.append(str.substring(0, str.indexOf("?ip=")));
            sb.append("?ip=");
            sb.append(z6 ? "1" : "0");
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("?ip=");
        sb2.append(z6 ? "1" : "0");
        return sb2.toString();
    }

    private void z(String str) {
        y(e(str + "/track/", w()));
    }

    public String toString() {
        return "Mixpanel (7.5.2) configured with:\n    TrackAutomaticEvents: " + v() + "\n    BulkUploadLimit " + a() + "\n    FlushInterval " + h() + "\n    FlushInterval " + g() + "\n    DataExpiration " + b() + "\n    MinimumDatabaseLimit " + n() + "\n    MaximumDatabaseLimit " + m() + "\n    DisableAppOpenEvent " + c() + "\n    EnableDebugLogging " + DEBUG + "\n    EventsEndpoint " + f() + "\n    PeopleEndpoint " + q() + "\n    MinimumSessionDuration: " + o() + "\n    SessionTimeoutDuration: " + u() + "\n    DisableExceptionHandler: " + d() + "\n    FlushOnBackground: " + i();
    }

    public static d k(Context context, @Nullable String str) {
        return x(context.getApplicationContext(), str);
    }

    static d x(Context context, String str) {
        String packageName = context.getPackageName();
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(packageName, 128).metaData;
            if (bundle == null) {
                bundle = new Bundle();
            }
            return new d(bundle, context, str);
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Can't configure Mixpanel with package name " + packageName, e);
        }
    }
}

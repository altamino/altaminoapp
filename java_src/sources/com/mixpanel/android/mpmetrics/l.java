package com.mixpanel.android.mpmetrics;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes9.dex */
class l {
    private static final String LOGTAG = "MixpanelAPI.SysInfo";
    private static l sInstance;
    private static final Object sInstanceLock = new Object();
    private final String mAppName;
    private final Integer mAppVersionCode;
    private final String mAppVersionName;
    private final Context mContext;
    private final DisplayMetrics mDisplayMetrics;
    private final Boolean mHasNFC;
    private final Boolean mHasTelephony;

    public Integer a() {
        return this.mAppVersionCode;
    }

    public String b() {
        return this.mAppVersionName;
    }

    public DisplayMetrics e() {
        return this.mDisplayMetrics;
    }

    @SuppressLint({"MissingPermission"})
    public Boolean i() {
        BluetoothAdapter defaultAdapter;
        try {
            if (this.mContext.getPackageManager().checkPermission("android.permission.BLUETOOTH", this.mContext.getPackageName()) != 0 || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null) {
                return null;
            }
            return Boolean.valueOf(defaultAdapter.isEnabled());
        } catch (Exception unused) {
            return null;
        }
    }

    private l(Context context) {
        String str;
        Integer numValueOf;
        String string;
        Method method;
        Boolean bool;
        Boolean bool2;
        this.mContext = context;
        PackageManager packageManager = context.getPackageManager();
        Boolean bool3 = null;
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            str = packageInfo.versionName;
            try {
                numValueOf = Integer.valueOf(packageInfo.versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
                com.mixpanel.android.util.d.k(LOGTAG, "System information constructed with a context that apparently doesn't exist.");
                numValueOf = null;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            str = null;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i10 = applicationInfo.labelRes;
        this.mAppVersionName = str;
        this.mAppVersionCode = numValueOf;
        if (i10 == 0) {
            CharSequence charSequence = applicationInfo.nonLocalizedLabel;
            string = charSequence == null ? "Misc" : charSequence.toString();
        } else {
            string = context.getString(i10);
        }
        this.mAppName = string;
        try {
            method = packageManager.getClass().getMethod("hasSystemFeature", String.class);
        } catch (NoSuchMethodException unused3) {
            method = null;
        }
        if (method != null) {
            try {
                bool = (Boolean) method.invoke(packageManager, "android.hardware.nfc");
                try {
                    bool2 = (Boolean) method.invoke(packageManager, "android.hardware.telephony");
                } catch (IllegalAccessException unused4) {
                    com.mixpanel.android.util.d.k(LOGTAG, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it.");
                    bool2 = null;
                } catch (InvocationTargetException unused5) {
                    com.mixpanel.android.util.d.k(LOGTAG, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it.");
                    bool2 = null;
                }
            } catch (IllegalAccessException unused6) {
                bool = null;
            } catch (InvocationTargetException unused7) {
                bool = null;
            }
            bool3 = bool;
        } else {
            bool2 = null;
        }
        this.mHasNFC = bool3;
        this.mHasTelephony = bool2;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mDisplayMetrics = displayMetrics;
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
    }

    static l f(Context context) {
        synchronized (sInstanceLock) {
            try {
                if (sInstance == null) {
                    sInstance = new l(context.getApplicationContext());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sInstance;
    }

    public String c() {
        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            return "ble";
        }
        return this.mContext.getPackageManager().hasSystemFeature("android.hardware.bluetooth") ? "classic" : "none";
    }

    public String d() {
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getNetworkOperatorName();
        }
        return null;
    }

    public boolean g() {
        return this.mHasNFC.booleanValue();
    }

    public boolean h() {
        return this.mHasTelephony.booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    @SuppressLint({"MissingPermission"})
    public Boolean j() {
        boolean z6;
        if (this.mContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            return null;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            z6 = activeNetworkInfo.getType() == 1 && activeNetworkInfo.isConnected();
        }
        return Boolean.valueOf(z6);
    }
}

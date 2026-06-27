package com.narvii.account;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VerifyCodeSharedPrefsHelper.kt */
/* loaded from: classes2.dex */
public final class VerifyCodeSharedPrefsHelper {
    public static final Companion Companion = new Companion(null);
    public static final int RESENT_INTERVAL = 60000;
    public static final String VERIFY_CODE = "verify_code";
    private final Context context;
    private final SharedPreferences prefs;

    public VerifyCodeSharedPrefsHelper(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        this.prefs = this.context.getSharedPreferences(VERIFY_CODE, 0);
    }

    public final Context getContext() {
        return this.context;
    }

    /* compiled from: VerifyCodeSharedPrefsHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final SharedPreferences getPrefs() {
        return this.prefs;
    }

    public final void updatePhoneVerifyTime(String phone) {
        Intrinsics.checkParameterIsNotNull(phone, "phone");
        this.prefs.edit().putLong(phone, System.currentTimeMillis()).apply();
    }

    public final void updateEmailVerifyTime(String email) {
        Intrinsics.checkParameterIsNotNull(email, "email");
        this.prefs.edit().putLong(email, System.currentTimeMillis()).apply();
    }

    public final long getPhoneVerifyTime(String phone) {
        Intrinsics.checkParameterIsNotNull(phone, "phone");
        return this.prefs.getLong(phone, 0L);
    }

    public final long getEmailVerifyTime(String email) {
        Intrinsics.checkParameterIsNotNull(email, "email");
        return this.prefs.getLong(email, 0L);
    }

    public final boolean isPhoneCanResentCode(String phone) {
        Intrinsics.checkParameterIsNotNull(phone, "phone");
        return System.currentTimeMillis() - getPhoneVerifyTime(phone) > ((long) 60000);
    }

    public final boolean isEmailCanResentCode(String email) {
        Intrinsics.checkParameterIsNotNull(email, "email");
        return System.currentTimeMillis() - getEmailVerifyTime(email) > ((long) 60000);
    }
}

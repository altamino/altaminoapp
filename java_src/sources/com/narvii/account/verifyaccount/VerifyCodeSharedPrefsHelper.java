package com.narvii.account.verifyaccount;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class VerifyCodeSharedPrefsHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int RESENT_INTERVAL = 60000;

    @NotNull
    public static final String VERIFY_CODE = "verify_code";

    @NotNull
    private final Context context;
    private final SharedPreferences prefs;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    public final SharedPreferences getPrefs() {
        return this.prefs;
    }

    public VerifyCodeSharedPrefsHelper(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
        this.prefs = context.getSharedPreferences(VERIFY_CODE, 0);
    }

    public final long getEmailVerifyTime(@NotNull String email) {
        t.j(email, "email");
        return this.prefs.getLong(email, 0L);
    }

    public final long getPhoneVerifyTime(@NotNull String phone) {
        t.j(phone, "phone");
        return this.prefs.getLong(phone, 0L);
    }

    public final boolean isEmailCanResentCode(@NotNull String email) {
        t.j(email, "email");
        return System.currentTimeMillis() - getEmailVerifyTime(email) > 60000;
    }

    public final boolean isPhoneCanResentCode(@NotNull String phone) {
        t.j(phone, "phone");
        return System.currentTimeMillis() - getPhoneVerifyTime(phone) > 60000;
    }

    public final void updateEmailVerifyTime(@NotNull String email) {
        t.j(email, "email");
        this.prefs.edit().putLong(email, System.currentTimeMillis()).apply();
    }

    public final void updatePhoneVerifyTime(@NotNull String phone) {
        t.j(phone, "phone");
        this.prefs.edit().putLong(phone, System.currentTimeMillis()).apply();
    }
}

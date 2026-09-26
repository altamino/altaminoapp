package com.narvii.checkin;

import android.content.Context;
import android.content.SharedPreferences;
import com.narvii.util.DateUtils;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes5.dex */
public final class CheckInPrefsHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int DAYMS = 86400000;

    @NotNull
    public static final String KEY_HIDE_ALWAYS = "hide_always_";

    @NotNull
    public static final String KEY_HIDE_TODAY = "hide_today_";

    @NotNull
    public static final String SHARED_PREFS_NAME = "checkIn";

    @NotNull
    private final Context context;

    @NotNull
    private final m sps$delegate;

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

    public CheckInPrefsHelper(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
        this.sps$delegate = o.a(new CheckInPrefsHelper$sps$2(this));
    }

    private final SharedPreferences getSps() {
        Object value = this.sps$delegate.getValue();
        t.i(value, "getValue(...)");
        return (SharedPreferences) value;
    }

    public final void hideAlways(int i10) {
        getSps().edit().putBoolean(KEY_HIDE_ALWAYS + i10, true).apply();
    }

    public final void hideToday(int i10) {
        getSps().edit().putLong(KEY_HIDE_TODAY + i10, System.currentTimeMillis()).apply();
    }

    public final boolean isHideCheckIn(int i10) {
        if (!getSps().getBoolean(KEY_HIDE_ALWAYS + i10, false)) {
            if (System.currentTimeMillis() - getSps().getLong(KEY_HIDE_TODAY + i10, 0L) >= DateUtils.ONE_DAY) {
                return false;
            }
        }
        return true;
    }
}

package com.narvii.checkin;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: CheckInPrefsHelper.kt */
/* loaded from: classes2.dex */
public final class CheckInPrefsHelper {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CheckInPrefsHelper.class), "sps", "getSps()Landroid/content/SharedPreferences;"))};
    public static final Companion Companion = new Companion(null);
    public static final int DAYMS = 86400000;
    public static final String KEY_HIDE_ALWAYS = "hide_always_";
    public static final String KEY_HIDE_TODAY = "hide_today_";
    public static final String SHARED_PREFS_NAME = "checkIn";
    private final Context context;
    private final Lazy sps$delegate;

    private final SharedPreferences getSps() {
        Lazy lazy = this.sps$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (SharedPreferences) lazy.getValue();
    }

    public CheckInPrefsHelper(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        this.sps$delegate = LazyKt__LazyJVMKt.lazy(new Function0<SharedPreferences>() { // from class: com.narvii.checkin.CheckInPrefsHelper$sps$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SharedPreferences invoke() {
                return this.this$0.getContext().getSharedPreferences(CheckInPrefsHelper.SHARED_PREFS_NAME, 0);
            }
        });
    }

    public final Context getContext() {
        return this.context;
    }

    /* compiled from: CheckInPrefsHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void hideToday(int i) {
        getSps().edit().putLong(KEY_HIDE_TODAY + i, System.currentTimeMillis()).apply();
    }

    public final void hideAlways(int i) {
        getSps().edit().putBoolean(KEY_HIDE_ALWAYS + i, true).apply();
    }

    public final boolean isHideCheckIn(int i) {
        if (getSps().getBoolean(KEY_HIDE_ALWAYS + i, false)) {
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences sps = getSps();
        StringBuilder sb = new StringBuilder();
        sb.append(KEY_HIDE_TODAY);
        sb.append(i);
        return jCurrentTimeMillis - sps.getLong(sb.toString(), 0L) < ((long) 86400000);
    }
}

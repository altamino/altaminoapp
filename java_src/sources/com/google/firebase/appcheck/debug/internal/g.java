package com.google.firebase.appcheck.debug.internal;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes11.dex */
public class g {

    @VisibleForTesting
    static final String DEBUG_SECRET_KEY = "com.google.firebase.appcheck.debug.DEBUG_SECRET";

    @VisibleForTesting
    static final String PREFS_TEMPLATE = "com.google.firebase.appcheck.debug.store.%s";
    private final SharedPreferences sharedPreferences;

    @Nullable
    public String a() {
        return this.sharedPreferences.getString(DEBUG_SECRET_KEY, null);
    }

    public void b(@NonNull String str) {
        this.sharedPreferences.edit().putString(DEBUG_SECRET_KEY, str).apply();
    }

    public g(@NonNull Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotEmpty(str);
        this.sharedPreferences = context.getSharedPreferences(String.format(PREFS_TEMPLATE, str), 0);
    }
}

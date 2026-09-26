package com.google.firebase.appcheck.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
public final class c extends x3.d {

    @VisibleForTesting
    static final String DUMMY_TOKEN = "eyJlcnJvciI6IlVOS05PV05fRVJST1IifQ==";
    private final com.google.firebase.l error;
    private final String token;

    private c(@NonNull String str, @Nullable com.google.firebase.l lVar) {
        Preconditions.checkNotEmpty(str);
        this.token = str;
        this.error = lVar;
    }

    @NonNull
    public static c a(@NonNull x3.c cVar) {
        Preconditions.checkNotNull(cVar);
        return new c(cVar.b(), null);
    }
}

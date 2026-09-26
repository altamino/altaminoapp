package com.google.firebase.installations;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes10.dex */
public class i extends com.google.firebase.l {

    @NonNull
    private final a status;

    public enum a {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public i(@NonNull a aVar) {
        this.status = aVar;
    }

    public i(@NonNull String str, @NonNull a aVar) {
        super(str);
        this.status = aVar;
    }

    public i(@NonNull String str, @NonNull a aVar, @NonNull Throwable th) {
        super(str, th);
        this.status = aVar;
    }
}

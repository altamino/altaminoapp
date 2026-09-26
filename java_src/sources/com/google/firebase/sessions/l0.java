package com.google.firebase.sessions;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class l0 implements k0 {

    @NotNull
    public static final l0 INSTANCE = new l0();
    private static final long US_PER_MILLIS = 1000;

    private l0() {
    }

    @Override // com.google.firebase.sessions.k0
    public long a() {
        return System.currentTimeMillis() * 1000;
    }
}

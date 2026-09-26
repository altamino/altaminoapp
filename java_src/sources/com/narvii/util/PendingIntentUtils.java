package com.narvii.util;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class PendingIntentUtils {

    @NotNull
    public static final PendingIntentUtils INSTANCE = new PendingIntentUtils();
    public static final int noFlagValue = 0;

    public final int getCurrentImmutableFlag(int i10) {
        return i10 | 67108864;
    }

    private PendingIntentUtils() {
    }
}

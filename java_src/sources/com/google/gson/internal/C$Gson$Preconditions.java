package com.google.gson.internal;

/* JADX INFO: renamed from: com.google.gson.internal.$Gson$Preconditions, reason: invalid class name */
/* JADX INFO: loaded from: classes9.dex */
public final class C$Gson$Preconditions {
    public static void checkArgument(boolean z6) {
        if (!z6) {
            throw new IllegalArgumentException();
        }
    }

    private C$Gson$Preconditions() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <T> T checkNotNull(T t5) {
        t5.getClass();
        return t5;
    }
}

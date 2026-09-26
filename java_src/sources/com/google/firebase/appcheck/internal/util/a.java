package com.google.firebase.appcheck.internal.util;

/* JADX INFO: loaded from: classes10.dex */
public interface a {
    long currentTimeMillis();

    /* JADX INFO: renamed from: com.google.firebase.appcheck.internal.util.a$a, reason: collision with other inner class name */
    public static class C0229a implements a {
        @Override // com.google.firebase.appcheck.internal.util.a
        public long currentTimeMillis() {
            return System.currentTimeMillis();
        }
    }
}

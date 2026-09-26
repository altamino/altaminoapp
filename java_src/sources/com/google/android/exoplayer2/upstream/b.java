package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface b {

    public interface a {
        com.google.android.exoplayer2.upstream.a a();

        @Nullable
        a next();
    }

    void a(com.google.android.exoplayer2.upstream.a aVar);

    com.google.android.exoplayer2.upstream.a allocate();

    void b(a aVar);

    int getIndividualAllocationLength();

    void trim();
}

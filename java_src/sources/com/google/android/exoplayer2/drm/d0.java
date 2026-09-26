package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes11.dex */
public final class d0 implements n {
    private final n.a error;

    @Override // com.google.android.exoplayer2.drm.n
    public boolean a() {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.n
    @Nullable
    public com.google.android.exoplayer2.decoder.b b() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.n
    public boolean d(String str) {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.n
    public void e(@Nullable v.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.n
    public void f(@Nullable v.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.n
    @Nullable
    public n.a getError() {
        return this.error;
    }

    @Override // com.google.android.exoplayer2.drm.n
    public int getState() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.n
    @Nullable
    public Map<String, String> queryKeyStatus() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.n
    public final UUID c() {
        return com.google.android.exoplayer2.i.UUID_NIL;
    }

    public d0(n.a aVar) {
        this.error = (n.a) com.google.android.exoplayer2.util.a.e(aVar);
    }
}

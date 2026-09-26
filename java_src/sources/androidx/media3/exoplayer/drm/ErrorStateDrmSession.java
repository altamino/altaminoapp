package androidx.media3.exoplayer.drm;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.CryptoConfig;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class ErrorStateDrmSession implements DrmSession {
    private final DrmSession.DrmSessionException error;

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean a() {
        return false;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    @Nullable
    public CryptoConfig b() {
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean d(String str) {
        return false;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void e(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void f(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    @Nullable
    public DrmSession.DrmSessionException getError() {
        return this.error;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public int getState() {
        return 1;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    @Nullable
    public Map<String, String> queryKeyStatus() {
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final UUID c() {
        return C.UUID_NIL;
    }

    public ErrorStateDrmSession(DrmSession.DrmSessionException drmSessionException) {
        this.error = (DrmSession.DrmSessionException) Assertions.e(drmSessionException);
    }
}

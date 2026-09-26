package androidx.media3.exoplayer.drm;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class LocalMediaDrmCallback implements MediaDrmCallback {
    private final byte[] keyResponse;

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public byte[] a(UUID uuid, ExoMediaDrm.KeyRequest keyRequest) {
        return this.keyResponse;
    }

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public byte[] b(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) {
        throw new UnsupportedOperationException();
    }

    public LocalMediaDrmCallback(byte[] bArr) {
        this.keyResponse = (byte[]) Assertions.e(bArr);
    }
}

package androidx.media3.exoplayer.drm;

import android.media.MediaDrmException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
@UnstableApi
public final class DummyExoMediaDrm implements ExoMediaDrm {
    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public void a() {
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public int b() {
        return 1;
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public void closeSession(byte[] bArr) {
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public /* synthetic */ void f(byte[] bArr, PlayerId playerId) {
        t.a(this, bArr, playerId);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public void g(@Nullable ExoMediaDrm.OnEventListener onEventListener) {
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public void release() {
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public CryptoConfig c(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public boolean d(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public ExoMediaDrm.KeyRequest e(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> map) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public ExoMediaDrm.ProvisionRequest getProvisionRequest() {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public byte[] openSession() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @Nullable
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public void provideProvisionResponse(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }
}

package com.google.android.exoplayer2.drm;

import android.media.MediaDrmException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.analytics.t1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
public final class c0 implements f0 {
    @Override // com.google.android.exoplayer2.drm.f0
    public void a() {
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public int b() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public void closeSession(byte[] bArr) {
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public void f(@Nullable f0.c cVar) {
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public /* synthetic */ void g(byte[] bArr, t1 t1Var) {
        e0.a(this, bArr, t1Var);
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public void release() {
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public com.google.android.exoplayer2.decoder.b c(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public boolean d(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public f0.b e(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> map) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public f0.e getProvisionRequest() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public byte[] openSession() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // com.google.android.exoplayer2.drm.f0
    @Nullable
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public void provideProvisionResponse(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }
}

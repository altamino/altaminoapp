package androidx.media3.exoplayer.drm;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class i {
    public static void a(@Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.f(null);
        }
        if (drmSession != null) {
            drmSession.e(null);
        }
    }
}

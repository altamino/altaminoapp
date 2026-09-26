package androidx.media3.exoplayer;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.drm.DrmSession;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class FormatHolder {

    @Nullable
    public DrmSession drmSession;

    @Nullable
    public Format format;

    public void a() {
        this.drmSession = null;
        this.format = null;
    }
}

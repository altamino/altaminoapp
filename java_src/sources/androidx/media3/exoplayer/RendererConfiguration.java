package androidx.media3.exoplayer;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class RendererConfiguration {
    public static final RendererConfiguration DEFAULT = new RendererConfiguration(false);
    public final boolean tunneling;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && RendererConfiguration.class == obj.getClass() && this.tunneling == ((RendererConfiguration) obj).tunneling;
    }

    public int hashCode() {
        return !this.tunneling ? 1 : 0;
    }

    public RendererConfiguration(boolean z6) {
        this.tunneling = z6;
    }
}

package androidx.media3.exoplayer.mediacodec;

import androidx.media3.common.util.UnstableApi;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public interface MediaCodecSelector {
    public static final MediaCodecSelector DEFAULT = new MediaCodecSelector() { // from class: androidx.media3.exoplayer.mediacodec.l
        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecSelector
        public final List a(String str, boolean z6, boolean z10) {
            return MediaCodecUtil.t(str, z6, z10);
        }
    };

    List<MediaCodecInfo> a(String str, boolean z6, boolean z10) throws MediaCodecUtil.DecoderQueryException;
}

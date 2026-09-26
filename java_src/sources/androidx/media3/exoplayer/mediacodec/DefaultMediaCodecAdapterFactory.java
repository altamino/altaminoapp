package androidx.media3.exoplayer.mediacodec;

import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class DefaultMediaCodecAdapterFactory implements MediaCodecAdapter.Factory {
    private static final int MODE_DEFAULT = 0;
    private static final int MODE_DISABLED = 2;
    private static final int MODE_ENABLED = 1;
    private static final String TAG = "DMCodecAdapterFactory";
    private int asynchronousMode = 0;
    private boolean enableSynchronizeCodecInteractionsWithQueueing;

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
    public MediaCodecAdapter a(MediaCodecAdapter.Configuration configuration) throws IOException {
        int i10;
        int i11 = Util.SDK_INT;
        if (i11 < 23 || ((i10 = this.asynchronousMode) != 1 && (i10 != 0 || i11 < 31))) {
            return new SynchronousMediaCodecAdapter.Factory().a(configuration);
        }
        int iK = MimeTypes.k(configuration.format.sampleMimeType);
        Log.f(TAG, "Creating an asynchronous MediaCodec adapter for track type " + Util.p0(iK));
        return new AsynchronousMediaCodecAdapter.Factory(iK, this.enableSynchronizeCodecInteractionsWithQueueing).a(configuration);
    }
}

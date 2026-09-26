package androidx.media3.exoplayer.source;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public interface SequenceableLoader {

    public interface Callback<T extends SequenceableLoader> {
        void f(T t5);
    }

    boolean continueLoading(long j6);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j6);
}

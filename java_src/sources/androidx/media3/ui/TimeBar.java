package androidx.media3.ui;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public interface TimeBar {

    public interface OnScrubListener {
        void j(TimeBar timeBar, long j6);

        void o(TimeBar timeBar, long j6);

        void q(TimeBar timeBar, long j6, boolean z6);
    }

    void addListener(OnScrubListener onScrubListener);

    long getPreferredUpdateDelay();

    void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i10);

    void setBufferedPosition(long j6);

    void setDuration(long j6);

    void setEnabled(boolean z6);

    void setPosition(long j6);
}

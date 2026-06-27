package com.narvii.video.interfaces;

import com.narvii.video.model.AVClipInfoPack;
import java.util.List;
import kotlin.Pair;

/* compiled from: IEditorAudioPlayer.kt */
/* loaded from: classes3.dex */
public interface IEditorAudioPlayer {

    /* compiled from: IEditorAudioPlayer.kt */
    public interface IAudioEventListener {

        /* compiled from: IEditorAudioPlayer.kt */
        public static final class DefaultImpls {
            public static void onAudioCompleted(IAudioEventListener iAudioEventListener) {
            }

            public static void onAudioError(IAudioEventListener iAudioEventListener) {
            }

            public static void onAudioPrepared(IAudioEventListener iAudioEventListener) {
            }
        }

        void onAudioCompleted();

        void onAudioError();

        void onAudioPrepared();
    }

    void addAudioEventListener(IAudioEventListener iAudioEventListener);

    Pair<Integer, Long> getCurrentPositionInClip();

    long getCurrentPositionInTimeLine();

    int getCurrentWindowIndex();

    boolean hasPrepared();

    boolean isPlaying();

    void pause();

    void release();

    void removeAudioEventListener(IAudioEventListener iAudioEventListener);

    void seekTo(int i, long j);

    void seekTo(long j);

    void setConcatenatingDataSource(List<? extends AVClipInfoPack> list, boolean z);

    void setDataSource(AVClipInfoPack aVClipInfoPack, boolean z);

    void setVolume(float f);

    void start();

    void stop();

    /* compiled from: IEditorAudioPlayer.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ void setDataSource$default(IEditorAudioPlayer iEditorAudioPlayer, AVClipInfoPack aVClipInfoPack, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setDataSource");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            iEditorAudioPlayer.setDataSource(aVClipInfoPack, z);
        }

        public static /* synthetic */ void setConcatenatingDataSource$default(IEditorAudioPlayer iEditorAudioPlayer, List list, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setConcatenatingDataSource");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            iEditorAudioPlayer.setConcatenatingDataSource(list, z);
        }
    }
}

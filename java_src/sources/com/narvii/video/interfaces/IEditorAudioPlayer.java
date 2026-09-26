package com.narvii.video.interfaces;

import androidx.annotation.IntRange;
import com.narvii.video.model.AVClipInfoPack;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import w7.u;

/* JADX INFO: loaded from: classes2.dex */
public interface IEditorAudioPlayer {

    public static final class DefaultImpls {
        public static /* synthetic */ void setConcatenatingDataSource$default(IEditorAudioPlayer iEditorAudioPlayer, List list, boolean z6, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setConcatenatingDataSource");
            }
            if ((i10 & 2) != 0) {
                z6 = true;
            }
            iEditorAudioPlayer.setConcatenatingDataSource(list, z6);
        }

        public static /* synthetic */ void setDataSource$default(IEditorAudioPlayer iEditorAudioPlayer, AVClipInfoPack aVClipInfoPack, boolean z6, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setDataSource");
            }
            if ((i10 & 2) != 0) {
                z6 = true;
            }
            iEditorAudioPlayer.setDataSource(aVClipInfoPack, z6);
        }
    }

    public interface IAudioEventListener {

        public static final class DefaultImpls {
            public static void onAudioCompleted(@NotNull IAudioEventListener iAudioEventListener) {
            }

            public static void onAudioError(@NotNull IAudioEventListener iAudioEventListener) {
            }

            public static void onAudioPrepared(@NotNull IAudioEventListener iAudioEventListener) {
            }
        }

        void onAudioCompleted();

        void onAudioError();

        void onAudioPrepared();
    }

    void addAudioEventListener(@NotNull IAudioEventListener iAudioEventListener);

    @NotNull
    u<Integer, Long> getCurrentPositionInClip();

    long getCurrentPositionInTimeLine();

    int getCurrentWindowIndex();

    boolean hasPrepared();

    boolean isPlaying();

    void pause();

    void release();

    void removeAudioEventListener(@NotNull IAudioEventListener iAudioEventListener);

    void seekTo(int i10, long j6);

    void seekTo(long j6);

    void setConcatenatingDataSource(@NotNull List<? extends AVClipInfoPack> list, boolean z6);

    void setDataSource(@NotNull AVClipInfoPack aVClipInfoPack, boolean z6);

    void setVolume(@IntRange float f);

    void start();

    void stop();
}

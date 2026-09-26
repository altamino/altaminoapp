package com.narvii.video.interfaces;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface IMediaEventListener {

    public static final class DefaultImpls {
        public static void onVideoWindowIndexChanged(@NotNull IMediaEventListener iMediaEventListener, int i10, boolean z6) {
        }
    }

    void onAudioTrackAllPrepared();

    void onDoNextVideoSeek();

    void onVideoCompleted();

    void onVideoError(@Nullable Exception exc);

    void onVideoPrepared();

    void onVideoWindowIndexChanged(int i10, boolean z6);
}

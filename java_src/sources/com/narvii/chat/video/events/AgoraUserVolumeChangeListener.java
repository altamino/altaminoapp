package com.narvii.chat.video.events;

import com.narvii.chat.signalling.SignallingChannel;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface AgoraUserVolumeChangeListener {
    void onTotalVolumeChanged(@NotNull SignallingChannel signallingChannel, int i10);
}

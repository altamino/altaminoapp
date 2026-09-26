package com.narvii.chat.video.events;

import com.narvii.chat.signalling.SignallingChannel;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public interface LocalMuteUserListChangeListener {
    void onLocalMuteUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Set<String> set);
}

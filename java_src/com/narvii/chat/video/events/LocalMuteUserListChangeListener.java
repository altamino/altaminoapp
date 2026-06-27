package com.narvii.chat.video.events;

import com.narvii.chat.signalling.SignallingChannel;
import java.util.Set;

/* compiled from: LocalMuteUserListChangeListener.kt */
/* loaded from: classes2.dex */
public interface LocalMuteUserListChangeListener {
    void onLocalMuteUserListChanged(SignallingChannel signallingChannel, Set<String> set);
}

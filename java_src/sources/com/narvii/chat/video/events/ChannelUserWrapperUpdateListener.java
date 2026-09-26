package com.narvii.chat.video.events;

import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.SignallingChannel;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public interface ChannelUserWrapperUpdateListener {
    void onUserWrapperStatusChanged(@NotNull SignallingChannel signallingChannel, @NotNull ChannelUserWrapper channelUserWrapper);
}

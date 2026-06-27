package com.narvii.chat.video.events;

import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.SignallingChannel;

/* compiled from: ChannelUserWrapperUpdateListener.kt */
/* loaded from: classes2.dex */
public interface ChannelUserWrapperUpdateListener {
    void onUserWrapperStatusChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper);
}

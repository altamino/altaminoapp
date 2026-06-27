package com.narvii.chat.video.events;

import android.util.SparseArray;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import java.util.Collection;

/* compiled from: LiveChannelChangeListener.kt */
/* loaded from: classes2.dex */
public interface LiveChannelChangeListener {
    void onChannelForceQuit(SignallingChannel signallingChannel, int i);

    void onChannelStatusChanged(SignallingChannel signallingChannel);

    void onChannelUserListChanged(SignallingChannel signallingChannel, Collection<? extends ChannelUser> collection, Collection<? extends ChannelUser> collection2, SparseArray<ChannelUserWrapper> sparseArray);
}

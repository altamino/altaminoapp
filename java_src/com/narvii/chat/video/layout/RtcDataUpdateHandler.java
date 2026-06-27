package com.narvii.chat.video.layout;

import android.util.SparseArray;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.SignallingChannel;
import java.util.Set;

/* loaded from: classes2.dex */
public interface RtcDataUpdateHandler {
    public static final int TYPE_NONE = 0;
    public static final int TYPE_SCREEN_ROOM = 3;
    public static final int TYPE_VIDEO = 2;
    public static final int TYPE_VOICE = 1;

    void notifyLocalMuteUserListChanged(Set<String> set);

    void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper);

    void notifyUserDataListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray);

    void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray);
}

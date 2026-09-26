package com.narvii.chat.video.events;

import android.util.SparseArray;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import java.util.Collection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public interface LiveChannelChangeListener {
    void onChannelForceQuit(@NotNull SignallingChannel signallingChannel, int i10);

    void onChannelStatusChanged(@NotNull SignallingChannel signallingChannel);

    void onChannelUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Collection<? extends ChannelUser> collection, @NotNull Collection<? extends ChannelUser> collection2, @Nullable SparseArray<ChannelUserWrapper> sparseArray);
}

package com.narvii.chat.signalling;

import com.narvii.util.ws.WsError;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes7.dex */
public interface SignallingListener {
    void onChannelChanged(SignallingService signallingService, SignallingChannel signallingChannel);

    void onChannelForceQuit(SignallingService signallingService, SignallingChannel signallingChannel, int i10);

    void onChannelListChanged(SignallingService signallingService, SignallingChannel signallingChannel, boolean z6);

    void onChannelTypeUpdateSuccess(SignallingService signallingService, SignallingChannel signallingChannel);

    void onError(SignallingService signallingService, WsError wsError);

    void onReceiverBusy(SignallingChannel signallingChannel);

    void onSignallingPong(ArrayList<ThreadChannelUserInfo> arrayList);

    void onUserForceRemoveFromPresenter(SignallingChannel signallingChannel);

    void onUserListChanged(SignallingService signallingService, SignallingChannel signallingChannel, Collection<ChannelUser> collection, Collection<ChannelUser> collection2);

    void onUserRoleChange(SignallingService signallingService, SignallingChannel signallingChannel, ChannelUser channelUser);
}

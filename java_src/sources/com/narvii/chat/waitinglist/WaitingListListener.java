package com.narvii.chat.waitinglist;

import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.model.User;
import java.util.Collection;

/* JADX INFO: loaded from: classes8.dex */
public interface WaitingListListener {
    void onWaitingListApprove(SignallingChannel signallingChannel);

    void onWaitingListChanged(SignallingChannel signallingChannel, Collection<User> collection, Collection<User> collection2);
}

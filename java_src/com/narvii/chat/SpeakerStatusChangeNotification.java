package com.narvii.chat;

import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.model.NVObject;
import com.narvii.model.User;

/* compiled from: SpeakerStatusChangeNotification.kt */
/* loaded from: classes2.dex */
public final class SpeakerStatusChangeNotification extends NVObject {
    private ChannelUserWrapper channelUserWrapper;
    private boolean isSpeaking;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        User user;
        String strUid;
        ChannelUserWrapper channelUserWrapper = this.channelUserWrapper;
        return (channelUserWrapper == null || (user = ChatHelperKt.getUser(channelUserWrapper)) == null || (strUid = user.uid()) == null) ? "" : strUid;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user;
        String strUid;
        ChannelUserWrapper channelUserWrapper = this.channelUserWrapper;
        return (channelUserWrapper == null || (user = ChatHelperKt.getUser(channelUserWrapper)) == null || (strUid = user.uid()) == null) ? "" : strUid;
    }
}

package com.narvii.chat;

import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class SpeakerStatusChangeNotification extends NVObject {

    @Nullable
    private ChannelUserWrapper channelUserWrapper;
    private boolean isSpeaking;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    @Nullable
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    @NotNull
    public String id() {
        User user;
        ChannelUserWrapper channelUserWrapper = this.channelUserWrapper;
        String strUid = (channelUserWrapper == null || (user = ChatHelperKt.getUser(channelUserWrapper)) == null) ? null : user.uid();
        return strUid == null ? "" : strUid;
    }

    @Override // com.narvii.model.NVObject
    @NotNull
    public String uid() {
        User user;
        ChannelUserWrapper channelUserWrapper = this.channelUserWrapper;
        String strUid = (channelUserWrapper == null || (user = ChatHelperKt.getUser(channelUserWrapper)) == null) ? null : user.uid();
        return strUid == null ? "" : strUid;
    }
}

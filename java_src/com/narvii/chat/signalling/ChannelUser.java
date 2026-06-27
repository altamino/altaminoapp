package com.narvii.chat.signalling;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.Date;

/* loaded from: classes.dex */
public class ChannelUser {
    public static final int JOIN_ROLE_AUDIENCE = 2;
    public static final int JOIN_ROLE_GUEST = 0;
    public static final int JOIN_ROLE_GUEST_AUDIENCE = 3;
    public static final int JOIN_ROLE_PRESENTER = 1;
    public int channelUid;
    public boolean isHost;
    public boolean isOffline;
    public int joinRole;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date joinedTime;
    public User userProfile;

    public String uid() {
        User user = this.userProfile;
        if (user == null) {
            return null;
        }
        return user.uid;
    }

    public boolean isSpeaker() {
        return this.joinRole == 1;
    }

    public boolean isGuest() {
        return this.joinRole == 3;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChannelUser)) {
            return false;
        }
        ChannelUser channelUser = (ChannelUser) obj;
        return Utils.isEquals(Integer.valueOf(channelUser.joinRole), Integer.valueOf(this.joinRole)) && Utils.isEquals(channelUser.uid(), uid()) && Utils.isEquals(Integer.valueOf(channelUser.channelUid), Integer.valueOf(this.channelUid)) && Utils.isEquals(Boolean.valueOf(this.isHost), Boolean.valueOf(channelUser.isHost));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ChannelUser m38clone() {
        ChannelUser channelUser = new ChannelUser();
        channelUser.userProfile = (User) this.userProfile.m46clone();
        channelUser.channelUid = this.channelUid;
        channelUser.joinRole = this.joinRole;
        return channelUser;
    }
}

package com.narvii.chat.rtc;

import com.narvii.chat.signalling.ChannelUser;
import com.narvii.util.Utils;
import com.narvii.video.ui.UserStatusData;

/* loaded from: classes2.dex */
public class ChannelUserWrapper {
    public static final int STATUS_AGORA_JOINED = 1;
    public static final int STATUS_LEAVING = 2;
    public static final int STATUS_SIG_JOINED = 0;
    public int channelUid;
    public ChannelUser channelUser;
    public boolean isPromotingPresenter;
    public int status;
    public UserStatusData userStatus;

    public ChannelUserWrapper(ChannelUser channelUser, int i, UserStatusData userStatusData) {
        this.channelUser = channelUser;
        this.channelUid = i;
        this.userStatus = userStatusData;
    }

    public ChannelUserWrapper(ChannelUser channelUser, int i) {
        this.channelUser = channelUser;
        this.channelUid = i;
    }

    public void setUserStatus(UserStatusData userStatusData) {
        this.userStatus = userStatusData;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChannelUserWrapper)) {
            return false;
        }
        ChannelUserWrapper channelUserWrapper = (ChannelUserWrapper) obj;
        return Utils.isEqualsNotNull(this.channelUser, channelUserWrapper.channelUser) && Utils.isEqualsNotNull(this.userStatus, channelUserWrapper.userStatus) && this.status == channelUserWrapper.status && this.channelUid == channelUserWrapper.channelUid && this.isPromotingPresenter == channelUserWrapper.isPromotingPresenter;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ChannelUserWrapper m36clone() {
        ChannelUserWrapper channelUserWrapper = new ChannelUserWrapper(this.channelUser, this.channelUid, this.userStatus);
        channelUserWrapper.status = this.status;
        channelUserWrapper.isPromotingPresenter = this.isPromotingPresenter;
        return channelUserWrapper;
    }
}

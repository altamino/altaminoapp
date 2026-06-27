package com.narvii.chat.signalling;

import com.narvii.model.User;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SignallingChannel implements Cloneable {
    public static final int CHANNEL_TYPE_AUDIO = 1;
    public static final int CHANNEL_TYPE_AVATAR = 3;
    public static final int CHANNEL_TYPE_NONE = 0;
    public static final int CHANNEL_TYPE_SCREEN_ROOM = 5;
    public static final int CHANNEL_TYPE_VIDEO = 4;
    public static final int JOIN_ROLE_AUDIENCE = 2;
    public static final int JOIN_ROLE_GUEST = 0;
    public static final int JOIN_ROLE_GUEST_AUDIENCE = 3;
    public static final int JOIN_ROLE_PRESENTER = 1;
    public String channelKey;
    public String channelName;
    public int channelType;
    public int channelUid;
    public long expiredAfter;
    public int joinRole;
    long lostConnectionTime;
    public final int ndcId;
    public final String threadId;
    public int threadStatus;
    public final List<ChannelUser> userList = new ArrayList();
    public final List<User> userWaitList = new ArrayList();

    public static boolean isCameraPermissionRequestType(int i) {
        return i == 4 || i == 3 || i == 5;
    }

    public static boolean isCameraPermissionRequestTypeForHost(int i) {
        return i == 4 || i == 3;
    }

    public static boolean isLegalChannelType(int i) {
        return i == 1 || i == 4 || i == 3 || i == 5;
    }

    public static boolean isLegalRole(int i) {
        return i == 1 || i == 2 || i == 3;
    }

    public static boolean isNotGuestRole(int i) {
        return i == 1 || i == 2;
    }

    public static boolean isVideoType(int i) {
        return i == 4 || i == 3;
    }

    public SignallingChannel(int i, String str) {
        this.ndcId = i;
        this.threadId = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SignallingChannel m39clone() {
        SignallingChannel signallingChannel = new SignallingChannel(this.ndcId, this.threadId);
        signallingChannel.threadStatus = this.threadStatus;
        signallingChannel.channelName = this.channelName;
        signallingChannel.channelKey = this.channelKey;
        signallingChannel.channelUid = this.channelUid;
        signallingChannel.channelType = this.channelType;
        signallingChannel.joinRole = this.joinRole;
        signallingChannel.userList.addAll(this.userList);
        signallingChannel.userWaitList.addAll(this.userWaitList);
        signallingChannel.expiredAfter = this.expiredAfter;
        return signallingChannel;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.hashCode() != hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SignallingChannel)) {
            return false;
        }
        SignallingChannel signallingChannel = (SignallingChannel) obj;
        return signallingChannel.ndcId == this.ndcId && Utils.isEquals(signallingChannel.threadId, this.threadId) && signallingChannel.threadStatus == this.threadStatus && Utils.isEquals(signallingChannel.channelName, this.channelName) && Utils.isEquals(signallingChannel.channelKey, this.channelKey) && signallingChannel.channelUid == this.channelUid && signallingChannel.channelType == this.channelType && signallingChannel.joinRole == this.joinRole;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" type : ");
        sb.append(this.channelType);
        sb.append(" role : ");
        sb.append(this.joinRole);
        sb.append(" userListSize : ");
        List<ChannelUser> list = this.userList;
        sb.append(list == null ? 0 : list.size());
        return sb.toString();
    }

    public List<ChannelUser> getFilteredList() {
        ArrayList arrayList = new ArrayList();
        List<ChannelUser> list = this.userList;
        if (list != null) {
            for (ChannelUser channelUser : list) {
                if (channelUser.joinRole != 3) {
                    arrayList.add(channelUser);
                }
            }
        }
        return arrayList;
    }
}

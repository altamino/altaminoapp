package com.narvii.chat.signalling;

import com.narvii.chat.rtc.ChannelUserWrapper;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

/* loaded from: classes2.dex */
public class SignallingUtils {
    public static void sortChannelUser(List<ChannelUser> list) {
        Collections.sort(list, new Comparator<ChannelUser>() { // from class: com.narvii.chat.signalling.SignallingUtils.1
            @Override // java.util.Comparator
            public int compare(ChannelUser channelUser, ChannelUser channelUser2) {
                Date date;
                Date date2;
                if (channelUser == null || (date = channelUser.joinedTime) == null || channelUser2 == null || (date2 = channelUser2.joinedTime) == null || date.after(date2)) {
                    return 1;
                }
                return channelUser.joinedTime.equals(channelUser2.joinedTime) ? 0 : -1;
            }
        });
    }

    public static void sortChannelUserWithLatestAtFirst(List<ChannelUser> list) {
        Collections.sort(list, new Comparator<ChannelUser>() { // from class: com.narvii.chat.signalling.SignallingUtils.2
            @Override // java.util.Comparator
            public int compare(ChannelUser channelUser, ChannelUser channelUser2) {
                Date date;
                Date date2;
                if (channelUser == null || (date = channelUser.joinedTime) == null || channelUser2 == null || (date2 = channelUser2.joinedTime) == null || date.after(date2)) {
                    return -1;
                }
                return channelUser.joinedTime.equals(channelUser2.joinedTime) ? 0 : 1;
            }
        });
    }

    public static void sortChannelUserWrapper(List<ChannelUserWrapper> list) {
        Collections.sort(list, new Comparator<ChannelUserWrapper>() { // from class: com.narvii.chat.signalling.SignallingUtils.3
            @Override // java.util.Comparator
            public int compare(ChannelUserWrapper channelUserWrapper, ChannelUserWrapper channelUserWrapper2) {
                ChannelUser channelUser;
                ChannelUser channelUser2 = channelUserWrapper.channelUser;
                if (channelUser2 != null && (channelUser = channelUserWrapper2.channelUser) != null) {
                    if (channelUser2.joinedTime.after(channelUser.joinedTime)) {
                        return 1;
                    }
                    if (channelUserWrapper.channelUser.joinedTime.equals(channelUserWrapper2.channelUser.joinedTime)) {
                        return 0;
                    }
                }
                return -1;
            }
        });
    }
}

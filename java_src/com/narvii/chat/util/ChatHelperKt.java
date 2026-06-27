package com.narvii.chat.util;

import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatHelper.kt */
/* loaded from: classes2.dex */
public final class ChatHelperKt {
    public static final boolean isAllNullOrEqual(Date date, Date date2) {
        if (date2 == null && date == null) {
            return true;
        }
        if (date2 == null || date == null) {
            return false;
        }
        return Intrinsics.areEqual(date, date2);
    }

    public static final boolean isNewer(Date date, Date date2) {
        if (date == null) {
            return false;
        }
        if (date2 == null) {
            return true;
        }
        return date.after(date2);
    }

    public static final boolean isEqual(Date date, Date date2) {
        if ((date == null && date2 == null) || date2 == null || date == null) {
            return true;
        }
        return Intrinsics.areEqual(date, date2);
    }

    public static final boolean hasUnreadMessage(ChatThread chatThread) {
        Date date;
        Date date2;
        if (chatThread == null || (date = chatThread.lastReadTime) == null || (date2 = chatThread.latestActivityTime) == null) {
            return false;
        }
        return date.before(date2);
    }

    public static final int getChannelType(ChatMessage chatMessage) {
        if (chatMessage == null) {
            return -1;
        }
        int i = chatMessage.type;
        if (i == 53 || i == 54 || i == 56 || i == 57) {
            return 0;
        }
        if (i == 114) {
            return 5;
        }
        if (i == 115) {
            return 0;
        }
        switch (i) {
        }
        return -1;
    }

    public static final boolean isPublicChat(ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.publicChat();
        }
        return false;
    }

    public static final boolean isGroupChat(ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.groupChat();
        }
        return false;
    }

    public static final boolean isSingleChat(ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.singleChat();
        }
        return false;
    }

    public static final boolean isPublicOrGroupChat(ChatThread chatThread) {
        return isGroupChat(chatThread) | isPublicChat(chatThread);
    }

    public static final boolean isSpeaker(ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        if (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) {
            return false;
        }
        return channelUser.isSpeaker();
    }

    public static final boolean isGuest(ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        if (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) {
            return false;
        }
        return channelUser.isGuest();
    }

    public static final User getUser(ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        if (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) {
            return null;
        }
        return channelUser.userProfile;
    }

    public static final boolean isVideoPlayer(ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        if (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) {
            return false;
        }
        return channelUser.isHost;
    }
}

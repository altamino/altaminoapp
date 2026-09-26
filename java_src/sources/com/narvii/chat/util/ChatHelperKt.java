package com.narvii.chat.util;

import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import java.util.Date;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class ChatHelperKt {
    public static final int getChannelType(@Nullable ChatMessage chatMessage) {
        if (chatMessage == null) {
            return -1;
        }
        int i10 = chatMessage.type;
        if (i10 == 53 || i10 == 54 || i10 == 56 || i10 == 57) {
            return 0;
        }
        if (i10 == 114) {
            return 5;
        }
        if (i10 == 115) {
            return 0;
        }
        switch (i10) {
            case 107:
                return 1;
            case 108:
                return 4;
            case 109:
                return 3;
            case 110:
            case 111:
            case 112:
                return 0;
            default:
                return -1;
        }
    }

    public static final boolean isEqual(@Nullable Date date, @Nullable Date date2) {
        if ((date == null && date2 == null) || date2 == null || date == null) {
            return true;
        }
        return t.e(date, date2);
    }

    @Nullable
    public static final User getUser(@Nullable ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        if (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) {
            return null;
        }
        return channelUser.userProfile;
    }

    public static final boolean hasUnreadMessage(@Nullable ChatThread chatThread) {
        Date date;
        Date date2;
        if (chatThread == null || (date = chatThread.lastReadTime) == null || (date2 = chatThread.latestActivityTime) == null) {
            return false;
        }
        return date.before(date2);
    }

    public static final boolean isAllNullOrEqual(@Nullable Date date, @Nullable Date date2) {
        if (date2 == null && date == null) {
            return true;
        }
        if (date2 == null || date == null) {
            return false;
        }
        return t.e(date, date2);
    }

    public static final boolean isGroupChat(@Nullable ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.groupChat();
        }
        return false;
    }

    public static final boolean isGuest(@Nullable ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        if (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) {
            return false;
        }
        return channelUser.isGuest();
    }

    public static final boolean isNewer(@Nullable Date date, @Nullable Date date2) {
        if (date == null) {
            return false;
        }
        if (date2 == null) {
            return true;
        }
        return date.after(date2);
    }

    public static final boolean isPublicChat(@Nullable ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.publicChat();
        }
        return false;
    }

    public static final boolean isSingleChat(@Nullable ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.singleChat();
        }
        return false;
    }

    public static final boolean isSpeaker(@Nullable ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        if (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) {
            return false;
        }
        return channelUser.isSpeaker();
    }

    public static final boolean isVideoPlayer(@Nullable ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        if (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) {
            return false;
        }
        return channelUser.isHost;
    }

    public static final boolean isPublicOrGroupChat(@Nullable ChatThread chatThread) {
        return isGroupChat(chatThread) | isPublicChat(chatThread);
    }
}

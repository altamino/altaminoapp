package com.narvii.chat.setting.helper;

import android.text.TextUtils;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.setting.helper.ChatWaitingListServiceKt;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.signalling.SignallingService;
import com.narvii.model.User;
import com.narvii.pushservice.PushPayload;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatWaitingListServiceKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void doJoinCancelIfInWaitingList$lambda$1(SignallingChannel signallingChannel) {
    }

    public static final void doJoinCancelIfInWaitingList(@NotNull NVContext ctx, @Nullable PushPayload pushPayload) {
        SignallingChannel channelByThread;
        Object next;
        t.j(ctx, "ctx");
        String str = null;
        String str2 = pushPayload != null ? pushPayload.threadId : null;
        if (str2 == null || (channelByThread = ((SignallingService) ctx.getService("signalling")).getChannelByThread(str2)) == null) {
            return;
        }
        int i10 = channelByThread.ndcId;
        User userProfile = ((AccountService) ctx.getService("account")).getUserProfile(i10);
        List<User> list = channelByThread.userWaitList;
        if (list != null) {
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Utils.isEqualsNotNull(((User) next).uid, userProfile != null ? userProfile.uid : null));
            User user = (User) next;
            if (user != null) {
                str = user.uid;
            }
        }
        if (str == null) {
            str = "";
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ((RtcService) ctx.getService("rtc")).waitListJoinCancel(i10, str2, str, new Callback() { // from class: x5.b
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatWaitingListServiceKt.doJoinCancelIfInWaitingList$lambda$1((SignallingChannel) obj);
            }
        });
    }

    public static final boolean isCurrentUserInWaitingList(@NotNull NVContext ctx, @Nullable List<? extends User> list) {
        t.j(ctx, "ctx");
        User userProfile = ((AccountService) ctx.getService("account")).getUserProfile();
        if (list == null) {
            return false;
        }
        List<? extends User> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            if (Utils.isEqualsNotNull(((User) it.next()).uid, userProfile != null ? userProfile.uid : null)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isCurrentUserSpeaker(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        User userProfile = ((AccountService) ctx.getService("account")).getUserProfile();
        Collection<ChannelUser> mainChannelChannelUserList = ((RtcService) ctx.getService("rtc")).getMainChannelChannelUserList();
        if (mainChannelChannelUserList == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : mainChannelChannelUserList) {
            if (((ChannelUser) obj).isSpeaker()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (Utils.isEqualsNotNull(((ChannelUser) it.next()).uid(), userProfile != null ? userProfile.uid : null)) {
                return true;
            }
        }
        return false;
    }
}

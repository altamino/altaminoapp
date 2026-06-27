package com.narvii.amino.speeddial.mode;

import android.text.TextUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.modulization.CommunityConfigHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class LiveCategory {
    public static final String LIVE_CATEGORY_TOPIC_CHAT = "users-chatting-public";
    public static final String LIVE_CATEGORY_TYPE_LIVE_CHATTING = "users-live-chatting-public";
    public static List<String> itemKeys = new ArrayList();
    public static HashMap<String, LiveItemSpec> liveItems = new HashMap<>();
    public String topic;
    public int userProfileCount;

    static {
        itemKeys.add(LIVE_CATEGORY_TOPIC_CHAT);
        itemKeys.add(LIVE_CATEGORY_TYPE_LIVE_CHATTING);
        liveItems.put(LIVE_CATEGORY_TOPIC_CHAT, new LiveItemSpec(R.drawable.ic_sd_chatting, R.string.online_chatting, -16732163));
        liveItems.put(LIVE_CATEGORY_TYPE_LIVE_CHATTING, new LiveItemSpec(R.drawable.ic_sd_live_chat, R.string.live_chatting, -13543989));
    }

    public static boolean isValidTopic(String str) {
        return isValidTopicInList(itemKeys, str);
    }

    public static String getLiveCategoryType(String str) {
        String[] strArrSplit;
        if (!TextUtils.isEmpty(str) && (strArrSplit = str.split(":")) != null && strArrSplit.length >= 3 && itemKeys.contains(strArrSplit[2])) {
            return strArrSplit[2];
        }
        return null;
    }

    public static boolean isValidTopicInList(List<String> list, String str) {
        String[] strArrSplit;
        return (list == null || list.isEmpty() || TextUtils.isEmpty(str) || (strArrSplit = str.split(":")) == null || strArrSplit.length < 3 || !list.contains(strArrSplit[2])) ? false : true;
    }

    public static List<String> getSupoortedLiveCategoryList(NVContext nVContext) {
        if (nVContext == null) {
            return itemKeys;
        }
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(nVContext);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = itemKeys.iterator();
        while (it.hasNext()) {
            if (it.next().equals(LIVE_CATEGORY_TYPE_LIVE_CHATTING) && (communityConfigHelper.isAudio2ChatEnable() || communityConfigHelper.isVideoChatEnable() || communityConfigHelper.isAvatarChatEnable() || communityConfigHelper.isScreenRoomEnable())) {
                if (communityConfigHelper.isPublicChatEnabled()) {
                    arrayList.add(LIVE_CATEGORY_TYPE_LIVE_CHATTING);
                }
            }
        }
        return arrayList;
    }
}

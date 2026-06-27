package com.narvii.util;

import com.google.android.gms.common.Scopes;
import com.narvii.app.NVContext;
import com.narvii.model.Blog;
import com.narvii.model.ChatThread;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.modulization.entry.EntryManager;

/* loaded from: classes3.dex */
public class StatisticHelper {
    public static String getStatisticSource(NVContext nVContext, NVObject nVObject, int i) {
        User user;
        if (nVObject != null) {
            i = nVObject.objectType();
        }
        if (i == 0) {
            return Scopes.PROFILE;
        }
        if (i == 1) {
            if (!(nVObject instanceof Blog)) {
                return "blog";
            }
            switch (((Blog) nVObject).type) {
                case 2:
                    return "repost";
                case 3:
                    return "Q&A";
                case 4:
                    return EntryManager.ENTRY_POLL;
                case 5:
                    return "link";
                case 6:
                    return EntryManager.ENTRY_QUIZZES;
                case 7:
                    return "image";
                case 8:
                    return "external content";
                default:
                    return "blog";
            }
        }
        if (i == 2) {
            return ((nVObject instanceof Item) && (user = ((Item) nVObject).author) != null && user.isSystem()) ? "official favorite" : "favorite";
        }
        if (i == 3) {
            return "comment";
        }
        if (i == 7) {
            return "chat message";
        }
        if (i == 12) {
            return "chat";
        }
        if (i == 16) {
            return "community";
        }
        if (i == 23) {
            return "quiz question";
        }
        if (i == 106) {
            return "album";
        }
        if (i == 109) {
            return "shared folder media";
        }
        if (i == 116) {
            return "chat bubble";
        }
        if (i == 122) {
            return "avatar frame";
        }
        if (i == 131) {
            return "global announcement";
        }
        if (i == 113 || i == 114) {
            return "sticker";
        }
        return null;
    }

    public static String getChatThreadType(ChatThread chatThread, String str) {
        if (chatThread != null) {
            int i = chatThread.type;
            if (i == 0) {
                return "1-1";
            }
            if (i == 1) {
                return "Group Chat";
            }
            if (i == 2) {
                return "Public Chat";
            }
        }
        return str;
    }
}

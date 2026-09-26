package com.narvii.util;

import com.google.android.gms.common.Scopes;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Blog;
import com.narvii.model.ChatThread;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.util.statistics.constants.EventConstants;

/* JADX INFO: loaded from: classes11.dex */
public class StatisticHelper {
    public static String getChatThreadType(ChatThread chatThread, String str) {
        if (chatThread != null) {
            int i10 = chatThread.type;
            if (i10 == 0) {
                return "1-1";
            }
            if (i10 == 1) {
                return "Group Chat";
            }
            if (i10 == 2) {
                return "Public Chat";
            }
        }
        return str;
    }

    public static String getStatisticSource(NVContext nVContext, NVObject nVObject, int i10) {
        User user;
        if (nVObject != null) {
            i10 = nVObject.objectType();
        }
        if (i10 == 0) {
            return Scopes.PROFILE;
        }
        if (i10 == 1) {
            if (!(nVObject instanceof Blog)) {
                return "blog";
            }
            switch (((Blog) nVObject).type) {
                case 2:
                    return EventConstants.PostType.REPOST;
                case 3:
                    return "question";
                case 4:
                    return EntryManager.ENTRY_POLL;
                case 5:
                    return "link";
                case 6:
                    return "quiz";
                case 7:
                    return "image";
                case 8:
                    return "external content";
                default:
                    return "blog";
            }
        }
        if (i10 == 2) {
            return ((nVObject instanceof Item) && (user = ((Item) nVObject).author) != null && user.isSystem()) ? "official favorite" : EventConstants.PostType.WIKI;
        }
        if (i10 == 3) {
            return CommentListAdapter.COMMENT;
        }
        if (i10 == 7) {
            return "chat message";
        }
        if (i10 == 12) {
            return "chat";
        }
        if (i10 == 16) {
            return SearchPrefsHelper.PREFS_KEY_COMMUNITY;
        }
        if (i10 == 23) {
            return "quiz question";
        }
        if (i10 == 106) {
            return "album";
        }
        if (i10 == 109) {
            return "shared folder media";
        }
        if (i10 == 116) {
            return "chat bubble";
        }
        if (i10 == 122) {
            return "avatar frame";
        }
        if (i10 == 131) {
            return "global announcement";
        }
        if (i10 == 113 || i10 == 114) {
            return "sticker";
        }
        return null;
    }
}

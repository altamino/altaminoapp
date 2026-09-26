package com.narvii.headlines;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.model.Feed;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingService;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
public class HeadlineLoggingHelper {
    NVContext context;
    LoggingService logging;

    public void logFeedLoad(long j6, String str, String str2, String str3, int i10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("direction");
        arrayList.add(str);
        arrayList.add("loadTime");
        arrayList.add(Long.valueOf(j6));
        arrayList.add("tab");
        arrayList.add(str2);
        arrayList.add("hsid");
        arrayList.add(str3);
        arrayList.add("size");
        arrayList.add(Integer.valueOf(i10));
        this.logging.logEvent("FeedLoad", arrayList.toArray());
    }

    public void logJoinAminoStarting(String str, int i10, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("referralObjectId");
        arrayList.add(str);
        arrayList.add(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        arrayList.add(Integer.valueOf(i10));
        arrayList.add("eventOrigin");
        arrayList.add(LoggingOrigin.Headlines.toString());
        if (str2 != null) {
            arrayList.add("eventSource");
            arrayList.add(str2);
        }
        this.logging.logEvent("JoinAminoStarting", arrayList.toArray());
    }

    public void logPostDetailViewEntered(Feed feed, int i10, String str, int i11, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
        arrayList.add(Integer.valueOf(feed.objectType()));
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
        arrayList.add(feed.id());
        arrayList.add("position");
        arrayList.add(Integer.valueOf(i10));
        arrayList.add("likeCount");
        arrayList.add(Integer.valueOf(feed.getTotalVotesCount()));
        arrayList.add("commentCount");
        arrayList.add(Integer.valueOf(feed.getTotalCommentsCount()));
        if (feed.getHeadlineStyle() != null) {
            arrayList.add("layout");
            arrayList.add(Integer.valueOf(feed.getHeadlineStyle().layout));
        }
        if (str != null) {
            arrayList.add("tab");
            arrayList.add(str);
        }
        arrayList.add(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        arrayList.add(Integer.valueOf(i11));
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add("hsid");
            arrayList.add(str2);
        }
        this.logging.logEvent("HeadlinePostDetailViewEntered", arrayList.toArray());
    }

    public void logPostDetailViewQuit(Feed feed, long j6, int i10, String str) {
        if (feed == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
        arrayList.add(Integer.valueOf(feed.objectType()));
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
        arrayList.add(feed.id());
        arrayList.add(TypedValues.TransitionType.S_DURATION);
        arrayList.add(Long.valueOf(j6));
        arrayList.add("completeness");
        arrayList.add(Integer.valueOf(i10));
        if (str != null) {
            arrayList.add("tab");
            arrayList.add(str);
        }
        this.logging.logEvent("HeadlinePostDetailViewQuited", arrayList.toArray());
    }

    public void logPostSeen(Feed feed, int i10, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        if (feed.ndcId > 0) {
            arrayList.add(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
            arrayList.add(Integer.valueOf(feed.ndcId));
        }
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
        arrayList.add(feed.id());
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
        arrayList.add(Integer.valueOf(feed.objectType()));
        arrayList.add("position");
        arrayList.add(Integer.valueOf(i10));
        arrayList.add("likeCount");
        arrayList.add(Integer.valueOf(feed.getTotalVotesCount()));
        arrayList.add("commentCount");
        arrayList.add(Integer.valueOf(feed.getTotalCommentsCount()));
        if (feed.getHeadlineStyle() != null) {
            arrayList.add("layout");
            arrayList.add(Integer.valueOf(feed.getHeadlineStyle().layout));
        }
        if (str != null) {
            arrayList.add("tab");
            arrayList.add(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add("hsid");
            arrayList.add(str2);
        }
        this.logging.logEvent("PostSeen", arrayList.toArray());
    }

    public void logPostUnseen(Feed feed, int i10, String str, long j6) {
        ArrayList arrayList = new ArrayList();
        if (feed.ndcId > 0) {
            arrayList.add(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
            arrayList.add(Integer.valueOf(feed.ndcId));
        }
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
        arrayList.add(feed.id());
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
        arrayList.add(Integer.valueOf(feed.objectType()));
        arrayList.add("position");
        arrayList.add(Integer.valueOf(i10));
        arrayList.add("likeCount");
        arrayList.add(Integer.valueOf(feed.getTotalVotesCount()));
        arrayList.add("commentCount");
        arrayList.add(Integer.valueOf(feed.getTotalCommentsCount()));
        if (feed.getHeadlineStyle() != null) {
            arrayList.add("layout");
            arrayList.add(Integer.valueOf(feed.getHeadlineStyle().layout));
        }
        if (str != null) {
            arrayList.add("tab");
            arrayList.add(str);
        }
        arrayList.add(TypedValues.TransitionType.S_DURATION);
        arrayList.add(Long.valueOf(j6));
        this.logging.logEvent("PostUnseen", arrayList.toArray());
    }

    public HeadlineLoggingHelper(NVContext nVContext) {
        this.context = nVContext;
        this.logging = (LoggingService) nVContext.getService("logging");
    }
}

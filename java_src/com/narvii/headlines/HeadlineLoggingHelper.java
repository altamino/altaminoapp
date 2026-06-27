package com.narvii.headlines;

import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.model.Feed;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingService;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class HeadlineLoggingHelper {
    NVContext context;
    LoggingService logging;

    public HeadlineLoggingHelper(NVContext nVContext) {
        this.context = nVContext;
        this.logging = (LoggingService) nVContext.getService("logging");
    }

    public void logPostSeen(Feed feed, int i, String str, String str2) {
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
        arrayList.add(Integer.valueOf(i));
        arrayList.add("likeCount");
        arrayList.add(Integer.valueOf(feed.getTotalVotesCount()));
        arrayList.add("commentCount");
        arrayList.add(Integer.valueOf(feed.getTotalCommentsCount()));
        if (feed.getHeadlineStyle() != null) {
            arrayList.add(TtmlNode.TAG_LAYOUT);
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
        this.logging.lambda$logEvent$0$LoggingServiceImpl("PostSeen", arrayList.toArray());
    }

    public void logPostUnseen(Feed feed, int i, String str, long j) {
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
        arrayList.add(Integer.valueOf(i));
        arrayList.add("likeCount");
        arrayList.add(Integer.valueOf(feed.getTotalVotesCount()));
        arrayList.add("commentCount");
        arrayList.add(Integer.valueOf(feed.getTotalCommentsCount()));
        if (feed.getHeadlineStyle() != null) {
            arrayList.add(TtmlNode.TAG_LAYOUT);
            arrayList.add(Integer.valueOf(feed.getHeadlineStyle().layout));
        }
        if (str != null) {
            arrayList.add("tab");
            arrayList.add(str);
        }
        arrayList.add("duration");
        arrayList.add(Long.valueOf(j));
        this.logging.lambda$logEvent$0$LoggingServiceImpl("PostUnseen", arrayList.toArray());
    }

    public void logFeedLoad(long j, String str, String str2, String str3, int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("direction");
        arrayList.add(str);
        arrayList.add("loadTime");
        arrayList.add(Long.valueOf(j));
        arrayList.add("tab");
        arrayList.add(str2);
        arrayList.add("hsid");
        arrayList.add(str3);
        arrayList.add("size");
        arrayList.add(Integer.valueOf(i));
        this.logging.lambda$logEvent$0$LoggingServiceImpl("FeedLoad", arrayList.toArray());
    }

    public void logPostDetailViewEntered(Feed feed, int i, String str, int i2, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
        arrayList.add(Integer.valueOf(feed.objectType()));
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
        arrayList.add(feed.id());
        arrayList.add("position");
        arrayList.add(Integer.valueOf(i));
        arrayList.add("likeCount");
        arrayList.add(Integer.valueOf(feed.getTotalVotesCount()));
        arrayList.add("commentCount");
        arrayList.add(Integer.valueOf(feed.getTotalCommentsCount()));
        if (feed.getHeadlineStyle() != null) {
            arrayList.add(TtmlNode.TAG_LAYOUT);
            arrayList.add(Integer.valueOf(feed.getHeadlineStyle().layout));
        }
        if (str != null) {
            arrayList.add("tab");
            arrayList.add(str);
        }
        arrayList.add(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        arrayList.add(Integer.valueOf(i2));
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add("hsid");
            arrayList.add(str2);
        }
        this.logging.lambda$logEvent$0$LoggingServiceImpl("HeadlinePostDetailViewEntered", arrayList.toArray());
    }

    public void logPostDetailViewQuit(Feed feed, long j, int i, String str) {
        if (feed == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
        arrayList.add(Integer.valueOf(feed.objectType()));
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
        arrayList.add(feed.id());
        arrayList.add("duration");
        arrayList.add(Long.valueOf(j));
        arrayList.add("completeness");
        arrayList.add(Integer.valueOf(i));
        if (str != null) {
            arrayList.add("tab");
            arrayList.add(str);
        }
        this.logging.lambda$logEvent$0$LoggingServiceImpl("HeadlinePostDetailViewQuited", arrayList.toArray());
    }

    public void logJoinAminoStarting(String str, int i, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("referralObjectId");
        arrayList.add(str);
        arrayList.add(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        arrayList.add(Integer.valueOf(i));
        arrayList.add("eventOrigin");
        arrayList.add(LoggingOrigin.Headlines.toString());
        if (str2 != null) {
            arrayList.add("eventSource");
            arrayList.add(str2);
        }
        this.logging.lambda$logEvent$0$LoggingServiceImpl("JoinAminoStarting", arrayList.toArray());
    }
}

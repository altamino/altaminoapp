package com.narvii.youtube;

import com.narvii.account.notice.AccountNotice;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import org.schabi.newpipe.extractor.services.youtube.r0;

/* JADX INFO: loaded from: classes11.dex */
public class YoutubeLoggingStub {
    public int errorCode;
    public String eventOrigin;
    public String message;
    public int ndcId;
    public String objectId;
    public int objectType;
    public String videoId;

    public YoutubeLoggingStub() {
    }

    public YoutubeLoggingStub(int i10, String str, int i11, String str2, String str3) {
        this.ndcId = i10;
        this.objectId = str;
        this.objectType = i11;
        this.videoId = str2;
        this.eventOrigin = str3;
    }

    public Object[] buildYoutubeParseErrorParams() {
        return new Object[]{r0.VIDEO_ID, this.videoId, "parserVersion", 11, "code", Integer.valueOf(this.errorCode), AccountNotice.LEVEL_MESSAGE, this.message, CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(this.ndcId), ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, this.objectId, ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(this.objectType), "eventOrigin", this.eventOrigin};
    }
}

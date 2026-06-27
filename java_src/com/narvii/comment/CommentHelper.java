package com.narvii.comment;

import android.content.Intent;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.extension.FeedExtensionKt;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.text.TextUtils;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public class CommentHelper {
    public static final int REQ_CODE_VIEW_STICKER = 111;
    private final ApiService api;
    private boolean isGlobalScope;
    private final NotificationCenter nc;
    private final NVContext nvContext;

    public CommentHelper(NVContext nVContext) {
        this(nVContext, Utils.isGlobalInteractionScope(nVContext));
    }

    public CommentHelper(NVContext nVContext, boolean z) {
        this.nvContext = nVContext;
        this.isGlobalScope = z;
        this.api = (ApiService) nVContext.getService("api");
        this.nc = (NotificationCenter) nVContext.getService("notification");
    }

    public static String getBaseCommentPath(boolean z, Comment comment) {
        return getBaseCommentPath(z, comment.getParentTypeName(), comment.parentId, comment.commentId);
    }

    public static String getBaseCommentPath(boolean z, int i, String str, String str2) {
        return getBaseCommentPath(z, Comment.getParentTypeName(i), str, str2);
    }

    public static String getBaseCommentPath(boolean z, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        sb.append(z ? "/g-comment" : "/comment");
        if (!TextUtils.isEmpty(str3)) {
            sb.append('/');
            sb.append(str3);
        }
        return sb.toString();
    }

    public static ApiRequest createPostCommentRequest(int i, String str, String str2, boolean z) {
        String baseCommentPath = getBaseCommentPath(z, i, str, str2);
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.selfHandleErrorCode(ApiService.API_ERR_USER_NOT_IN_COMMUNITY);
        builder.post().path(baseCommentPath);
        return builder.build();
    }

    public void sendDeleteCommentRequest(Comment comment, ApiResponseListener<ApiResponse> apiResponseListener) {
        sendDeleteCommentRequest(comment, apiResponseListener, true);
    }

    public void sendDeleteCommentRequest(final Comment comment, ApiResponseListener<ApiResponse> apiResponseListener, boolean z) {
        String baseCommentPath = getBaseCommentPath(this.isGlobalScope, comment);
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.delete().path(baseCommentPath);
        this.api.exec(builder.build(), new ProxApiResponseListener(apiResponseListener) { // from class: com.narvii.comment.CommentHelper.1
            @Override // com.narvii.comment.CommentHelper.ProxApiResponseListener, com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                CommentHelper.this.sendCommentNotification("delete", comment, true);
            }
        });
    }

    public void sendCommentNotification(String str, Comment comment, boolean z) {
        Notification notification = new Notification(str, comment);
        if (z) {
            NotificationUtils.sendNotificationIncludeGlobal(this.nc, notification);
        } else {
            this.nc.sendNotification(notification);
        }
    }

    public static Feed updateFeedWithComment(Feed feed, Comment comment, String str) {
        int i;
        if ("delete".equals(str)) {
            i = -1;
        } else {
            i = "new".equals(str) ? 1 : 0;
        }
        boolean z = comment.ndcId == 0;
        int commentsCount = feed.getCommentsCount(z) + i;
        if (commentsCount < 0) {
            commentsCount = 0;
        }
        feed.setCommentsCount(z, commentsCount);
        return feed;
    }

    public static Intent getCommentIntent(NVContext nVContext, Feed feed, boolean z) {
        return getCommentIntent(nVContext, feed, z, true);
    }

    public static Intent getCommentIntent(NVContext nVContext, Feed feed, boolean z, boolean z2) {
        Intent intent;
        if (feed == null) {
            return null;
        }
        if (feed.getTotalCommentsCount() == 0) {
            intent = new Intent(nVContext.getContext(), (Class<?>) CommentPostActivity.class);
            intent.putExtra("parentType", feed.objectType());
            intent.putExtra("parentId", feed.id());
            if (feed instanceof Blog) {
                intent.putExtra("parentSubType", ((Blog) feed).type);
            }
            intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(feed));
        } else {
            intent = FragmentWrapperActivity.intent(CommentListFragment.class);
            intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(feed));
            intent.putExtra("type", feed.objectType());
            intent.putExtra("id", feed.id());
        }
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (z2) {
            intent.putExtra("__model", configService.getCommunityId() == 0);
        }
        intent.putExtra("autoJoin", true);
        int i = feed.ndcId;
        if (i != -1) {
            intent.putExtra("__communityId", i);
        }
        if (z) {
            intent.putExtra("background", JacksonUtils.writeAsString(feed.getBackgroundMedia()));
            intent.putExtra(CommentListFragment.COMMENT_KEY_BLUR_BACKGROUND, true);
        }
        intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, FeedExtensionKt.isAnnouncement(feed));
        intent.putExtra(NVActivity.INTERACTION_SCOPE, Utils.isGlobalInteractionScope(nVContext));
        return intent;
    }

    public static Intent getCommentPostActivityIntent(NVContext nVContext, Feed feed, boolean z) {
        if (feed == null) {
            return null;
        }
        Intent intent = new Intent(nVContext.getContext(), (Class<?>) CommentPostActivity.class);
        intent.putExtra(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, feed.ndcId);
        intent.putExtra("parentType", feed.objectType());
        intent.putExtra("parentId", feed.id());
        if (feed instanceof Blog) {
            intent.putExtra("parentSubType", ((Blog) feed).type);
        }
        intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(feed));
        intent.putExtra("__model", ((ConfigService) nVContext.getService("config")).getCommunityId() == 0);
        intent.putExtra("autoJoin", true);
        int i = feed.ndcId;
        if (i != -1) {
            intent.putExtra("__communityId", i);
        }
        intent.putExtra(NVActivity.INTERACTION_SCOPE, z);
        intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, FeedExtensionKt.isAnnouncement(feed));
        intent.putExtra(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY, feed.ndcId == 0);
        return intent;
    }

    private class ProxApiResponseListener extends ApiResponseListener {
        private ApiResponseListener listener;

        public ProxApiResponseListener(ApiResponseListener apiResponseListener) {
            super(apiResponseListener.clazz);
            this.listener = apiResponseListener;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public ApiResponse parseResponse(ApiRequest apiRequest, int i, List list, byte[] bArr) throws Exception {
            return this.listener.parseResponse(apiRequest, i, list, bArr);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            this.listener.onFinish(apiRequest, apiResponse);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public ApiResponse parseErrorResponse(byte[] bArr) throws IOException {
            return this.listener.parseErrorResponse(bArr);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List list, String str, ApiResponse apiResponse, Throwable th) {
            this.listener.onFail(apiRequest, i, list, str, apiResponse, th);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public String stringBody() {
            return this.listener.stringBody();
        }
    }
}

package com.narvii.story.detail;

import android.content.Intent;
import android.net.Uri;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.comment.CommentHelper;
import com.narvii.community.CommunityHelper;
import com.narvii.influencer.FanClubSubscriptionDialog;
import com.narvii.list.NVAdapter;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryNotificationStub;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.text.TextUtils;
import java.util.List;

/* loaded from: classes3.dex */
public class VoteHelper {
    private final CommunityHelper communityHelper;
    public LoggingOrigin loggingOrigin;
    public String loggingOriginName;
    public LoggingSource loggingSource;
    private int ndcId = -1;
    private NVContext nvContext;

    public interface OnVoteListener {
        void onVoteEnd(boolean z);

        void onVoteStart();
    }

    public static class OnVoteListenerAdapter implements OnVoteListener {
        @Override // com.narvii.story.detail.VoteHelper.OnVoteListener
        public void onVoteEnd(boolean z) {
        }

        @Override // com.narvii.story.detail.VoteHelper.OnVoteListener
        public void onVoteStart() {
        }
    }

    public static int getTargetVotedValue(Integer num, Feed feed, boolean z) {
        if (num != null) {
            return num.intValue();
        }
        return feed.getVotedValue(z) == 0 ? 4 : 0;
    }

    public static int getTargetVotedValue(Integer num, Comment comment) {
        if (num != null) {
            return num.intValue();
        }
        return comment.votedValue == 0 ? 4 : 0;
    }

    public static int getTargetVotedValue(Integer num, SharedFile sharedFile, boolean z) {
        if (num != null) {
            return num.intValue();
        }
        return sharedFile.votedValue == 0 ? 4 : 0;
    }

    public static String getVotePath(NVObject nVObject, boolean z) {
        if ((nVObject instanceof Blog) || (nVObject instanceof Item) || (nVObject instanceof SharedFile)) {
            StringBuilder sb = new StringBuilder();
            sb.append(nVObject.apiTypeName());
            sb.append("/");
            sb.append(nVObject.id());
            sb.append(z ? "/g-vote" : "/vote");
            return sb.toString();
        }
        if (!(nVObject instanceof Comment)) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(CommentHelper.getBaseCommentPath(z, (Comment) nVObject));
        sb2.append(z ? "/g-vote" : "/vote");
        return sb2.toString();
    }

    public VoteHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.communityHelper = new CommunityHelper(nVContext);
    }

    public void setCommunityId(int i) {
        this.ndcId = i;
    }

    public boolean checkLogin() {
        if (((AccountService) this.nvContext.getService("account")).hasAccount()) {
            return true;
        }
        Intent intent = new Intent(StoryNotificationStub.ACTION_VOTE);
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).ensureLogin(intent);
        } else if (nVContext instanceof NVActivity) {
            ((NVActivity) nVContext).ensureLogin(intent);
        } else if (nVContext instanceof NVAdapter) {
            ((NVAdapter) nVContext).ensureLogin(intent);
        } else {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
            intent2.putExtra("promptType", "Required");
            try {
                this.nvContext.startActivity(intent2);
            } catch (Exception unused) {
                Log.e("unable to start login activity(from voteHelper)");
            }
            NVToast.makeText(this.nvContext.getContext(), R.string.login_first, 0).show();
        }
        return false;
    }

    public void vote(Feed feed, Integer num, OnVoteListener onVoteListener) {
        vote(feed, num, (ApiService) null, onVoteListener);
    }

    public void vote(final Feed feed, Integer num, ApiService apiService, final OnVoteListener onVoteListener) {
        if (!checkLogin()) {
            if (onVoteListener != null) {
                Utils.post(new Runnable() { // from class: com.narvii.story.detail.-$$Lambda$VoteHelper$MSqFqR8tRzHTjQjO2ovT63we5as
                    @Override // java.lang.Runnable
                    public final void run() {
                        onVoteListener.onVoteEnd(false);
                    }
                });
                return;
            }
            return;
        }
        if (feed != null && feed.isFansOnly() && !feed.isContentAccessible()) {
            FanClubSubscriptionDialog.showSubscriptionDialog(this.nvContext, feed.uid(), "Page Detailed View");
            if (onVoteListener != null) {
                Utils.post(new Runnable() { // from class: com.narvii.story.detail.-$$Lambda$VoteHelper$BL2-lA6YGSuirv9Wgis0-EWsMpQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        onVoteListener.onVoteEnd(false);
                    }
                });
                return;
            }
            return;
        }
        ApiRequest.Builder builder = ApiRequest.builder();
        final boolean zIsGlobalInteractionScope = Utils.isGlobalInteractionScope(this.nvContext);
        final int targetVotedValue = getTargetVotedValue(num, feed, zIsGlobalInteractionScope);
        String votePath = getVotePath(feed, zIsGlobalInteractionScope);
        if (targetVotedValue == 0) {
            builder.delete().path(votePath);
        } else {
            builder.post().path(votePath + "?cv=1.2&value=" + targetVotedValue).param("value", Integer.valueOf(targetVotedValue));
        }
        int i = this.ndcId;
        if (i != -1) {
            builder.communityId(i);
        } else if (!feed.isGlobalFeed()) {
            builder.communityId(feed.ndcId);
        }
        LoggingSource loggingSource = this.loggingSource;
        if (loggingSource != null) {
            builder.param("eventSource", loggingSource.name());
        }
        LoggingOrigin loggingOrigin = this.loggingOrigin;
        if (loggingOrigin != null) {
            builder.param("eventOrigin", loggingOrigin.name());
        } else if (!TextUtils.isEmpty(this.loggingOriginName)) {
            builder.param("eventOrigin", this.loggingOriginName);
        }
        ApiRequest apiRequestBuild = builder.build();
        if (apiService == null) {
            apiService = (ApiService) this.nvContext.getService("api");
        }
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.story.detail.VoteHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                boolean z;
                Feed feed2 = feed;
                if ((feed2 instanceof Item) || (feed2 instanceof Blog)) {
                    Feed feed3 = (Feed) feed.m46clone();
                    int voteCount = feed3.getVoteCount(zIsGlobalInteractionScope);
                    int votedValue = feed3.getVotedValue(zIsGlobalInteractionScope);
                    feed3.setVotedValue(zIsGlobalInteractionScope, targetVotedValue);
                    if (votedValue == 0 && targetVotedValue != 0) {
                        feed3.setVoteCount(zIsGlobalInteractionScope, voteCount + 1);
                    } else if (votedValue != 0 && targetVotedValue == 0) {
                        feed3.setVoteCount(zIsGlobalInteractionScope, voteCount - 1);
                    }
                    NotificationUtils.sendNotificationIncludeGlobal(VoteHelper.this.nvContext, new Notification("update", feed3));
                    if (feed3 instanceof Blog) {
                        Blog blog = (Blog) feed3;
                        if (blog.type == 9 && (z = zIsGlobalInteractionScope)) {
                            new StoryHelper(VoteHelper.this.nvContext).sendStoryNotification(blog, feed.getVotedValue(z) == 0 && targetVotedValue != 0 ? StoryNotificationStub.ACTION_VOTE : StoryNotificationStub.ACTION_UNVOTE);
                        }
                    }
                    AccountService accountService = (AccountService) VoteHelper.this.nvContext.getService("account");
                    User userProfile = accountService.getUserProfile();
                    if (zIsGlobalInteractionScope) {
                        userProfile = accountService.getUserProfile(0);
                    }
                    if (userProfile != null) {
                        Notification notification = new Notification(targetVotedValue == 0 ? "delete" : "new", userProfile);
                        notification.parentId = feed.id();
                        ((NotificationCenter) VoteHelper.this.nvContext.getService("notification")).sendNotification(notification);
                    }
                    OnVoteListener onVoteListener2 = onVoteListener;
                    if (onVoteListener2 != null) {
                        onVoteListener2.onVoteEnd(true);
                    }
                    ((NotificationCenter) VoteHelper.this.nvContext.getService("notification")).sendNotification(new Notification(StoryNotificationStub.ACTION_VOTE_END, feed3));
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                OnVoteListener onVoteListener2 = onVoteListener;
                if (onVoteListener2 != null) {
                    onVoteListener2.onVoteEnd(false);
                }
                ((NotificationCenter) VoteHelper.this.nvContext.getService("notification")).sendNotification(new Notification(StoryNotificationStub.ACTION_VOTE_END, feed));
                NVToast.makeText(VoteHelper.this.nvContext.getContext(), str, 0).show();
            }
        });
        if (onVoteListener != null) {
            onVoteListener.onVoteStart();
        }
        ((NotificationCenter) this.nvContext.getService("notification")).sendNotification(new Notification(StoryNotificationStub.ACTION_VOTE_START, feed));
    }

    public void vote(final Comment comment, Integer num, NVObject nVObject, final OnVoteListener onVoteListener) {
        if (!checkLogin()) {
            if (onVoteListener != null) {
                Utils.post(new Runnable() { // from class: com.narvii.story.detail.-$$Lambda$VoteHelper$8N8yoawMN9XgTeJXe21JIuZS420
                    @Override // java.lang.Runnable
                    public final void run() {
                        onVoteListener.onVoteEnd(false);
                    }
                });
                return;
            }
            return;
        }
        boolean zIsGlobalInteractionScope = Utils.isGlobalInteractionScope(this.nvContext);
        ApiRequest.Builder builder = ApiRequest.builder();
        String votePath = getVotePath(comment, zIsGlobalInteractionScope);
        final int targetVotedValue = getTargetVotedValue(num, comment);
        if (targetVotedValue == 0) {
            builder.delete().path(votePath);
        } else {
            builder.post().path(votePath + "?cv=1.2&value=" + targetVotedValue).param("value", Integer.valueOf(targetVotedValue));
        }
        int i = this.ndcId;
        if (i != -1) {
            builder.communityId(i);
        } else if (nVObject instanceof Feed) {
            builder.communityId(((Feed) nVObject).ndcId);
        }
        LoggingSource loggingSource = this.loggingSource;
        if (loggingSource != null) {
            builder.param("eventSource", loggingSource.name());
        }
        LoggingOrigin loggingOrigin = this.loggingOrigin;
        if (loggingOrigin != null) {
            builder.param("eventOrigin", loggingOrigin.name());
        } else if (!TextUtils.isEmpty(this.loggingOriginName)) {
            builder.param("eventOrigin", this.loggingOriginName);
        }
        ((ApiService) this.nvContext.getService("api")).exec(builder.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.story.detail.VoteHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                Comment comment2 = (Comment) comment.m46clone();
                comment2.votedValue = targetVotedValue;
                comment2.votesSum += comment2.votedValue - comment.votedValue;
                NotificationUtils.sendNotificationIncludeGlobal(VoteHelper.this.nvContext, new Notification("update", comment2));
                OnVoteListener onVoteListener2 = onVoteListener;
                if (onVoteListener2 != null) {
                    onVoteListener2.onVoteEnd(true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                OnVoteListener onVoteListener2 = onVoteListener;
                if (onVoteListener2 != null) {
                    onVoteListener2.onVoteEnd(false);
                }
                NVToast.makeText(VoteHelper.this.nvContext.getContext(), str, 0).show();
            }
        });
        if (onVoteListener != null) {
            onVoteListener.onVoteStart();
        }
    }

    public void vote(final SharedFile sharedFile, Integer num, ApiService apiService, final OnVoteListener onVoteListener) {
        if (!checkLogin()) {
            if (onVoteListener != null) {
                Utils.post(new Runnable() { // from class: com.narvii.story.detail.-$$Lambda$VoteHelper$SpRxBXsszRiRnOMLmdl_rljNVuw
                    @Override // java.lang.Runnable
                    public final void run() {
                        onVoteListener.onVoteEnd(false);
                    }
                });
                return;
            }
            return;
        }
        final boolean zIsGlobalInteractionScope = Utils.isGlobalInteractionScope(this.nvContext);
        ApiRequest.Builder builder = ApiRequest.builder();
        final int targetVotedValue = getTargetVotedValue(num, sharedFile, zIsGlobalInteractionScope);
        String votePath = getVotePath(sharedFile, zIsGlobalInteractionScope);
        if (targetVotedValue == 0) {
            builder.delete().path(votePath);
        } else {
            builder.post().path(votePath + "?cv=1.2&value=" + targetVotedValue).param("value", Integer.valueOf(targetVotedValue));
        }
        int i = this.ndcId;
        if (i != -1) {
            builder.communityId(i);
        }
        LoggingSource loggingSource = this.loggingSource;
        if (loggingSource != null) {
            builder.param("eventSource", loggingSource.name());
        }
        LoggingOrigin loggingOrigin = this.loggingOrigin;
        if (loggingOrigin != null) {
            builder.param("eventOrigin", loggingOrigin.name());
        } else if (!TextUtils.isEmpty(this.loggingOriginName)) {
            builder.param("eventOrigin", this.loggingOriginName);
        }
        ApiRequest apiRequestBuild = builder.build();
        if (apiService == null) {
            apiService = (ApiService) this.nvContext.getService("api");
        }
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.story.detail.VoteHelper.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                SharedFile sharedFile2 = (SharedFile) sharedFile.m46clone();
                int i2 = targetVotedValue;
                sharedFile2.votedValue = i2;
                if (sharedFile.votedValue == 0 && i2 != 0) {
                    sharedFile2.votesCount++;
                } else if (sharedFile.votedValue != 0 && targetVotedValue == 0) {
                    sharedFile2.votesCount--;
                }
                NotificationUtils.sendNotificationIncludeGlobal(VoteHelper.this.nvContext, new Notification("update", sharedFile2));
                AccountService accountService = (AccountService) VoteHelper.this.nvContext.getService("account");
                User userProfile = accountService.getUserProfile();
                if (zIsGlobalInteractionScope) {
                    userProfile = accountService.getUserProfile(0);
                }
                if (userProfile != null) {
                    Notification notification = new Notification(sharedFile.votedValue > 0 ? "delete" : "new", userProfile);
                    notification.parentId = sharedFile.id();
                    ((NotificationCenter) VoteHelper.this.nvContext.getService("notification")).sendNotification(notification);
                }
                OnVoteListener onVoteListener2 = onVoteListener;
                if (onVoteListener2 != null) {
                    onVoteListener2.onVoteEnd(true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                OnVoteListener onVoteListener2 = onVoteListener;
                if (onVoteListener2 != null) {
                    onVoteListener2.onVoteEnd(false);
                }
                NVToast.makeText(VoteHelper.this.nvContext.getContext(), str, 0).show();
            }
        });
        if (onVoteListener != null) {
            onVoteListener.onVoteStart();
        }
    }
}

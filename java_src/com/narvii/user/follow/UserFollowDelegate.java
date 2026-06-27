package com.narvii.user.follow;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.user.follow.IUserFollow;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes3.dex */
public class UserFollowDelegate implements IUserFollow {
    private NVContext ctx;
    private IUserFollow host;
    private HashSet<String> sendingFollow;

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ void followFail() {
        IUserFollow.CC.$default$followFail(this);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ void followSuccess() {
        IUserFollow.CC.$default$followSuccess(this);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ boolean needUpdateUserAfterFollow() {
        return IUserFollow.CC.$default$needUpdateUserAfterFollow(this);
    }

    public UserFollowDelegate(IUserFollow iUserFollow, NVContext nVContext) {
        this.host = iUserFollow;
        this.ctx = nVContext;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void follow(final User user) {
        HashSet<String> hashSet = this.sendingFollow;
        if (hashSet == null || !hashSet.contains(user.uid)) {
            ((ApiService) this.ctx.getService("api")).exec(ApiRequest.builder().post().communityId(user.ndcId).path("/user-profile/" + user.uid + "/member").build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.user.follow.UserFollowDelegate.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    UserFollowDelegate.this.sendingFollow.remove(user.uid);
                    if (UserFollowDelegate.this.host != null) {
                        UserFollowDelegate.this.host.followSuccess();
                    }
                    UserFollowDelegate.this.onFollowStatusUpdated();
                    AccountService accountService = (AccountService) UserFollowDelegate.this.ctx.getService("account");
                    User userProfile = accountService.getUserProfile(user.ndcId);
                    if (userProfile == null) {
                        return;
                    }
                    Notification notification = new Notification("new", userProfile);
                    notification.parentId = user.uid;
                    NotificationUtils.sendNotificationIncludeGlobal(UserFollowDelegate.this.ctx, notification);
                    User user2 = (User) user.m46clone();
                    user2.addFollowingStatus(1);
                    user2.membersCount++;
                    Notification notification2 = new Notification("update", user2);
                    boolean zNeedUpdateUserAfterFollow = UserFollowDelegate.this.needUpdateUserAfterFollow();
                    if (UserFollowDelegate.this.host != null) {
                        zNeedUpdateUserAfterFollow = UserFollowDelegate.this.host.needUpdateUserAfterFollow();
                    }
                    NotificationUtils.sendUserNotification(UserFollowDelegate.this.ctx, notification2, true, zNeedUpdateUserAfterFollow);
                    userProfile.joinedCount++;
                    accountService.updateProfile(userProfile, apiResponse.timestamp, true);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    UserFollowDelegate.this.sendingFollow.remove(user.uid);
                    if (UserFollowDelegate.this.host != null) {
                        UserFollowDelegate.this.host.followFail();
                    }
                    UserFollowDelegate.this.onFollowStatusUpdated();
                    NVToast.makeText(UserFollowDelegate.this.ctx.getContext(), str, 0).show();
                }
            });
            if (this.sendingFollow == null) {
                this.sendingFollow = new HashSet<>();
            }
            this.sendingFollow.add(user.uid);
            onFollowStatusUpdated();
        }
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean isSendingFollow(User user) {
        HashSet<String> hashSet = this.sendingFollow;
        return hashSet != null && hashSet.contains(user.uid);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void onFollowStatusUpdated() {
        IUserFollow iUserFollow = this.host;
        if (iUserFollow != null) {
            iUserFollow.onFollowStatusUpdated();
        }
    }
}

package com.narvii.master.home.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.Module;
import com.narvii.post.PostHelper;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressHorizontalDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class EditGlobalAvatarActivity extends BaseImageEditActivity<UserAvatarPost> {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private AccountService accountService;
    private UserAvatarPost post;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Intent intent(@NotNull Context context, @NotNull User user) {
            kotlin.jvm.internal.t.j(context, "context");
            kotlin.jvm.internal.t.j(user, "user");
            Intent intent = new Intent(context, (Class<?>) EditGlobalAvatarActivity.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserAvatarPost(user)));
            intent.putExtra("uid", user.id());
            return intent;
        }
    }

    public static final class UserAvatarPost extends UserProfilePost {
        public UserAvatarPost() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UserAvatarPost(@NotNull User user) {
            super(user);
            kotlin.jvm.internal.t.j(user, "user");
        }

        @Override // com.narvii.user.profile.post.UserProfilePost, com.narvii.post.PostObject
        @NotNull
        public ObjectNode postBody(@NotNull NVContext ctx) {
            kotlin.jvm.internal.t.j(ctx, "ctx");
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put("icon", this.icon);
            kotlin.jvm.internal.t.i(objectNodeCreateObjectNode, "apply(...)");
            return objectNodeCreateObjectNode;
        }
    }

    @Override // com.narvii.app.NVActivity
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.post.BasePostActivity
    @NotNull
    public Class<UserAvatarPost> postClazz() {
        return UserAvatarPost.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(@Nullable UserAvatarPost userAvatarPost) {
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        AccountService accountService = this.accountService;
        if (accountService == null) {
            kotlin.jvm.internal.t.B("accountService");
            accountService = null;
        }
        ApiRequest apiRequestBuild = builderPost.path("/user-profile/" + accountService.getUserId()).build();
        BackgroundPostHelper backgroundPostHelper = new BackgroundPostHelper(this);
        backgroundPostHelper.setPostListener(this);
        backgroundPostHelper.startPost(userAvatarPost, apiRequestBuild, UserResponse.class);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(@Nullable PostHelper postHelper, @Nullable ApiResponse apiResponse) {
        if (apiResponse instanceof UserResponse) {
            UserResponse userResponse = (UserResponse) apiResponse;
            User userObject = userResponse.object();
            AccountService accountService = this.accountService;
            if (accountService == null) {
                kotlin.jvm.internal.t.B("accountService");
                accountService = null;
            }
            accountService.updateProfile(userObject, userResponse.timestamp, true);
        }
        if (isDestoryed()) {
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("__finish", true);
        l0 l0Var = l0.INSTANCE;
        setResult(-1, intent);
        ProgressHorizontalDialog progressHorizontalDialog = this.progressDialog;
        if (progressHorizontalDialog != null && progressHorizontalDialog.isShowing()) {
            this.progressDialog.dismiss();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    @NotNull
    public UserAvatarPost savePost() {
        UserAvatarPost userAvatarPost = this.post;
        if (userAvatarPost != null) {
            return userAvatarPost;
        }
        kotlin.jvm.internal.t.B(Module.MODULE_POSTS);
        return null;
    }

    @Override // com.narvii.master.home.profile.BaseImageEditActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("account");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.accountService = (AccountService) service;
        Object as = JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), postClazz());
        kotlin.jvm.internal.t.i(as, "readAs(...)");
        this.post = (UserAvatarPost) as;
        NVImageView image = getImage();
        UserAvatarPost userAvatarPost = this.post;
        if (userAvatarPost == null) {
            kotlin.jvm.internal.t.B(Module.MODULE_POSTS);
            userAvatarPost = null;
        }
        image.setImageUrl(userAvatarPost.icon);
    }
}

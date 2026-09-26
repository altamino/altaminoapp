package com.narvii.master.home.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.model.Media;
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
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class EditGlobalBackgroundActivity extends BaseImageEditActivity<UserBackgroundPost> {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private AccountService accountService;
    private List<? extends Media> backgroundMedias;
    private UserBackgroundPost post;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Intent intent(@NotNull Context context, @NotNull User user, @NotNull List<? extends Media> medias) {
            kotlin.jvm.internal.t.j(context, "context");
            kotlin.jvm.internal.t.j(user, "user");
            kotlin.jvm.internal.t.j(medias, "medias");
            Intent intent = new Intent(context, (Class<?>) EditGlobalBackgroundActivity.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserBackgroundPost(user)));
            intent.putExtra("uid", user.id());
            intent.putExtra("medias", JacksonUtils.writeAsString(medias));
            return intent;
        }
    }

    public static final class UserBackgroundPost extends UserProfilePost {
        public UserBackgroundPost() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UserBackgroundPost(@NotNull User user) {
            super(user);
            kotlin.jvm.internal.t.j(user, "user");
        }

        @Override // com.narvii.user.profile.post.UserProfilePost, com.narvii.post.PostObject
        @NotNull
        public ObjectNode postBody(@NotNull NVContext ctx) {
            kotlin.jvm.internal.t.j(ctx, "ctx");
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
            ObjectNode objectNode = this.extensions;
            if (objectNode != null && objectNodeCreateObjectNode2 != null) {
                objectNodeCreateObjectNode2.put("style", objectNode.get("style"));
            }
            objectNodeCreateObjectNode.put("extensions", objectNodeCreateObjectNode2);
            kotlin.jvm.internal.t.g(objectNodeCreateObjectNode);
            return objectNodeCreateObjectNode;
        }
    }

    @Override // com.narvii.app.NVActivity
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.post.BasePostActivity
    @NotNull
    public Class<UserBackgroundPost> postClazz() {
        return UserBackgroundPost.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(@Nullable UserBackgroundPost userBackgroundPost) {
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        AccountService accountService = this.accountService;
        if (accountService == null) {
            kotlin.jvm.internal.t.B("accountService");
            accountService = null;
        }
        ApiRequest apiRequestBuild = builderPost.path("/user-profile/" + accountService.getUserId()).build();
        BackgroundPostHelper backgroundPostHelper = new BackgroundPostHelper(this);
        backgroundPostHelper.setPostListener(this);
        backgroundPostHelper.startPost(userBackgroundPost, apiRequestBuild, UserResponse.class);
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
    public UserBackgroundPost savePost() {
        UserBackgroundPost userBackgroundPost = this.post;
        if (userBackgroundPost != null) {
            return userBackgroundPost;
        }
        kotlin.jvm.internal.t.B(Module.MODULE_POSTS);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.master.home.profile.BaseImageEditActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("account");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.accountService = (AccountService) service;
        Object as = JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), postClazz());
        kotlin.jvm.internal.t.i(as, "readAs(...)");
        this.post = (UserBackgroundPost) as;
        ArrayList listAs = JacksonUtils.readListAs(getStringParam("medias"), Media.class);
        kotlin.jvm.internal.t.i(listAs, "readListAs(...)");
        this.backgroundMedias = listAs;
        UserBackgroundPost userBackgroundPost = this.post;
        List<? extends Media> list = null;
        UserBackgroundPost userBackgroundPost2 = userBackgroundPost;
        if (userBackgroundPost == null) {
            kotlin.jvm.internal.t.B(Module.MODULE_POSTS);
            userBackgroundPost2 = 0;
        }
        List<? extends Media> list2 = this.backgroundMedias;
        if (list2 == null) {
            kotlin.jvm.internal.t.B("backgroundMedias");
            list2 = null;
        }
        userBackgroundPost2.setBackgroundMediaList(list2);
        List<? extends Media> list3 = this.backgroundMedias;
        if (list3 == null) {
            kotlin.jvm.internal.t.B("backgroundMedias");
            list3 = null;
        }
        if (!list3.isEmpty()) {
            NVImageView image = getImage();
            List<? extends Media> list4 = this.backgroundMedias;
            if (list4 == null) {
                kotlin.jvm.internal.t.B("backgroundMedias");
            } else {
                list = list4;
            }
            image.setImageMedia(list.get(0));
        }
    }
}

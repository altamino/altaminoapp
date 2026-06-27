package com.narvii.master.home.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
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
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EditGlobalAvatarActivity.kt */
/* loaded from: classes3.dex */
public final class EditGlobalAvatarActivity extends BaseImageEditActivity<UserAvatarPost> {
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private AccountService accountService;
    private UserAvatarPost post;

    @Override // com.narvii.master.home.profile.BaseImageEditActivity, com.narvii.app.theme.NVThemeActivity
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.master.home.profile.BaseImageEditActivity, com.narvii.app.theme.NVThemeActivity
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVActivity
    public int getCustomTheme() {
        return 2131755020;
    }

    /* compiled from: EditGlobalAvatarActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent intent(Context context, User user) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(user, "user");
            Intent intent = new Intent(context, (Class<?>) EditGlobalAvatarActivity.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserAvatarPost(user)));
            intent.putExtra("uid", user.id());
            return intent;
        }
    }

    @Override // com.narvii.master.home.profile.BaseImageEditActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"account\")");
        this.accountService = (AccountService) service;
        Object as = JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), postClazz());
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…ram(\"post\"), postClazz())");
        this.post = (UserAvatarPost) as;
        NVImageView image = getImage();
        UserAvatarPost userAvatarPost = this.post;
        if (userAvatarPost != null) {
            image.setImageUrl(userAvatarPost.icon);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
            throw null;
        }
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<UserAvatarPost> postClazz() {
        return UserAvatarPost.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public UserAvatarPost savePost() {
        UserAvatarPost userAvatarPost = this.post;
        if (userAvatarPost != null) {
            return userAvatarPost;
        }
        Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(UserAvatarPost userAvatarPost) {
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        StringBuilder sb = new StringBuilder();
        sb.append("/user-profile/");
        AccountService accountService = this.accountService;
        if (accountService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
        sb.append(accountService.getUserId());
        ApiRequest apiRequestBuild = builderPost.path(sb.toString()).build();
        BackgroundPostHelper backgroundPostHelper = new BackgroundPostHelper(this);
        backgroundPostHelper.setPostListener(this);
        backgroundPostHelper.startPost(userAvatarPost, apiRequestBuild, UserResponse.class);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        if (apiResponse instanceof UserResponse) {
            User userObject = ((UserResponse) apiResponse).object();
            AccountService accountService = this.accountService;
            if (accountService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
            accountService.updateProfile(userObject, apiResponse.timestamp, true);
        }
        if (isDestoryed()) {
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("__finish", true);
        setResult(-1, intent);
        ProgressHorizontalDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            Intrinsics.checkExpressionValueIsNotNull(progressDialog, "progressDialog");
            if (progressDialog.isShowing()) {
                this.progressDialog.dismiss();
            }
        }
        finish();
    }

    /* compiled from: EditGlobalAvatarActivity.kt */
    public static final class UserAvatarPost extends UserProfilePost {
        public UserAvatarPost() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UserAvatarPost(User user) {
            super(user);
            Intrinsics.checkParameterIsNotNull(user, "user");
        }

        @Override // com.narvii.user.profile.post.UserProfilePost, com.narvii.post.PostObject
        public ObjectNode postBody(NVContext ctx) {
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put("icon", this.icon);
            Intrinsics.checkExpressionValueIsNotNull(objectNodeCreateObjectNode, "JacksonUtils.createObjec…ply { put(\"icon\", icon) }");
            return objectNodeCreateObjectNode;
        }
    }
}

package com.narvii.master.home.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
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
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EditGlobalBackgroundActivity.kt */
/* loaded from: classes3.dex */
public final class EditGlobalBackgroundActivity extends BaseImageEditActivity<UserBackgroundPost> {
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private AccountService accountService;
    private List<? extends Media> backgroundMedias;
    private UserBackgroundPost post;

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

    /* compiled from: EditGlobalBackgroundActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent intent(Context context, User user, List<? extends Media> medias) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(user, "user");
            Intrinsics.checkParameterIsNotNull(medias, "medias");
            Intent intent = new Intent(context, (Class<?>) EditGlobalBackgroundActivity.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserBackgroundPost(user)));
            intent.putExtra("uid", user.id());
            intent.putExtra("medias", JacksonUtils.writeAsString(medias));
            return intent;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.master.home.profile.BaseImageEditActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"account\")");
        this.accountService = (AccountService) service;
        Object as = JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), postClazz());
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…ram(\"post\"), postClazz())");
        this.post = (UserBackgroundPost) as;
        ArrayList listAs = JacksonUtils.readListAs(getStringParam("medias"), Media.class);
        Intrinsics.checkExpressionValueIsNotNull(listAs, "JacksonUtils.readListAs(…ias\"), Media::class.java)");
        this.backgroundMedias = listAs;
        UserBackgroundPost userBackgroundPost = this.post;
        if (userBackgroundPost == 0) {
            Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
            throw null;
        }
        List<? extends Media> list = this.backgroundMedias;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundMedias");
            throw null;
        }
        userBackgroundPost.setBackgroundMediaList(list);
        if (this.backgroundMedias == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundMedias");
            throw null;
        }
        if (!r4.isEmpty()) {
            NVImageView image = getImage();
            List<? extends Media> list2 = this.backgroundMedias;
            if (list2 != null) {
                image.setImageMedia(list2.get(0));
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("backgroundMedias");
                throw null;
            }
        }
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<UserBackgroundPost> postClazz() {
        return UserBackgroundPost.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public UserBackgroundPost savePost() {
        UserBackgroundPost userBackgroundPost = this.post;
        if (userBackgroundPost != null) {
            return userBackgroundPost;
        }
        Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(UserBackgroundPost userBackgroundPost) {
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
        backgroundPostHelper.startPost(userBackgroundPost, apiRequestBuild, UserResponse.class);
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

    /* compiled from: EditGlobalBackgroundActivity.kt */
    public static final class UserBackgroundPost extends UserProfilePost {
        public UserBackgroundPost() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UserBackgroundPost(User user) {
            super(user);
            Intrinsics.checkParameterIsNotNull(user, "user");
        }

        @Override // com.narvii.user.profile.post.UserProfilePost, com.narvii.post.PostObject
        public ObjectNode postBody(NVContext ctx) {
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            ObjectNode node = JacksonUtils.createObjectNode();
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            ObjectNode objectNode = this.extensions;
            if (objectNode != null && objectNodeCreateObjectNode != null) {
                objectNodeCreateObjectNode.put(TtmlNode.TAG_STYLE, objectNode.get(TtmlNode.TAG_STYLE));
            }
            node.put("extensions", objectNodeCreateObjectNode);
            Intrinsics.checkExpressionValueIsNotNull(node, "node");
            return node;
        }
    }
}

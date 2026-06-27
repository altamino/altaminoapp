package com.narvii.master.home.profile;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.Module;
import com.narvii.post.PostHelper;
import com.narvii.post.PostListener;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: EditUsernameFragment.kt */
/* loaded from: classes3.dex */
public final class EditUsernameFragment extends BaseSingleEditFragment implements PostListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditUsernameFragment.class), "editUsername", "getEditUsername()Landroid/widget/EditText;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditUsernameFragment.class), "editDelete", "getEditDelete()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditUsernameFragment.class), "inputHint", "getInputHint()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditUsernameFragment.class), "postHelper", "getPostHelper()Lcom/narvii/post/PostHelper;"))};
    public static final Companion Companion = new Companion(null);
    public static final int MAX_LENGTH = 50;
    private HashMap _$_findViewCache;
    public AccountService accountService;
    public UsernamePost post;
    private final Lazy editUsername$delegate = bind(R.id.edit_username);
    private final Lazy editDelete$delegate = bind(R.id.edit_delete);
    private final Lazy inputHint$delegate = bind(R.id.input_hint);
    private final Lazy postHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<PostHelper>() { // from class: com.narvii.master.home.profile.EditUsernameFragment$postHelper$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final PostHelper invoke() {
            return new PostHelper(this.this$0);
        }
    });

    private final ImageView getEditDelete() {
        Lazy lazy = this.editDelete$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ImageView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EditText getEditUsername() {
        Lazy lazy = this.editUsername$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (EditText) lazy.getValue();
    }

    private final TextView getInputHint() {
        Lazy lazy = this.inputHint$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (TextView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PostHelper getPostHelper() {
        Lazy lazy = this.postHelper$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (PostHelper) lazy.getValue();
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment, com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public int layoutId() {
        return R.layout.fragment_edit_username;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.post.PostListener
    public void onPostProgress(PostHelper postHelper, int i, int i2) {
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public int title() {
        return R.string.edit_username;
    }

    public final UsernamePost getPost() {
        UsernamePost usernamePost = this.post;
        if (usernamePost != null) {
            return usernamePost;
        }
        Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
        throw null;
    }

    public final void setPost(UsernamePost usernamePost) {
        Intrinsics.checkParameterIsNotNull(usernamePost, "<set-?>");
        this.post = usernamePost;
    }

    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("accountService");
        throw null;
    }

    public final void setAccountService(AccountService accountService) {
        Intrinsics.checkParameterIsNotNull(accountService, "<set-?>");
        this.accountService = accountService;
    }

    /* compiled from: EditUsernameFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent intent(User user) {
            Intrinsics.checkParameterIsNotNull(user, "user");
            Intent intent = FragmentWrapperActivity.intent(EditUsernameFragment.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UsernamePost(user)));
            Intrinsics.checkExpressionValueIsNotNull(intent, "FragmentWrapperActivity.…amePost(user)))\n        }");
            return intent;
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService<AccountService>(\"account\")");
        this.accountService = (AccountService) service;
        UsernamePost usernamePost = (UsernamePost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), UsernamePost.class);
        if (usernamePost == null) {
            AccountService accountService = this.accountService;
            if (accountService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
            User userProfile = accountService.getUserProfile();
            Intrinsics.checkExpressionValueIsNotNull(userProfile, "accountService.userProfile");
            usernamePost = new UsernamePost(userProfile);
        }
        this.post = usernamePost;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        observeTextChanged(getEditUsername());
        getEditDelete().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.EditUsernameFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditUsernameFragment.this.getEditUsername().setText((CharSequence) null);
            }
        });
        EditText editUsername = getEditUsername();
        UsernamePost usernamePost = this.post;
        if (usernamePost != null) {
            editUsername.setText(usernamePost.nickname);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
            throw null;
        }
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public boolean passValidate() {
        int length = getEditUsername().getText().toString().length();
        return 1 <= length && 50 >= length;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    protected void submit() {
        getProgressDialog().setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.master.home.profile.EditUsernameFragment.submit.1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                EditUsernameFragment.this.getPostHelper().cancel();
            }
        });
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        StringBuilder sb = new StringBuilder();
        sb.append("/user-profile/");
        AccountService accountService = this.accountService;
        if (accountService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
        sb.append(accountService.getUserId());
        ApiRequest.Builder builderGlobal = builderPost.path(sb.toString()).global();
        getPostHelper().setPostListener(this);
        savePost();
        PostHelper postHelper = getPostHelper();
        UsernamePost usernamePost = this.post;
        if (usernamePost != null) {
            postHelper.startPost(usernamePost, builderGlobal.build(), UserResponse.class);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
            throw null;
        }
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    protected void updateView() {
        super.updateView();
        int length = getEditUsername().getText().length();
        getInputHint().setText(length + "/50");
    }

    private final void savePost() {
        UsernamePost usernamePost = this.post;
        if (usernamePost != null) {
            usernamePost.nickname = getEditUsername().getText().toString();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
            throw null;
        }
    }

    @Override // com.narvii.post.PostListener
    public void onPostStart(PostHelper postHelper) {
        try {
            getProgressDialog().show();
        } catch (Exception e) {
            Log.e("fail to show progress dialog", e);
        }
    }

    @Override // com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        User user;
        if ((apiResponse instanceof UserResponse) && (user = ((UserResponse) apiResponse).user) != null) {
            AccountService accountService = this.accountService;
            if (accountService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
            accountService.updateProfile(user, apiResponse.timestamp, 0, true, true);
        }
        if (isDestoryed()) {
            return;
        }
        getProgressDialog().dismiss();
        finish();
    }

    @Override // com.narvii.post.PostListener
    public void onPostFail(PostHelper postHelper, int i, String str, Throwable th) {
        if (isDestoryed()) {
            return;
        }
        getProgressDialog().dismiss();
        NVToast.makeText(getContext(), str, 1).show();
    }

    /* compiled from: EditUsernameFragment.kt */
    public static final class UsernamePost extends UserProfilePost {
        public UsernamePost() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UsernamePost(User user) {
            super(user);
            Intrinsics.checkParameterIsNotNull(user, "user");
        }

        @Override // com.narvii.user.profile.post.UserProfilePost, com.narvii.post.PostObject
        public ObjectNode postBody(NVContext nVContext) {
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put("nickname", this.nickname);
            Intrinsics.checkExpressionValueIsNotNull(objectNodeCreateObjectNode, "JacksonUtils.createObjec…, nickname)\n            }");
            return objectNodeCreateObjectNode;
        }
    }

    private final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.master.home.profile.EditUsernameFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = EditUsernameFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }
}

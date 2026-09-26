package com.narvii.master.home.profile;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.IdRes;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class EditUsernameFragment extends BaseSingleEditFragment implements PostListener {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MAX_LENGTH = 50;
    public AccountService accountService;
    public UsernamePost post;

    @NotNull
    private final w7.m editUsername$delegate = bind(R.id.edit_username);

    @NotNull
    private final w7.m editDelete$delegate = bind(R.id.edit_delete);

    @NotNull
    private final w7.m inputHint$delegate = bind(R.id.input_hint);

    @NotNull
    private final w7.m postHelper$delegate = w7.o.a(new EditUsernameFragment$postHelper$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Intent intent(@NotNull User user) {
            kotlin.jvm.internal.t.j(user, "user");
            Intent intent = FragmentWrapperActivity.intent(EditUsernameFragment.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UsernamePost(user)));
            kotlin.jvm.internal.t.i(intent, "apply(...)");
            return intent;
        }
    }

    public static final class UsernamePost extends UserProfilePost {
        public UsernamePost() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UsernamePost(@NotNull User user) {
            super(user);
            kotlin.jvm.internal.t.j(user, "user");
        }

        @Override // com.narvii.user.profile.post.UserProfilePost, com.narvii.post.PostObject
        @NotNull
        public ObjectNode postBody(@Nullable NVContext nVContext) {
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put("nickname", this.nickname);
            kotlin.jvm.internal.t.i(objectNodeCreateObjectNode, "apply(...)");
            return objectNodeCreateObjectNode;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.master.home.profile.EditUsernameFragment$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends kotlin.jvm.internal.v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View view = EditUsernameFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.master.home.profile.EditUsernameFragment.bind");
            return viewFindViewById;
        }
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public int layoutId() {
        return R.layout.fragment_edit_username;
    }

    @Override // com.narvii.post.PostListener
    public void onPostProgress(@Nullable PostHelper postHelper, int i10, int i11) {
    }

    public final void setAccountService(@NotNull AccountService accountService) {
        kotlin.jvm.internal.t.j(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final void setPost(@NotNull UsernamePost usernamePost) {
        kotlin.jvm.internal.t.j(usernamePost, "<set-?>");
        this.post = usernamePost;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public int title() {
        return R.string.edit_username;
    }

    private final <T extends View> w7.m<T> bind(@IdRes int i10) {
        return w7.o.b(w7.q.NONE, new AnonymousClass1(i10));
    }

    private final ImageView getEditDelete() {
        return (ImageView) this.editDelete$delegate.getValue();
    }

    private final EditText getEditUsername() {
        return (EditText) this.editUsername$delegate.getValue();
    }

    private final TextView getInputHint() {
        return (TextView) this.inputHint$delegate.getValue();
    }

    private final PostHelper getPostHelper() {
        return (PostHelper) this.postHelper$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(EditUsernameFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.getEditUsername().setText((CharSequence) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void submit$lambda$1(EditUsernameFragment this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.getPostHelper().cancel();
    }

    @NotNull
    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        kotlin.jvm.internal.t.B("accountService");
        return null;
    }

    @NotNull
    public final UsernamePost getPost() {
        UsernamePost usernamePost = this.post;
        if (usernamePost != null) {
            return usernamePost;
        }
        kotlin.jvm.internal.t.B(Module.MODULE_POSTS);
        return null;
    }

    @Override // com.narvii.post.PostListener
    public void onPostFinished(@Nullable PostHelper postHelper, @Nullable ApiResponse apiResponse) {
        UserResponse userResponse;
        User user;
        if ((apiResponse instanceof UserResponse) && (user = (userResponse = (UserResponse) apiResponse).user) != null) {
            getAccountService().updateProfile(user, userResponse.timestamp, 0, true, true);
        }
        if (isDestoryed()) {
            return;
        }
        getProgressDialog().dismiss();
        finish();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        observeTextChanged(getEditUsername());
        getEditDelete().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditUsernameFragment.onViewCreated$lambda$0(this.f2350a, view2);
            }
        });
        getEditUsername().setText(getPost().nickname);
    }

    private final void savePost() {
        getPost().nickname = getEditUsername().getText().toString();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("account");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        setAccountService((AccountService) service);
        UsernamePost usernamePost = (UsernamePost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), UsernamePost.class);
        if (usernamePost == null) {
            User userProfile = getAccountService().getUserProfile();
            kotlin.jvm.internal.t.i(userProfile, "getUserProfile(...)");
            usernamePost = new UsernamePost(userProfile);
        }
        setPost(usernamePost);
    }

    @Override // com.narvii.post.PostListener
    public void onPostFail(@Nullable PostHelper postHelper, int i10, @Nullable String str, @Nullable Throwable th) {
        if (isDestoryed()) {
            return;
        }
        getProgressDialog().dismiss();
        NVToast.makeText(getContext(), str, 1).show();
    }

    @Override // com.narvii.post.PostListener
    public void onPostStart(@Nullable PostHelper postHelper) {
        try {
            getProgressDialog().show();
        } catch (Exception e) {
            Log.e("fail to show progress dialog", e);
        }
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public boolean passValidate() {
        int length = getEditUsername().getText().toString().length();
        if (1 > length || length >= 51) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    protected void submit() {
        getProgressDialog().setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.master.home.profile.e
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                EditUsernameFragment.submit$lambda$1(this.f2354a, dialogInterface);
            }
        });
        ApiRequest.Builder builderGlobal = ApiRequest.builder().post().path("/user-profile/" + getAccountService().getUserId()).global();
        getPostHelper().setPostListener(this);
        savePost();
        getPostHelper().startPost(getPost(), builderGlobal.build(), UserResponse.class);
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    protected void updateView() {
        super.updateView();
        int length = getEditUsername().getText().length();
        getInputHint().setText(length + "/50");
    }
}

package com.narvii.user.profile.post;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.Module;
import com.narvii.post.BasePostActivity;
import com.narvii.post.PostHelper;
import com.narvii.user.profile.BioDetailFragment;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.IMGUtils;
import com.narvii.widget.EditTextLink;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlobalBioPostActivity.kt */
/* loaded from: classes3.dex */
public final class GlobalBioPostActivity extends BasePostActivity<UserProfilePost> {
    private static final int BIO_MAX_CHARACTER = 500;
    private static final int BIO_MAX_LINE = 20;

    @Deprecated
    public static final Companion Companion = new Companion(null);
    private static final int INSERT_IMG = 8;
    private HashMap _$_findViewCache;
    private AccountService accountService;
    private EditTextLink editContent;
    private TextView inputHint;
    private File photoDir;
    private UserProfilePost post;
    private boolean supportImage;

    @Override // com.narvii.app.theme.NVThemeActivity
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeActivity
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

    @Override // com.narvii.app.theme.NVThemeActivity
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return true;
    }

    public static final /* synthetic */ EditTextLink access$getEditContent$p(GlobalBioPostActivity globalBioPostActivity) {
        EditTextLink editTextLink = globalBioPostActivity.editContent;
        if (editTextLink != null) {
            return editTextLink;
        }
        Intrinsics.throwUninitializedPropertyAccessException("editContent");
        throw null;
    }

    public static final /* synthetic */ TextView access$getInputHint$p(GlobalBioPostActivity globalBioPostActivity) {
        TextView textView = globalBioPostActivity.inputHint;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("inputHint");
        throw null;
    }

    /* compiled from: GlobalBioPostActivity.kt */
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setContentView(R.layout.global_bio_post_layout);
        AndroidBug5497Workaround.assistActivity(this);
        Object service = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"account\")");
        this.accountService = (AccountService) service;
        Context context = getContext();
        if (context != null) {
            this.photoDir = new File(context.getFilesDir(), "photo");
            File file = this.photoDir;
            if (file == null) {
                Intrinsics.throwUninitializedPropertyAccessException("photoDir");
                throw null;
            }
            file.mkdirs();
            Object as = JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), UserProfilePost.class);
            Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…rProfilePost::class.java)");
            this.post = (UserProfilePost) as;
            this.supportImage = getBooleanParam("supportImage", false);
            View viewFindViewById = findViewById(R.id.content);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.content)");
            this.editContent = (EditTextLink) viewFindViewById;
            View viewFindViewById2 = findViewById(R.id.input_hint);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.input_hint)");
            this.inputHint = (TextView) viewFindViewById2;
            setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
            setTitle(R.string.edit_bio);
            EditTextLink editTextLink = this.editContent;
            if (editTextLink == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editContent");
                throw null;
            }
            editTextLink.addTextChangedListener(new TextWatcher() { // from class: com.narvii.user.profile.post.GlobalBioPostActivity.onCreate.1
                private String text;

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    int length = GlobalBioPostActivity.access$getEditContent$p(GlobalBioPostActivity.this).length();
                    int lineCount = GlobalBioPostActivity.access$getEditContent$p(GlobalBioPostActivity.this).getLineCount();
                    GlobalBioPostActivity.access$getInputHint$p(GlobalBioPostActivity.this).setText(length + "/500");
                    Companion unused = GlobalBioPostActivity.Companion;
                    if (lineCount <= 20) {
                        Companion unused2 = GlobalBioPostActivity.Companion;
                        if (length <= 500) {
                            return;
                        }
                    }
                    String str = this.text;
                    int length2 = str != null ? str.length() : 0;
                    Companion unused3 = GlobalBioPostActivity.Companion;
                    if (length > 500) {
                        Companion unused4 = GlobalBioPostActivity.Companion;
                        if (length2 < 500) {
                            Editable text = GlobalBioPostActivity.access$getEditContent$p(GlobalBioPostActivity.this).getText();
                            Intrinsics.checkExpressionValueIsNotNull(text, "editContent.text");
                            Companion unused5 = GlobalBioPostActivity.Companion;
                            this.text = text.subSequence(0, 500).toString();
                        }
                    }
                    String str2 = this.text;
                    if ((str2 != null ? str2.length() : 0) < (editable != null ? editable.length() : 0)) {
                        GlobalBioPostActivity.access$getEditContent$p(GlobalBioPostActivity.this).setText(this.text);
                        GlobalBioPostActivity.access$getEditContent$p(GlobalBioPostActivity.this).setSelection(GlobalBioPostActivity.access$getEditContent$p(GlobalBioPostActivity.this).length());
                    }
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    this.text = String.valueOf(charSequence);
                }
            });
            EditTextLink editTextLink2 = this.editContent;
            if (editTextLink2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editContent");
                throw null;
            }
            UserProfilePost userProfilePost = this.post;
            if (userProfilePost == null) {
                Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
                throw null;
            }
            editTextLink2.setText(userProfilePost.content);
            EditTextLink editTextLink3 = this.editContent;
            if (editTextLink3 != null) {
                editTextLink3.setOnKeyListener(new View.OnKeyListener() { // from class: com.narvii.user.profile.post.GlobalBioPostActivity.onCreate.2
                    @Override // android.view.View.OnKeyListener
                    public boolean onKey(View view, int i, KeyEvent keyEvent) {
                        if (i != 66 || keyEvent == null || keyEvent.getAction() != 0) {
                            return false;
                        }
                        int lineCount = GlobalBioPostActivity.access$getEditContent$p(GlobalBioPostActivity.this).getLineCount();
                        Companion unused = GlobalBioPostActivity.Companion;
                        return lineCount >= 20;
                    }
                });
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("editContent");
                throw null;
            }
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 8 && i2 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("refIdList");
            ArrayList listAs = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class);
            if (TextUtils.isEmpty(stringExtra) || listAs == null) {
                return;
            }
            UserProfilePost userProfilePostSavePost = savePost();
            userProfilePostSavePost.mediaList = listAs;
            this.post = userProfilePostSavePost;
            UserProfilePost userProfilePost = this.post;
            if (userProfilePost == null) {
                Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
                throw null;
            }
            updateView(userProfilePost);
            EditTextLink editTextLink = this.editContent;
            if (editTextLink != null) {
                IMGUtils.insertEditText(editTextLink, stringExtra);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("editContent");
                throw null;
            }
        }
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<UserProfilePost> postClazz() {
        return UserProfilePost.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public UserProfilePost savePost() {
        UserProfilePost userProfilePost = this.post;
        if (userProfilePost == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
            throw null;
        }
        EditTextLink editTextLink = this.editContent;
        if (editTextLink == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editContent");
            throw null;
        }
        userProfilePost.content = editTextLink.getText().toString();
        UserProfilePost userProfilePost2 = this.post;
        if (userProfilePost2 != null) {
            return userProfilePost2;
        }
        Intrinsics.throwUninitializedPropertyAccessException(Module.MODULE_POSTS);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(UserProfilePost userProfilePost) {
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
        PostHelper postHelper = new PostHelper(this);
        postHelper.setPostListener(this);
        postHelper.startPost(savePost(), builderGlobal.build(), UserResponse.class);
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return this.supportImage;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPreview(UserProfilePost userProfilePost) {
        if (userProfilePost != null) {
            String stringParam = getStringParam("uid");
            User previewUser = userProfilePost.getPreviewUser(this, (User) JacksonUtils.readAs(getStringParam("userProfile"), User.class), stringParam);
            if (previewUser.id() == null) {
                AccountService accountService = this.accountService;
                if (accountService == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("accountService");
                    throw null;
                }
                if (!accountService.hasAccount()) {
                    return;
                }
                AccountService accountService2 = this.accountService;
                if (accountService2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("accountService");
                    throw null;
                }
                previewUser.uid = accountService2.getUserId();
            }
            Intent intent = FragmentWrapperActivity.intent(BioDetailFragment.class);
            intent.putExtra("id", stringParam);
            intent.putExtra("preview", true);
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(previewUser));
            intent.putExtra("Source", "Profile");
            startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void updateView(UserProfilePost userProfilePost) {
        super.updateView((GlobalBioPostActivity) userProfilePost);
        String str = userProfilePost != null ? userProfilePost.content : null;
        EditTextLink editTextLink = this.editContent;
        if (editTextLink == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editContent");
            throw null;
        }
        if (Utils.isEquals(str, editTextLink.getText().toString())) {
            return;
        }
        EditTextLink editTextLink2 = this.editContent;
        if (editTextLink2 != null) {
            editTextLink2.setText(userProfilePost != null ? userProfilePost.content : null);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("editContent");
            throw null;
        }
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
        super.onPostFinished(postHelper, apiResponse);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        SoftKeyboard.hideSoftKeyboard(this);
    }
}

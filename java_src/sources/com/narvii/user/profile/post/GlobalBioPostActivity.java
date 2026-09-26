package com.narvii.user.profile.post;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class GlobalBioPostActivity extends BasePostActivity<UserProfilePost> {
    private static final int BIO_MAX_CHARACTER = 500;
    private static final int BIO_MAX_LINE = 20;

    @NotNull
    private static final Companion Companion = new Companion(null);
    private static final int INSERT_IMG = 8;
    private AccountService accountService;
    private EditTextLink editContent;
    private TextView inputHint;
    private File photoDir;
    private UserProfilePost post;
    private boolean supportImage;

    private static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.theme.NVThemeActivity
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return true;
    }

    @Override // com.narvii.post.BasePostActivity
    @NotNull
    public Class<UserProfilePost> postClazz() {
        return UserProfilePost.class;
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return this.supportImage;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(@Nullable UserProfilePost userProfilePost) {
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        AccountService accountService = this.accountService;
        if (accountService == null) {
            t.B("accountService");
            accountService = null;
        }
        ApiRequest.Builder builderGlobal = builderPost.path("/user-profile/" + accountService.getUserId()).global();
        PostHelper postHelper = new PostHelper(this);
        postHelper.setPostListener(this);
        postHelper.startPost(savePost(), builderGlobal.build(), UserResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPreview(@Nullable UserProfilePost userProfilePost) {
        if (userProfilePost != null) {
            String stringParam = getStringParam("uid");
            User previewUser = userProfilePost.getPreviewUser(this, (User) JacksonUtils.readAs(getStringParam("userProfile"), User.class), stringParam);
            if (previewUser.id() == null) {
                AccountService accountService = this.accountService;
                AccountService accountService2 = null;
                if (accountService == null) {
                    t.B("accountService");
                    accountService = null;
                }
                if (!accountService.hasAccount()) {
                    return;
                }
                AccountService accountService3 = this.accountService;
                if (accountService3 == null) {
                    t.B("accountService");
                } else {
                    accountService2 = accountService3;
                }
                previewUser.uid = accountService2.getUserId();
            }
            Intent intent = FragmentWrapperActivity.intent(BioDetailFragment.class);
            intent.putExtra("id", stringParam);
            intent.putExtra("preview", true);
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(previewUser));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Profile");
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(@Nullable PostHelper postHelper, @Nullable ApiResponse apiResponse) {
        if (apiResponse instanceof UserResponse) {
            UserResponse userResponse = (UserResponse) apiResponse;
            User userObject = userResponse.object();
            AccountService accountService = this.accountService;
            if (accountService == null) {
                t.B("accountService");
                accountService = null;
            }
            accountService.updateProfile(userObject, userResponse.timestamp, true);
        }
        super.onPostFinished(postHelper, apiResponse);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    @NotNull
    public UserProfilePost savePost() {
        UserProfilePost userProfilePost = this.post;
        if (userProfilePost == null) {
            t.B(Module.MODULE_POSTS);
            userProfilePost = null;
        }
        EditTextLink editTextLink = this.editContent;
        if (editTextLink == null) {
            t.B("editContent");
            editTextLink = null;
        }
        userProfilePost.content = editTextLink.getText().toString();
        UserProfilePost userProfilePost2 = this.post;
        if (userProfilePost2 != null) {
            return userProfilePost2;
        }
        t.B(Module.MODULE_POSTS);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void updateView(@Nullable UserProfilePost userProfilePost) {
        super.updateView(userProfilePost);
        String str = userProfilePost != null ? userProfilePost.content : null;
        EditTextLink editTextLink = this.editContent;
        if (editTextLink == null) {
            t.B("editContent");
            editTextLink = null;
        }
        if (Utils.isEquals(str, editTextLink.getText().toString())) {
            return;
        }
        EditTextLink editTextLink2 = this.editContent;
        if (editTextLink2 == null) {
            t.B("editContent");
            editTextLink2 = null;
        }
        editTextLink2.setText(userProfilePost != null ? userProfilePost.content : null);
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 8 && i11 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("refIdList");
            ArrayList listAs = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class);
            if (!TextUtils.isEmpty(stringExtra) && listAs != null) {
                UserProfilePost userProfilePostSavePost = savePost();
                userProfilePostSavePost.mediaList = listAs;
                this.post = userProfilePostSavePost;
                updateView(userProfilePostSavePost);
                EditTextLink editTextLink = this.editContent;
                if (editTextLink == null) {
                    t.B("editContent");
                    editTextLink = null;
                }
                IMGUtils.insertEditText(editTextLink, stringExtra);
            }
        }
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        SoftKeyboard.hideSoftKeyboard(this);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.global_bio_post_layout);
        AndroidBug5497Workaround.assistActivity(this);
        Object service = getService("account");
        t.i(service, "getService(...)");
        this.accountService = (AccountService) service;
        Context context = getContext();
        t.g(context);
        File file = new File(context.getFilesDir(), "photo");
        this.photoDir = file;
        file.mkdirs();
        Object as = JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), UserProfilePost.class);
        t.i(as, "readAs(...)");
        this.post = (UserProfilePost) as;
        this.supportImage = getBooleanParam("supportImage", false);
        View viewFindViewById = findViewById(R.id.content);
        t.i(viewFindViewById, "findViewById(...)");
        this.editContent = (EditTextLink) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.input_hint);
        t.i(viewFindViewById2, "findViewById(...)");
        this.inputHint = (TextView) viewFindViewById2;
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setTitle(R.string.edit_bio);
        EditTextLink editTextLink = this.editContent;
        EditTextLink editTextLink2 = null;
        if (editTextLink == null) {
            t.B("editContent");
            editTextLink = null;
        }
        editTextLink.addTextChangedListener(new TextWatcher() { // from class: com.narvii.user.profile.post.GlobalBioPostActivity.onCreate.1

            @Nullable
            private String text;

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                EditTextLink editTextLink3 = GlobalBioPostActivity.this.editContent;
                EditTextLink editTextLink4 = null;
                if (editTextLink3 == null) {
                    t.B("editContent");
                    editTextLink3 = null;
                }
                int length = editTextLink3.length();
                EditTextLink editTextLink5 = GlobalBioPostActivity.this.editContent;
                if (editTextLink5 == null) {
                    t.B("editContent");
                    editTextLink5 = null;
                }
                int lineCount = editTextLink5.getLineCount();
                TextView textView = GlobalBioPostActivity.this.inputHint;
                if (textView == null) {
                    t.B("inputHint");
                    textView = null;
                }
                textView.setText(length + "/500");
                if (lineCount > 20 || length > 500) {
                    String str = this.text;
                    int length2 = str != null ? str.length() : 0;
                    if (length > 500 && length2 < 500) {
                        EditTextLink editTextLink6 = GlobalBioPostActivity.this.editContent;
                        if (editTextLink6 == null) {
                            t.B("editContent");
                            editTextLink6 = null;
                        }
                        Editable text = editTextLink6.getText();
                        t.i(text, "getText(...)");
                        this.text = text.subSequence(0, 500).toString();
                    }
                    String str2 = this.text;
                    if ((str2 != null ? str2.length() : 0) < (editable != null ? editable.length() : 0)) {
                        EditTextLink editTextLink7 = GlobalBioPostActivity.this.editContent;
                        if (editTextLink7 == null) {
                            t.B("editContent");
                            editTextLink7 = null;
                        }
                        editTextLink7.setText(this.text);
                        EditTextLink editTextLink8 = GlobalBioPostActivity.this.editContent;
                        if (editTextLink8 == null) {
                            t.B("editContent");
                            editTextLink8 = null;
                        }
                        EditTextLink editTextLink9 = GlobalBioPostActivity.this.editContent;
                        if (editTextLink9 == null) {
                            t.B("editContent");
                        } else {
                            editTextLink4 = editTextLink9;
                        }
                        editTextLink8.setSelection(editTextLink4.length());
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
                this.text = String.valueOf(charSequence);
            }
        });
        EditTextLink editTextLink3 = this.editContent;
        if (editTextLink3 == null) {
            t.B("editContent");
            editTextLink3 = null;
        }
        UserProfilePost userProfilePost = this.post;
        if (userProfilePost == null) {
            t.B(Module.MODULE_POSTS);
            userProfilePost = null;
        }
        editTextLink3.setText(userProfilePost.content);
        EditTextLink editTextLink4 = this.editContent;
        if (editTextLink4 == null) {
            t.B("editContent");
        } else {
            editTextLink2 = editTextLink4;
        }
        editTextLink2.setOnKeyListener(new View.OnKeyListener() { // from class: com.narvii.user.profile.post.GlobalBioPostActivity.onCreate.2
            @Override // android.view.View.OnKeyListener
            public boolean onKey(@Nullable View view, int i10, @Nullable KeyEvent keyEvent) {
                if (i10 != 66 || keyEvent == null || keyEvent.getAction() != 0) {
                    return false;
                }
                EditTextLink editTextLink5 = GlobalBioPostActivity.this.editContent;
                if (editTextLink5 == null) {
                    t.B("editContent");
                    editTextLink5 = null;
                }
                return editTextLink5.getLineCount() >= 20;
            }
        });
    }
}

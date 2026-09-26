package com.narvii.post;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.account.AccountService;
import com.narvii.app.NVActivity;
import com.narvii.influencer.FansOnlyPost;
import com.narvii.lib.R;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ObjectResponse;
import com.narvii.notification.Notification;
import com.narvii.post.PostObject;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressHorizontalDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.EditTextIMG;
import com.safedk.android.utils.Logger;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.bouncycastle.pqc.math.linearalgebra.h;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BasePostActivity<T extends PostObject> extends NVActivity implements PostListener, MediaPickerFragment.OnResultListener, MediaPickerFragment.OnPickColorResultListener {
    public static final int POST_FAIL_FANS_CLUB_CLOSED = 4801;
    private static final Pattern TYPEFACE_PATTERN = Pattern.compile("^((?:\\[[BCIUS]+\\])+).*$", 8);
    protected boolean discardDraft;
    protected MediaPickerFragment mediaPickerFragment;
    protected String ndcSubmitToken = null;
    protected ProgressHorizontalDialog progressDialog;

    public static class BaseImgCallback implements ActionMode.Callback {
        private boolean bold;
        private boolean center;
        protected final EditTextIMG editText;
        private boolean italic;
        private int paraMarkEnd;
        private int paraStart;
        private boolean strikethrough;
        private boolean underline;

        private Editable search() {
            this.paraStart = -1;
            this.paraMarkEnd = -1;
            this.bold = false;
            this.italic = false;
            this.center = false;
            this.underline = false;
            this.strikethrough = false;
            Editable editableText = this.editText.getEditableText();
            int selectionStart = this.editText.getSelectionStart();
            while (selectionStart > 0) {
                char cCharAt = editableText.charAt(selectionStart - 1);
                if (cCharAt == '\n' || cCharAt == '\r') {
                    break;
                }
                selectionStart--;
            }
            if (selectionStart < 0) {
                return null;
            }
            this.paraStart = selectionStart;
            Matcher matcher = BasePostActivity.TYPEFACE_PATTERN.matcher(editableText.subSequence(selectionStart, editableText.length()).toString());
            if (matcher.find() && matcher.start(1) == 0) {
                this.paraMarkEnd = selectionStart + matcher.end(1);
                String strGroup = matcher.group(1);
                this.bold = strGroup.indexOf(66) != -1;
                this.italic = strGroup.indexOf(73) != -1;
                this.center = strGroup.indexOf(67) != -1;
                this.underline = strGroup.indexOf(85) != -1;
                this.strikethrough = strGroup.indexOf(83) != -1;
            } else {
                this.paraMarkEnd = selectionStart;
            }
            return editableText;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
        }

        private String build(boolean z6, boolean z10, boolean z11, boolean z12, boolean z13) {
            if (!z6 && !z10 && !z11 && !z12 && !z13) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(kotlinx.serialization.json.internal.b.BEGIN_LIST);
            if (z6) {
                sb.append('B');
            }
            if (z10) {
                sb.append('I');
            }
            if (z11) {
                sb.append('C');
            }
            if (z12) {
                sb.append(h.MATRIX_TYPE_RANDOM_UT);
            }
            if (z13) {
                sb.append('S');
            }
            sb.append(kotlinx.serialization.json.internal.b.END_LIST);
            return sb.toString();
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            Context context = this.editText.getContext();
            int i10 = R.string.post_text_bold;
            menu.add(0, i10, 0, i10).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_bold), 0.6f, 0)).setShowAsAction(2);
            int i11 = R.string.post_text_italic;
            menu.add(0, i11, 0, i11).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_italic), 0.6f, 0)).setShowAsAction(2);
            int i12 = R.string.post_text_center;
            menu.add(0, i12, 0, i12).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_align_center), 0.64f, 0)).setShowAsAction(2);
            int i13 = R.string.post_text_underline;
            menu.add(0, i13, 0, i13).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_underline), 0.6f, 0)).setShowAsAction(1);
            int i14 = R.string.post_text_strikethrough;
            menu.add(0, i14, 0, i14).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_strikethrough), 0.6f, 0)).setShowAsAction(1);
            return true;
        }

        public BaseImgCallback(EditTextIMG editTextIMG) {
            this.editText = editTextIMG;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            String strBuild;
            int itemId = menuItem.getItemId();
            int i10 = R.string.post_text_bold;
            int i11 = 0;
            if (itemId != i10 && menuItem.getItemId() != R.string.post_text_italic && menuItem.getItemId() != R.string.post_text_center && menuItem.getItemId() != R.string.post_text_underline && menuItem.getItemId() != R.string.post_text_strikethrough) {
                return false;
            }
            Editable editableSearch = search();
            if (editableSearch != null && this.paraStart >= 0) {
                if (menuItem.getItemId() == i10) {
                    strBuild = build(!this.bold, this.italic, this.center, this.underline, this.strikethrough);
                } else if (menuItem.getItemId() == R.string.post_text_italic) {
                    strBuild = build(this.bold, !this.italic, this.center, this.underline, this.strikethrough);
                } else if (menuItem.getItemId() == R.string.post_text_center) {
                    strBuild = build(this.bold, this.italic, !this.center, this.underline, this.strikethrough);
                } else if (menuItem.getItemId() == R.string.post_text_underline) {
                    strBuild = build(this.bold, this.italic, this.center, !this.underline, this.strikethrough);
                } else if (menuItem.getItemId() == R.string.post_text_strikethrough) {
                    strBuild = build(this.bold, this.italic, this.center, this.underline, !this.strikethrough);
                } else {
                    strBuild = null;
                }
                int selectionStart = this.editText.getSelectionStart();
                int selectionEnd = this.editText.getSelectionEnd();
                editableSearch.replace(this.paraStart, this.paraMarkEnd, strBuild);
                int length = (this.paraStart - this.paraMarkEnd) + strBuild.length();
                int i12 = selectionStart + length;
                int i13 = selectionEnd + length;
                try {
                    EditTextIMG editTextIMG = this.editText;
                    if (i12 < 0) {
                        i12 = 0;
                    }
                    if (i13 >= 0) {
                        i11 = i13;
                    }
                    editTextIMG.setSelection(i12, i11);
                } catch (Exception unused) {
                }
            }
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            boolean z6;
            boolean z10;
            boolean z11;
            boolean z12;
            search();
            int i10 = R.string.post_text_bold;
            MenuItem menuItemFindItem = menu.findItem(i10);
            boolean z13 = false;
            if (this.paraStart >= 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            MenuItem visible = menuItemFindItem.setVisible(z6);
            if (this.bold) {
                i10 = R.string.post_text_unbold;
            }
            visible.setTitle(i10);
            int i11 = R.string.post_text_italic;
            MenuItem menuItemFindItem2 = menu.findItem(i11);
            if (this.paraStart >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            MenuItem visible2 = menuItemFindItem2.setVisible(z10);
            if (this.italic) {
                i11 = R.string.post_text_unitalic;
            }
            visible2.setTitle(i11);
            int i12 = R.string.post_text_center;
            MenuItem menuItemFindItem3 = menu.findItem(i12);
            if (this.paraStart >= 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            MenuItem visible3 = menuItemFindItem3.setVisible(z11);
            if (this.center) {
                i12 = R.string.post_text_uncenter;
            }
            visible3.setTitle(i12);
            int i13 = R.string.post_text_underline;
            MenuItem menuItemFindItem4 = menu.findItem(i13);
            if (this.paraStart >= 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            MenuItem visible4 = menuItemFindItem4.setVisible(z12);
            if (this.underline) {
                i13 = R.string.post_text_ununderline;
            }
            visible4.setTitle(i13);
            int i14 = R.string.post_text_strikethrough;
            MenuItem menuItemFindItem5 = menu.findItem(i14);
            if (this.paraStart >= 0) {
                z13 = true;
            }
            MenuItem visible5 = menuItemFindItem5.setVisible(z13);
            if (this.strikethrough) {
                i14 = R.string.post_text_unstrikethrough;
            }
            visible5.setTitle(i14);
            return true;
        }
    }

    public static class ClearErrorWatcher implements TextWatcher {
        TextView text;

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            Utils.post(new Runnable() { // from class: com.narvii.post.BasePostActivity.ClearErrorWatcher.1
                @Override // java.lang.Runnable
                public void run() {
                    ClearErrorWatcher.this.text.setError(null);
                    ClearErrorWatcher clearErrorWatcher = ClearErrorWatcher.this;
                    clearErrorWatcher.text.removeTextChangedListener(clearErrorWatcher);
                }
            });
        }

        public ClearErrorWatcher(TextView textView) {
            this.text = textView;
        }
    }

    public static class HideHintWatcher implements TextWatcher {
        private View hintView;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            this.hintView.setVisibility(TextUtils.isEmpty(charSequence) ? 0 : 8);
        }

        public HideHintWatcher(View view) {
            this.hintView = view;
        }
    }

    protected void checkEligible() {
    }

    protected String confirmationMessage(T t5) {
        return null;
    }

    protected void createSubmitButton(Menu menu) {
        int i10 = R.string.post_submit;
        menu.add(0, i10, 0, i10).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    protected abstract void doPost(T t5);

    protected void doPreview(T t5) {
    }

    protected int fanClubClosedHintStrId() {
        return R.string.fans_club_closed;
    }

    public abstract boolean isEdit();

    @Override // com.narvii.app.NVActivity
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    @Override // com.narvii.app.NVActivity
    protected boolean logPageViewEvent() {
        return true;
    }

    public void onPickColorResult(int i10, Bundle bundle) {
    }

    public void onPickMediaResult(List<Media> list, Bundle bundle) {
    }

    public abstract Class<T> postClazz();

    protected abstract T savePost();

    protected void showAlert(int i10) {
        showAlert(getString(i10));
    }

    protected boolean showSubmitButton() {
        return true;
    }

    protected boolean supportPreview() {
        return false;
    }

    protected void trimMediaList(List<Media> list, int i10, int i11) {
        boolean z6 = false;
        while (list.size() > i10) {
            list.remove(list.size() - 1);
            z6 = true;
        }
        if (z6) {
            NVToast.makeText(getContext(), getString(i11, Integer.valueOf(i10)), 0).show();
        }
    }

    protected void updateView(T t5) {
    }

    protected boolean validateMediaListMax(List<Media> list, int i10, int i11) {
        if (list == null || list.size() <= i10) {
            return true;
        }
        showAlert(getString(i11, Integer.valueOf(i10)));
        return false;
    }

    protected boolean validateUpload(T t5) {
        return true;
    }

    protected boolean checkActivation() {
        AccountService accountService = (AccountService) getService("account");
        if (!accountService.hasAccount() || accountService.hasActivation()) {
            return true;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.post_not_eligible);
        builder.setMessage(R.string.post_activate_account_first);
        builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.setPositiveButton(R.string.post_activate_account, new DialogInterface.OnClickListener() { // from class: com.narvii.post.BasePostActivity.6
            public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                dialogInterface.cancel();
                safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(BasePostActivity.this, new Intent("android.intent.action.VIEW", Uri.parse("ndc://activation")));
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.post.BasePostActivity.7
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                BasePostActivity basePostActivity = BasePostActivity.this;
                basePostActivity.discardDraft = true;
                basePostActivity.finish();
            }
        });
        builder.show();
        return false;
    }

    protected void checkEligible(String str, String str2) {
        AccountService accountService = (AccountService) getService("account");
        ApiRequest.Builder builderParam = ApiRequest.builder().path("user-profile/" + accountService.getUserId() + "/compose-eligible-check").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, str);
        if (!TextUtils.isEmpty(str2)) {
            builderParam.param("objectSubtype", str2);
        }
        builderParam.userInteraction();
        ((ApiService) getService("api")).exec(builderParam.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.post.BasePostActivity.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                if ((i10 != 238 || BasePostActivity.this.checkActivation()) && i10 != 0 && ApiService.shouldShowErrMessage(BasePostActivity.this)) {
                    BasePostActivity.this.eligibleFail(str3);
                }
            }
        });
    }

    protected void createPreviewOption(Menu menu) {
        int i10 = R.string.compose_preview;
        menu.add(0, i10, 0, i10).setIcon(new ActionBarIcon(getContext(), getString(R.string.ion_eye), 0.85f, 0)).setShowAsAction(2);
    }

    protected void eligibleFail(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str);
        builder.setNegativeButton(R.string.close, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.post.BasePostActivity.5
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                BasePostActivity basePostActivity = BasePostActivity.this;
                basePostActivity.discardDraft = true;
                basePostActivity.finish();
            }
        });
        builder.show();
    }

    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        Community community;
        NVObject nVObjectObject;
        Intent intent = new Intent();
        if ((apiResponse instanceof ObjectResponse) && (nVObjectObject = ((ObjectResponse) apiResponse).object()) != null) {
            intent.putExtra("object", JacksonUtils.writeAsString(nVObjectObject));
            sendNotification(apiResponse, nVObjectObject);
        }
        if (isDestoryed()) {
            return;
        }
        if (getStringParam(SearchPrefsHelper.PREFS_KEY_COMMUNITY) != null && (community = (Community) JacksonUtils.readAs(getStringParam(SearchPrefsHelper.PREFS_KEY_COMMUNITY), Community.class)) != null) {
            intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, community.id);
        }
        setResult(-1, intent);
        ProgressHorizontalDialog progressHorizontalDialog = this.progressDialog;
        if (progressHorizontalDialog != null && progressHorizontalDialog.isShowing()) {
            this.progressDialog.dismiss();
        }
        finish();
    }

    @Override // com.narvii.post.PostListener
    public void onPostStart(final PostHelper postHelper) {
        ProgressHorizontalDialog progressHorizontalDialog = new ProgressHorizontalDialog(this);
        this.progressDialog = progressHorizontalDialog;
        progressHorizontalDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.post.BasePostActivity.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                postHelper.cancel();
            }
        });
        try {
            this.progressDialog.show();
        } catch (Exception e) {
            Log.e("fail to show progress dialog", e);
        }
    }

    protected void showAlert(String str) {
        new AlertDialog.Builder(getContext()).setMessage(str).setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER).show();
    }

    protected void showErrorMsg(int i10, String str) {
        if (i10 == 230) {
            return;
        }
        if (i10 <= 0 || !ApiService.shouldShowErrMessage(this)) {
            NVToast.makeText(this, str, 0).show();
        } else {
            new AlertDialog.Builder(this).setTitle(String.valueOf(i10)).setMessage(str).setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER).show();
        }
    }

    protected boolean validateMediaListNotEmpty(List<Media> list, int i10) {
        if (list != null && list.size() != 0) {
            return true;
        }
        showAlert(getString(i10));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLoginResult$0() {
        if (!isEdit()) {
            checkEligible();
        }
    }

    protected String getNdcSubmitToken() {
        if (!isEdit() && this.ndcSubmitToken == null) {
            this.ndcSubmitToken = UUID.randomUUID().toString();
        }
        return this.ndcSubmitToken;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        if (bundle == null) {
            string = null;
        } else {
            string = bundle.getString("ndcSubmitToken");
        }
        this.ndcSubmitToken = string;
        MediaPickerFragment mediaPickerFragment = (MediaPickerFragment) getSupportFragmentManager().m0("mediaPicker");
        this.mediaPickerFragment = mediaPickerFragment;
        if (mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getSupportFragmentManager().q().e(this.mediaPickerFragment, "mediaPicker").j();
        }
        this.mediaPickerFragment.addOnResultListener(this);
        this.mediaPickerFragment.pickColorResultListener = this;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (supportPreview()) {
            createPreviewOption(menu);
        }
        if (showSubmitButton()) {
            createSubmitButton(menu);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.app.NVActivity
    protected void onLoginResult(boolean z6, Intent intent) {
        if (CommunityDetailFragment.KEY_LOGIN_AHEAD.equals(intent.getAction())) {
            if (z6) {
                Utils.post(new Runnable() { // from class: com.narvii.post.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f2590a.lambda$onLoginResult$0();
                    }
                });
                return;
            } else {
                this.discardDraft = true;
                finish();
                return;
            }
        }
        super.onLoginResult(z6, intent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.post_submit) {
            startPost();
            return true;
        }
        if (menuItem.getItemId() == R.string.compose_preview) {
            startPreview();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ensureLogin(new Intent(CommunityDetailFragment.KEY_LOGIN_AHEAD));
    }

    public void onPostFail(final PostHelper postHelper, int i10, String str, Throwable th) {
        if (isDestoryed()) {
            return;
        }
        ProgressHorizontalDialog progressHorizontalDialog = this.progressDialog;
        if (progressHorizontalDialog != null && progressHorizontalDialog.isShowing()) {
            this.progressDialog.dismiss();
        }
        if ((postHelper.post instanceof FansOnlyPost) && i10 == 4801) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(fanClubClosedHintStrId());
            aCMAlertDialog.addButton(R.string.cancel, null);
            aCMAlertDialog.addButton(R.string.post_submit, new View.OnClickListener() { // from class: com.narvii.post.BasePostActivity.3
                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PostObject postObject = postHelper.post;
                    if (postObject instanceof FansOnlyPost) {
                        ((FansOnlyPost) postObject).setFansOnly(false);
                    }
                    BasePostActivity.this.doPost(postObject);
                }
            });
            aCMAlertDialog.show();
            return;
        }
        showErrorMsg(i10, str);
    }

    @Override // com.narvii.post.PostListener
    public void onPostProgress(PostHelper postHelper, int i10, int i11) {
        ProgressHorizontalDialog progressHorizontalDialog;
        if (!isDestoryed() && (progressHorizontalDialog = this.progressDialog) != null && progressHorizontalDialog.isShowing()) {
            this.progressDialog.setProgress(i10, i11);
        }
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("ndcSubmitToken", this.ndcSubmitToken);
    }

    protected void sendNotification(ApiResponse apiResponse, NVObject nVObject) {
        String str;
        if (isEdit()) {
            str = "edit";
        } else {
            str = "new";
        }
        Notification notification = new Notification(str, nVObject);
        notification.response = apiResponse;
        NotificationUtils.sendNotificationIncludeGlobal(this, notification);
    }

    public void startPost() {
        SoftKeyboard.hideSoftKeyboard(this);
        final PostObject postObjectSavePost = savePost();
        if (validateUpload(postObjectSavePost)) {
            String strConfirmationMessage = confirmationMessage(postObjectSavePost);
            if (TextUtils.isEmpty(strConfirmationMessage)) {
                doPost(postObjectSavePost);
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setMessage(strConfirmationMessage);
            builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder.setPositiveButton(R.string.continue_, new DialogInterface.OnClickListener() { // from class: com.narvii.post.BasePostActivity.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    BasePostActivity.this.doPost(postObjectSavePost);
                }
            });
            builder.show();
        }
    }

    protected void startPreview() {
        SoftKeyboard.hideSoftKeyboard(this);
        PostObject postObjectSavePost = savePost();
        if (validateUpload(postObjectSavePost)) {
            doPreview(postObjectSavePost);
            ((StatisticsService) getService("statistics")).event("Preview Post").userPropInc("Preview Post Total");
            FirebaseAnalytics.getInstance(this).a("select_post", null);
        }
    }

    protected boolean validateEditTextMax(EditText editText, int i10, int i11) {
        String string = editText.getText().toString();
        if (string.length() <= i10) {
            return true;
        }
        editText.requestFocus();
        showAlert(getString(i11, Integer.valueOf(i10), Integer.valueOf(string.length())));
        return false;
    }

    protected boolean validateEditTextNotEmpty(EditText editText, int i10) {
        if (editText.getText().toString().trim().replaceAll("\\u200D", "").length() == 0) {
            editText.requestFocus();
            editText.setError(getString(i10));
            editText.addTextChangedListener(new ClearErrorWatcher(editText));
            return false;
        }
        return true;
    }
}

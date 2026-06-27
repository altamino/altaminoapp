package com.narvii.post;

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
import com.narvii.account.AccountService;
import com.narvii.app.NVActivity;
import com.narvii.influencer.FansOnlyPost;
import com.narvii.lib.R;
import com.narvii.master.CommunityDetailFragment;
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
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.EditTextIMG;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public abstract class BasePostActivity<T extends PostObject> extends NVActivity implements PostListener, MediaPickerFragment.OnResultListener, MediaPickerFragment.OnPickColorResultListener {
    public static final int POST_FAIL_FANS_CLUB_CLOSED = 4801;
    private static final Pattern TYPEFACE_PATTERN = Pattern.compile("^((?:\\[[BCIUS]+\\])+).*$", 8);
    protected boolean discardDraft;
    protected MediaPickerFragment mediaPickerFragment;
    protected String ndcSubmitToken = null;
    protected ProgressHorizontalDialog progressDialog;

    protected void checkEligible() {
    }

    protected String confirmationMessage(T t) {
        return null;
    }

    protected abstract void doPost(T t);

    protected void doPreview(T t) {
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

    public void onPickColorResult(int i, Bundle bundle) {
    }

    public void onPickMediaResult(List<Media> list, Bundle bundle) {
    }

    public abstract Class<T> postClazz();

    protected abstract T savePost();

    protected boolean showSubmitButton() {
        return true;
    }

    protected boolean supportPreview() {
        return false;
    }

    protected void updateView(T t) {
    }

    protected boolean validateUpload(T t) {
        return true;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        this.ndcSubmitToken = bundle == null ? null : bundle.getString("ndcSubmitToken");
        this.mediaPickerFragment = (MediaPickerFragment) getSupportFragmentManager().findFragmentByTag("mediaPicker");
        if (this.mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getSupportFragmentManager().beginTransaction().add(this.mediaPickerFragment, "mediaPicker").commit();
        }
        this.mediaPickerFragment.addOnResultListener(this);
        this.mediaPickerFragment.pickColorResultListener = this;
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("ndcSubmitToken", this.ndcSubmitToken);
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ensureLogin(new Intent(CommunityDetailFragment.KEY_LOGIN_AHEAD));
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
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

    protected void createPreviewOption(Menu menu) {
        int i = R.string.compose_preview;
        menu.add(0, i, 0, i).setIcon(new ActionBarIcon(getContext(), getString(R.string.ion_eye), 0.85f, 0)).setShowAsAction(2);
    }

    protected void createSubmitButton(Menu menu) {
        int i = R.string.post_submit;
        menu.add(0, i, 0, i).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
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

    protected void startPreview() {
        SoftKeyboard.hideSoftKeyboard(this);
        PostObject postObjectSavePost = savePost();
        if (validateUpload(postObjectSavePost)) {
            doPreview(postObjectSavePost);
        }
    }

    @Override // com.narvii.app.NVActivity
    protected void onLoginResult(boolean z, Intent intent) {
        if (!CommunityDetailFragment.KEY_LOGIN_AHEAD.equals(intent.getAction())) {
            super.onLoginResult(z, intent);
        } else if (z) {
            Utils.post(new Runnable() { // from class: com.narvii.post.-$$Lambda$BasePostActivity$SzlyTxUIoYjzb8xju6SbFkX-RwM
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onLoginResult$0$BasePostActivity();
                }
            });
        } else {
            this.discardDraft = true;
            finish();
        }
    }

    public /* synthetic */ void lambda$onLoginResult$0$BasePostActivity() {
        if (isEdit()) {
            return;
        }
        checkEligible();
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
                public void onClick(DialogInterface dialogInterface, int i) {
                    BasePostActivity.this.doPost(postObjectSavePost);
                }
            });
            builder.show();
        }
    }

    protected String getNdcSubmitToken() {
        if (!isEdit() && this.ndcSubmitToken == null) {
            this.ndcSubmitToken = UUID.randomUUID().toString();
        }
        return this.ndcSubmitToken;
    }

    @Override // com.narvii.post.PostListener
    public void onPostStart(final PostHelper postHelper) {
        this.progressDialog = new ProgressHorizontalDialog(this);
        this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.post.BasePostActivity.2
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

    @Override // com.narvii.post.PostListener
    public void onPostProgress(PostHelper postHelper, int i, int i2) {
        ProgressHorizontalDialog progressHorizontalDialog;
        if (isDestoryed() || (progressHorizontalDialog = this.progressDialog) == null || !progressHorizontalDialog.isShowing()) {
            return;
        }
        this.progressDialog.setProgress(i, i2);
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
        if (getStringParam("community") != null && (community = (Community) JacksonUtils.readAs(getStringParam("community"), Community.class)) != null) {
            intent.putExtra("cid", community.id);
        }
        setResult(-1, intent);
        ProgressHorizontalDialog progressHorizontalDialog = this.progressDialog;
        if (progressHorizontalDialog != null && progressHorizontalDialog.isShowing()) {
            this.progressDialog.dismiss();
        }
        finish();
    }

    protected void sendNotification(ApiResponse apiResponse, NVObject nVObject) {
        Notification notification = new Notification(isEdit() ? "edit" : "new", nVObject);
        notification.response = apiResponse;
        NotificationUtils.sendNotificationIncludeGlobal(this, notification);
    }

    public void onPostFail(final PostHelper postHelper, int i, String str, Throwable th) {
        if (isDestoryed()) {
            return;
        }
        ProgressHorizontalDialog progressHorizontalDialog = this.progressDialog;
        if (progressHorizontalDialog != null && progressHorizontalDialog.isShowing()) {
            this.progressDialog.dismiss();
        }
        if ((postHelper.post instanceof FansOnlyPost) && i == 4801) {
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
        showErrorMsg(i, str);
    }

    protected int fanClubClosedHintStrId() {
        return R.string.fans_club_closed;
    }

    protected void showErrorMsg(int i, String str) {
        if (i == 230) {
            return;
        }
        if (i > 0 && ApiService.shouldShowErrMessage(this)) {
            new AlertDialog.Builder(this).setTitle(String.valueOf(i)).setMessage(str).setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER).show();
        } else {
            NVToast.makeText(this, str, 0).show();
        }
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
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                if ((i != 238 || BasePostActivity.this.checkActivation()) && i != 0 && ApiService.shouldShowErrMessage(BasePostActivity.this)) {
                    BasePostActivity.this.eligibleFail(str3);
                }
            }
        });
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
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
                BasePostActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://activation")));
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

    protected void trimMediaList(List<Media> list, int i, int i2) {
        boolean z = false;
        while (list.size() > i) {
            list.remove(list.size() - 1);
            z = true;
        }
        if (z) {
            NVToast.makeText(getContext(), getString(i2, new Object[]{Integer.valueOf(i)}), 0).show();
        }
    }

    protected void showAlert(int i) {
        showAlert(getString(i));
    }

    protected void showAlert(String str) {
        new AlertDialog.Builder(getContext()).setMessage(str).setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER).show();
    }

    protected boolean validateEditTextNotEmpty(EditText editText, int i) {
        if (editText.getText().toString().trim().replaceAll("\\u200D", "").length() != 0) {
            return true;
        }
        editText.requestFocus();
        editText.setError(getString(i));
        editText.addTextChangedListener(new ClearErrorWatcher(editText));
        return false;
    }

    protected boolean validateEditTextMax(EditText editText, int i, int i2) {
        String string = editText.getText().toString();
        if (string.length() <= i) {
            return true;
        }
        editText.requestFocus();
        showAlert(getString(i2, new Object[]{Integer.valueOf(i), Integer.valueOf(string.length())}));
        return false;
    }

    protected boolean validateMediaListNotEmpty(List<Media> list, int i) {
        if (list != null && list.size() != 0) {
            return true;
        }
        showAlert(getString(i));
        return false;
    }

    protected boolean validateMediaListMax(List<Media> list, int i, int i2) {
        if (list == null || list.size() <= i) {
            return true;
        }
        showAlert(getString(i2, new Object[]{Integer.valueOf(i)}));
        return false;
    }

    public static class HideHintWatcher implements TextWatcher {
        private View hintView;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public HideHintWatcher(View view) {
            this.hintView = view;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.hintView.setVisibility(TextUtils.isEmpty(charSequence) ? 0 : 8);
        }
    }

    public static class ClearErrorWatcher implements TextWatcher {
        TextView text;

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public ClearErrorWatcher(TextView textView) {
            this.text = textView;
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
    }

    public static class BaseImgCallback implements ActionMode.Callback {
        private boolean bold;
        private boolean center;
        protected final EditTextIMG editText;
        private boolean italic;
        private int paraMarkEnd;
        private int paraStart;
        private boolean strikethrough;
        private boolean underline;

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
        }

        public BaseImgCallback(EditTextIMG editTextIMG) {
            this.editText = editTextIMG;
        }

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
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            Context context = this.editText.getContext();
            int i = R.string.post_text_bold;
            menu.add(0, i, 0, i).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_bold), 0.6f, 0)).setShowAsAction(2);
            int i2 = R.string.post_text_italic;
            menu.add(0, i2, 0, i2).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_italic), 0.6f, 0)).setShowAsAction(2);
            int i3 = R.string.post_text_center;
            menu.add(0, i3, 0, i3).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_align_center), 0.64f, 0)).setShowAsAction(2);
            int i4 = R.string.post_text_underline;
            menu.add(0, i4, 0, i4).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_underline), 0.6f, 0)).setShowAsAction(1);
            int i5 = R.string.post_text_strikethrough;
            menu.add(0, i5, 0, i5).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_strikethrough), 0.6f, 0)).setShowAsAction(1);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            search();
            menu.findItem(R.string.post_text_bold).setVisible(this.paraStart >= 0).setTitle(this.bold ? R.string.post_text_unbold : R.string.post_text_bold);
            menu.findItem(R.string.post_text_italic).setVisible(this.paraStart >= 0).setTitle(this.italic ? R.string.post_text_unitalic : R.string.post_text_italic);
            menu.findItem(R.string.post_text_center).setVisible(this.paraStart >= 0).setTitle(this.center ? R.string.post_text_uncenter : R.string.post_text_center);
            menu.findItem(R.string.post_text_underline).setVisible(this.paraStart >= 0).setTitle(this.underline ? R.string.post_text_ununderline : R.string.post_text_underline);
            menu.findItem(R.string.post_text_strikethrough).setVisible(this.paraStart >= 0).setTitle(this.strikethrough ? R.string.post_text_unstrikethrough : R.string.post_text_strikethrough);
            return true;
        }

        private String build(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
            if (!z && !z2 && !z3 && !z4 && !z5) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            if (z) {
                sb.append('B');
            }
            if (z2) {
                sb.append('I');
            }
            if (z3) {
                sb.append('C');
            }
            if (z4) {
                sb.append('U');
            }
            if (z5) {
                sb.append('S');
            }
            sb.append(']');
            return sb.toString();
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            String strBuild;
            if (menuItem.getItemId() != R.string.post_text_bold && menuItem.getItemId() != R.string.post_text_italic && menuItem.getItemId() != R.string.post_text_center && menuItem.getItemId() != R.string.post_text_underline && menuItem.getItemId() != R.string.post_text_strikethrough) {
                return false;
            }
            Editable editableSearch = search();
            if (editableSearch != null && this.paraStart >= 0) {
                if (menuItem.getItemId() == R.string.post_text_bold) {
                    strBuild = build(!this.bold, this.italic, this.center, this.underline, this.strikethrough);
                } else if (menuItem.getItemId() == R.string.post_text_italic) {
                    strBuild = build(this.bold, !this.italic, this.center, this.underline, this.strikethrough);
                } else if (menuItem.getItemId() == R.string.post_text_center) {
                    strBuild = build(this.bold, this.italic, !this.center, this.underline, this.strikethrough);
                } else if (menuItem.getItemId() == R.string.post_text_underline) {
                    strBuild = build(this.bold, this.italic, this.center, !this.underline, this.strikethrough);
                } else {
                    strBuild = menuItem.getItemId() == R.string.post_text_strikethrough ? build(this.bold, this.italic, this.center, this.underline, !this.strikethrough) : null;
                }
                int selectionStart = this.editText.getSelectionStart();
                int selectionEnd = this.editText.getSelectionEnd();
                editableSearch.replace(this.paraStart, this.paraMarkEnd, strBuild);
                int length = (this.paraStart - this.paraMarkEnd) + strBuild.length();
                int i = selectionStart + length;
                int i2 = length + selectionEnd;
                try {
                    EditTextIMG editTextIMG = this.editText;
                    if (i < 0) {
                        i = 0;
                    }
                    if (i2 < 0) {
                        i2 = 0;
                    }
                    editTextIMG.setSelection(i, i2);
                } catch (Exception unused) {
                }
            }
            return true;
        }
    }
}

package com.narvii.account;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.BaseNavigator;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.location.GPSCoordinate;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.photos.PhotoManager;
import com.narvii.photos.PhotoUploadListener;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.LinkTouchSpan;
import com.narvii.widget.ThumbImageView;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/* loaded from: classes2.dex */
public class SignUpAddProfileFragment extends AccountBaseFragment implements View.OnClickListener, MediaPickerFragment.OnResultListener, MediaPickerFragment.OnStartPickListener, FragmentOnBackListener, PhotoUploadListener {
    CheckBox agreeCheck;
    View agreeError;
    ThumbImageView avatar;
    View avatarClick;
    View avatarPlaceholder;
    View avatarPlaceholder2;
    String avatarUrl;
    String email;
    boolean newAccount;
    View nextView;
    EditText nickname;
    String nicknameText;
    String pass;
    PhotoManager photo;
    File photoDir;
    MediaPickerFragment picker;
    ApiRequest request;
    ScrollView scrollView;
    int step;
    private final AccountResponseListener signupListener = new AccountResponseListener(this) { // from class: com.narvii.account.SignUpAddProfileFragment.10
        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            super.onFinish(apiRequest, accountResponse);
            SignUpAddProfileFragment signUpAddProfileFragment = SignUpAddProfileFragment.this;
            signUpAddProfileFragment.newAccount = accountResponse.newAccount;
            signUpAddProfileFragment.request = null;
            signUpAddProfileFragment.proceed();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            SignUpAddProfileFragment.this.dismissProgress();
            SignUpAddProfileFragment signUpAddProfileFragment = SignUpAddProfileFragment.this;
            signUpAddProfileFragment.request = null;
            signUpAddProfileFragment.updateNextView();
            SignUpAddProfileFragment.this.finishWithResult(false, i, str);
            SignUpAddProfileFragment.this.getView().findViewById(R.id.actionbar_back).setVisibility(0);
            LoggingService loggingService = (LoggingService) SignUpAddProfileFragment.this.getService("logging");
            Object[] objArr = new Object[8];
            objArr[0] = "email";
            objArr[1] = SignUpAddProfileFragment.this.email;
            objArr[2] = "reason";
            objArr[3] = i == 0 ? "NetworkError" : null;
            objArr[4] = "code";
            objArr[5] = Integer.valueOf(i);
            objArr[6] = AccountNotice.LEVEL_MESSAGE;
            objArr[7] = str;
            loggingService.lambda$logEvent$0$LoggingServiceImpl("AccountError", objArr);
        }
    };
    private final ApiResponseListener<ApiResponse> updateListener = new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.SignUpAddProfileFragment.11
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            SignUpAddProfileFragment signUpAddProfileFragment = SignUpAddProfileFragment.this;
            signUpAddProfileFragment.request = null;
            signUpAddProfileFragment.dismissProgress();
            AccountService accountService = (AccountService) SignUpAddProfileFragment.this.getService("account");
            User userProfile = accountService.getUserProfile();
            SignUpAddProfileFragment signUpAddProfileFragment2 = SignUpAddProfileFragment.this;
            userProfile.icon = signUpAddProfileFragment2.photo.getUploadedUrl(signUpAddProfileFragment2.avatarUrl);
            accountService.updateProfile(userProfile, apiResponse.timestamp, 0, true, true);
            SignUpAddProfileFragment.this.goToAccountCreatedPage(new SignUpAccountCreatedFragment(), SignUpAddProfileFragment.this.newAccount);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            SignUpAddProfileFragment.this.dismissProgress();
            NVToast.makeText(SignUpAddProfileFragment.this.getContext(), SignUpAddProfileFragment.this.getContext().getString(R.string.account_avatar_missing, str), 1).show();
            SignUpAddProfileFragment.this.goToAccountCreatedPage(new SignUpAccountCreatedFragment(), SignUpAddProfileFragment.this.newAccount);
        }
    };

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "SignUpCreateProfile";
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean logSignUpMethod() {
        return true;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        return true;
    }

    @Override // com.narvii.photos.PhotoUploadListener
    public void onProgress(String str, int i, int i2) {
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.photo = (PhotoManager) getService("photo");
        this.photoDir = new File(new File(getContext().getFilesDir(), "photo"), "signup");
        if (bundle == null) {
            this.picker = new MediaPickerFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("folder", "signup");
            this.picker.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(this.picker, "mediaPicker").commitAllowingStateLoss();
            LoginActivity loginActivity = (LoginActivity) getActivity();
            loginActivity.statMaxLoginStep = 0;
            loginActivity.statMaxSignupSetp = 30;
        } else {
            this.picker = (MediaPickerFragment) getFragmentManager().findFragmentByTag("mediaPicker");
            this.avatarUrl = bundle.getString("avatar");
        }
        this.picker.addOnResultListener(this);
        this.picker.startPickListener = this;
        this.email = getStringParam("email");
        this.pass = getStringParam("pass");
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.account_signup2, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(final View view, Bundle bundle) {
        int iIndexOf;
        super.onViewCreated(view, bundle);
        this.nextView = view.findViewById(R.id.next);
        this.scrollView = (ScrollView) view.findViewById(R.id.scroll);
        NVImageLoader nVImageLoader = (NVImageLoader) getService("imageLoader");
        this.nickname = (EditText) view.findViewById(R.id.nickname);
        this.nickname.setHintTextColor(getResources().getColor(R.color.account_hint_text_color));
        if (getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART) && !TextUtils.isEmpty(getStringParam(AccountBaseFragment.KEY_NICKNAME))) {
            this.nickname.setText(getStringParam(AccountBaseFragment.KEY_NICKNAME));
            this.nickname.setSelection(getStringParam(AccountBaseFragment.KEY_NICKNAME).length());
        } else {
            String str = this.email;
            if (str != null && (iIndexOf = str.indexOf(64)) > 0) {
                this.nickname.setText(this.email.substring(0, Math.min(iIndexOf, 50)));
                EditText editText = this.nickname;
                editText.setSelection(editText.getText().length());
            }
        }
        this.avatar = (ThumbImageView) view.findViewById(R.id.avatar);
        this.avatar.setImageUrl(this.avatarUrl);
        if (!TextUtils.isEmpty(getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL)) && this.avatarUrl == null) {
            this.avatar.setImageBitmap(nVImageLoader.getLocal(getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL), 200, 200, true));
            this.avatarUrl = getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL);
        }
        this.avatar.setOnClickListener(this);
        this.avatarClick = view.findViewById(R.id.avatar_click);
        this.avatarClick.setOnClickListener(this);
        this.avatarPlaceholder = view.findViewById(R.id.avatar_placeholder);
        this.avatarPlaceholder2 = view.findViewById(R.id.avatar_placeholder2);
        view.findViewById(R.id.actionbar_back).setOnClickListener(this);
        updateViews();
        updateNextView();
        this.nickname.addTextChangedListener(new TextWatcher() { // from class: com.narvii.account.SignUpAddProfileFragment.1
            boolean logged;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (this.logged) {
                    return;
                }
                ((LoggingService) SignUpAddProfileFragment.this.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AddScreenNameStarting", new Object[0]);
                this.logged = true;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SignUpAddProfileFragment.this.updateNextView();
            }
        });
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.narvii.account.SignUpAddProfileFragment.2
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                final View viewFindViewById = view.findViewById(R.id.big_title);
                View viewFindViewById2 = view.findViewById(R.id.nickname_title);
                int iDpToPx = (int) Utils.dpToPx(SignUpAddProfileFragment.this.getContext(), 16.0f);
                final boolean z = ((((float) (((((((viewFindViewById.getHeight() + iDpToPx) + iDpToPx) + ((int) Utils.dpToPx(SignUpAddProfileFragment.this.getContext(), 100.0f))) + viewFindViewById2.getHeight()) + iDpToPx) + (iDpToPx / 2)) + SignUpAddProfileFragment.this.nickname.getHeight())) + Utils.dpToPx(SignUpAddProfileFragment.this.getContext(), 40.0f)) + ((float) ((int) Utils.dpToPx(SignUpAddProfileFragment.this.getContext(), 30.0f)))) + ((float) SignUpAddProfileFragment.this.nextView.getHeight()) > ((float) view.getHeight());
                Utils.handler.post(new Runnable() { // from class: com.narvii.account.SignUpAddProfileFragment.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        viewFindViewById.setVisibility(z ? 8 : 0);
                    }
                });
            }
        });
        this.agreeCheck = (CheckBox) view.findViewById(R.id.agree);
        this.agreeCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.account.SignUpAddProfileFragment.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    SignUpAddProfileFragment.this.agreeError.setVisibility(8);
                }
            }
        });
        this.agreeError = view.findViewById(R.id.agree_error);
        TextView textView = (TextView) view.findViewById(R.id.agree_text);
        String string = getString(R.string.tos);
        String string2 = getString(R.string.privacy_policy);
        String string3 = getString(R.string.account_agreement, string, string2);
        SpannableString spannableString = new SpannableString(string3);
        LinkTouchSpan linkTouchSpan = new LinkTouchSpan() { // from class: com.narvii.account.SignUpAddProfileFragment.4
            @Override // android.text.style.ClickableSpan
            public void onClick(View view2) {
                LogEvent.clickWildcardBuilder(SignUpAddProfileFragment.this, "TermsOfService").send();
                SignUpAddProfileFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://tos")));
            }
        };
        LinkTouchSpan linkTouchSpan2 = new LinkTouchSpan() { // from class: com.narvii.account.SignUpAddProfileFragment.5
            @Override // android.text.style.ClickableSpan
            public void onClick(View view2) {
                LogEvent.clickWildcardBuilder(SignUpAddProfileFragment.this, "PrivacyPolicy").send();
                SignUpAddProfileFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://privacy")));
            }
        };
        int iIndexOf2 = string3.indexOf(string);
        spannableString.setSpan(linkTouchSpan, iIndexOf2, string.length() + iIndexOf2, 33);
        spannableString.setSpan(new StyleSpan(1), iIndexOf2, string.length() + iIndexOf2, 33);
        int iIndexOf3 = string3.indexOf(string2);
        spannableString.setSpan(linkTouchSpan2, iIndexOf3, string2.length() + iIndexOf3, 33);
        spannableString.setSpan(new StyleSpan(1), iIndexOf3, string2.length() + iIndexOf3, 33);
        textView.setText(spannableString);
        textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
        textView.setLinkTextColor(-855638017);
        this.nextView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.-$$Lambda$SignUpAddProfileFragment$9pX2sKLmjOifv2W2lMyWy9_MMcY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws NoSuchAlgorithmException, IOException {
                this.f$0.lambda$onViewCreated$0$SignUpAddProfileFragment(view2);
            }
        });
    }

    public /* synthetic */ void lambda$onViewCreated$0$SignUpAddProfileFragment(View view) throws NoSuchAlgorithmException, IOException {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Next").send();
        signupClicked();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, NoSuchAlgorithmException, IOException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (bundle == null && getArguments().getBoolean("autoSignup")) {
            if (TextUtils.isEmpty(this.avatarUrl) || TextUtils.isEmpty(this.nickname.getText())) {
                ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AddProfilePhotoStarting", new Object[0]);
            } else {
                signupClicked();
            }
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        SoftKeyboard.showSoftKeyboard(this.nickname);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        if (getActivity().isFinishing()) {
            Utils.deleteDir(this.photoDir);
        }
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.picker;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("avatar", this.avatarUrl);
        bundle.putParcelable("editNickname", this.nickname.onSaveInstanceState());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNextView() {
        this.nextView.setEnabled((TextUtils.isEmpty(this.avatarUrl) || TextUtils.isEmpty(this.nickname.getText().toString())) ? false : true);
    }

    private void updateViews() {
        this.avatar.setVisibility(TextUtils.isEmpty(this.avatarUrl) ? 4 : 0);
        this.avatarClick.setBackgroundResource(TextUtils.isEmpty(this.avatarUrl) ? R.drawable.account_avatar_oval_dash : R.drawable.account_avatar_oval);
        this.avatarPlaceholder.setVisibility(TextUtils.isEmpty(this.avatarUrl) ? 0 : 4);
        this.avatarPlaceholder2.setVisibility(TextUtils.isEmpty(this.avatarUrl) ? 0 : 4);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.actionbar_back) {
            getFragmentManager().popBackStack();
        } else if (id == R.id.avatar || id == R.id.avatar_click) {
            LogEvent.clickWildcardBuilder(this, "Photo").send();
            this.photoDir.mkdirs();
            this.picker.pickMedia(this.photoDir, (Bundle) null, 6);
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnStartPickListener
    public void onStartPickMedia(int i) {
        LoggingService loggingService = (LoggingService) getService("logging");
        if (i == 1) {
            loggingService.lambda$logEvent$0$LoggingServiceImpl("AddProfilePhotoStarting", "method", "Camera");
        } else if (i == 2) {
            loggingService.lambda$logEvent$0$LoggingServiceImpl("AddProfilePhotoStarting", "method", "Photo Library");
        } else {
            if (i != 3) {
                return;
            }
            loggingService.lambda$logEvent$0$LoggingServiceImpl("AddProfilePhotoStarting", "method", "Search GIF");
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.avatarUrl = list.get(0).url;
        this.avatar.setImageUrl(this.avatarUrl);
        updateViews();
        updateNextView();
    }

    public void signupClicked() throws NoSuchAlgorithmException, IOException {
        if (TextUtils.isEmpty(this.avatarUrl)) {
            this.avatarPlaceholder.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.shake));
            NVToast.makeText(getContext(), R.string.account_no_avatar, 0).show();
            setLastError(5, "No Photo");
            return;
        }
        this.nicknameText = this.nickname.getText().toString();
        if (TextUtils.isEmpty(this.nicknameText)) {
            return;
        }
        if (!this.agreeCheck.isChecked()) {
            ((View) this.agreeCheck.getParent()).startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.shake_h));
            this.agreeError.setVisibility(0);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.account.SignUpAddProfileFragment.6
                @Override // java.lang.Runnable
                public void run() {
                    SignUpAddProfileFragment.this.scrollView.smoothScrollBy(0, 1000);
                }
            }, 50L);
        } else {
            updateIndicatorViewStatus(2);
            SoftKeyboard.hideSoftKeyboard(getContext());
            setCreatingAccount(true);
            getView().findViewById(R.id.actionbar_back).setVisibility(8);
            this.step = 0;
            proceed();
        }
    }

    @Override // com.narvii.account.AccountBaseFragment
    public String getProgressText() {
        int i = this.step;
        if (i == 1 || i == 2) {
            return getContext().getString(R.string.account_creating_account);
        }
        if (i == 3 || i == 4) {
            return getContext().getString(R.string.account_uploading_picture);
        }
        return super.getProgressText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void proceed() throws NoSuchAlgorithmException, IOException {
        ObjectNode objectNode;
        boolean z = true;
        this.step++;
        int i = this.step;
        if (i != 1) {
            if (i == 2) {
                String str = this.nicknameText;
                AccountService accountService = (AccountService) getService("account");
                ApiService apiService = (ApiService) getService("api");
                ApiRequest.Builder builder = ApiRequest.builder();
                builder.https().post().global();
                if (isThirdPartLogin()) {
                    builder.path("/auth/login");
                    builder.param("secret", getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
                    builder.param("secret2", "0 " + this.pass);
                } else {
                    builder.path("/auth/register");
                    builder.param("secret", "0 " + this.pass);
                }
                builder.param("deviceID", accountService.getDeviceId());
                if (!TextUtils.isEmpty(this.email)) {
                    builder.param("email", this.email);
                }
                builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
                builder.param("nickname", str);
                GPSCoordinate location = getLocation();
                builder.param("latitude", Integer.valueOf(location == null ? 0 : location.latitudeE6()));
                builder.param("longitude", Integer.valueOf(location == null ? 0 : location.longitudeE6()));
                builder.param("address", getAddress());
                builder.param("clientCallbackURL", ((BaseNavigator) getService("navigator")).getMyScheme() + "://relogin");
                if (!TextUtils.isEmpty(getStringParam("validationContext"))) {
                    try {
                        objectNode = (ObjectNode) JacksonUtils.DEFAULT_MAPPER.readValue(getStringParam("validationContext"), ObjectNode.class);
                    } catch (IOException e) {
                        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                        e.printStackTrace();
                        objectNode = objectNodeCreateObjectNode;
                    }
                    builder.param("validationContext", objectNode);
                }
                if (getActivity() instanceof LoginActivity) {
                    ((LoginActivity) getActivity()).procReq(builder);
                }
                builder.signature(1);
                this.request = builder.build();
                showProgress();
                apiService.exec(this.request, this.signupListener);
            } else if (i == 3) {
                showProgress();
                if (this.photo.getUploadedUrl(this.avatarUrl) == null) {
                    PhotoManager photoManager = this.photo;
                    photoManager.retryCount = 2;
                    photoManager.upload(this.avatarUrl, this);
                }
            } else if (i == 4) {
                AccountService accountService2 = (AccountService) getService("account");
                ApiService apiService2 = (ApiService) getService("api");
                ApiRequest.Builder builder2 = ApiRequest.builder();
                builder2.post().global().path("/account/" + accountService2.getUserId());
                builder2.param("icon", this.photo.getUploadedUrl(this.avatarUrl));
                this.request = builder2.build();
                showProgress();
                apiService2.exec(this.request, this.updateListener);
            }
            z = false;
        }
        if (z) {
            Utils.post(new Runnable() { // from class: com.narvii.account.SignUpAddProfileFragment.7
                @Override // java.lang.Runnable
                public void run() throws NoSuchAlgorithmException, IOException {
                    SignUpAddProfileFragment.this.proceed();
                }
            });
        }
    }

    @Override // com.narvii.account.AccountBaseFragment
    public boolean cancel() {
        if (this.step > 1) {
            return false;
        }
        this.step = -1;
        return true;
    }

    @Override // com.narvii.photos.PhotoUploadListener
    public void onFinish(String str, String str2) throws NoSuchAlgorithmException, IOException {
        if (this.step == 3) {
            proceed();
        }
    }

    @Override // com.narvii.photos.PhotoUploadListener
    public void onFail(String str, int i, String str2, Throwable th) {
        dismissProgress();
        String string = getContext().getString(R.string.account_avatar_missing, str2);
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(string);
        alertDialog.setCancelable(false);
        alertDialog.addButton(getString(R.string.retry), 4, new View.OnClickListener() { // from class: com.narvii.account.SignUpAddProfileFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws NoSuchAlgorithmException, IOException {
                SignUpAddProfileFragment signUpAddProfileFragment = SignUpAddProfileFragment.this;
                if (signUpAddProfileFragment.step == 3) {
                    signUpAddProfileFragment.step = 2;
                    signUpAddProfileFragment.updateIndicatorViewStatus(2);
                    SignUpAddProfileFragment.this.proceed();
                }
            }
        });
        alertDialog.addButton(getString(R.string.done), 0, new View.OnClickListener() { // from class: com.narvii.account.SignUpAddProfileFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SignUpAddProfileFragment.this.finishWithResult(true, 0, null);
            }
        });
        alertDialog.show();
    }

    @Override // com.narvii.account.AccountBaseFragment
    public void finishWithResult(boolean z, int i, String str) {
        if (z) {
            i = this.newAccount ? 1 : 0;
        }
        super.finishWithResult(z, i, str);
    }

    private boolean isThirdPartLogin() {
        return getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART);
    }
}

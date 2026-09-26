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
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.liveramp.LiveRampHelper;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.BaseNavigator;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.birthday.AccountDeletedFragment;
import com.narvii.birthday.EnterBirthdayFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BasicProfileResponse;
import com.narvii.photos.PhotoManager;
import com.narvii.photos.PhotoUploadListener;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.Constants;
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
import com.safedk.android.utils.Logger;
import java.io.File;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class SignUpAddProfileFragment extends AccountBaseFragment implements View.OnClickListener, MediaPickerFragment.OnResultListener, MediaPickerFragment.OnStartPickListener, FragmentOnBackListener, PhotoUploadListener {
    private CheckBox agreeCheck;
    private View agreeError;
    private ThumbImageView avatar;
    private View avatarClick;
    private View avatarPlaceholder;
    private View avatarPlaceholder2;
    private String avatarUrl;
    private String email;
    private EventLogProfileService eventLogProfileService;
    private boolean newAccount;
    private View nextView;
    private EditText nickname;
    private String nicknameText;
    private String pass;
    private PhotoManager photo;
    private File photoDir;
    private MediaPickerFragment picker;
    private ApiRequest request;
    private ScrollView scrollView;
    private int step;
    private final AccountResponseListener signupListener = new AccountResponseListener(this) { // from class: com.narvii.account.SignUpAddProfileFragment.4
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            SignUpAddProfileFragment.this.dismissProgress();
            SignUpAddProfileFragment.this.request = null;
            SignUpAddProfileFragment.this.updateNextView();
            SignUpAddProfileFragment.this.finishWithResult(false, i10, str);
            SignUpAddProfileFragment.this.getView().findViewById(R.id.actionbar_back).setVisibility(0);
            LoggingService loggingService = (LoggingService) SignUpAddProfileFragment.this.getService("logging");
            Object[] objArr = new Object[8];
            objArr[0] = "email";
            objArr[1] = SignUpAddProfileFragment.this.email;
            objArr[2] = "reason";
            objArr[3] = i10 == 0 ? "NetworkError" : null;
            objArr[4] = "code";
            objArr[5] = Integer.valueOf(i10);
            objArr[6] = AccountNotice.LEVEL_MESSAGE;
            objArr[7] = str;
            loggingService.lambda$logEvent$0("AccountError", objArr);
        }

        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            super.onFinish(apiRequest, accountResponse);
            SignUpAddProfileFragment.this.eventLogProfileService.needsCompleteSignupBirthday = true;
            SignUpAddProfileFragment.this.newAccount = accountResponse.newAccount;
            SignUpAddProfileFragment.this.request = null;
            if (!TextUtils.isEmpty(SignUpAddProfileFragment.this.email)) {
                LiveRampHelper.setLRUserEmail(SignUpAddProfileFragment.this.email);
            }
            SignUpAddProfileFragment.this.proceed();
        }
    };
    private final ApiResponseListener<ApiResponse> updateListener = new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.SignUpAddProfileFragment.5
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) throws NoSuchAlgorithmException, InvalidKeyException {
            SignUpAddProfileFragment.this.dismissProgress();
            NVToast.makeText(SignUpAddProfileFragment.this.getContext(), SignUpAddProfileFragment.this.getContext().getString(R.string.account_avatar_missing, str), 1).show();
            SignUpAddProfileFragment.this.proceed();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws NoSuchAlgorithmException, InvalidKeyException {
            SignUpAddProfileFragment.this.request = null;
            SignUpAddProfileFragment.this.dismissProgress();
            AccountService accountService = (AccountService) SignUpAddProfileFragment.this.getService("account");
            User userProfile = accountService.getUserProfile();
            userProfile.icon = SignUpAddProfileFragment.this.photo.getUploadedUrl(SignUpAddProfileFragment.this.avatarUrl);
            accountService.updateProfile(userProfile, apiResponse.timestamp, 0, true, true);
            SignUpAddProfileFragment.this.proceed();
        }
    };
    private final ApiResponseListener<BasicProfileResponse> birthdayListener = new ApiResponseListener<BasicProfileResponse>(BasicProfileResponse.class) { // from class: com.narvii.account.SignUpAddProfileFragment.6
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, BasicProfileResponse basicProfileResponse) throws Exception {
            super.onFinish(apiRequest, basicProfileResponse);
            SignUpAddProfileFragment.this.dismissProgress();
            SignUpAddProfileFragment.this.eventLogProfileService.needsCompleteSignupBirthday = false;
            ((AccountService) SignUpAddProfileFragment.this.getService("account")).getPrefs().edit().putInt(AccountService.PREFS_AGE, Utils.getAge(new SimpleDateFormat(Constants.BIRTHDAY_FORMAT, Locale.getDefault()).parse(((LoginActivity) SignUpAddProfileFragment.this.getActivity()).birthday))).apply();
            SignUpAddProfileFragment.this.goToAccountCreatedPage(new SignUpAccountCreatedFragment(), SignUpAddProfileFragment.this.newAccount);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, String str, @Nullable ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            SignUpAddProfileFragment.this.dismissProgress();
            SignUpAddProfileFragment.this.eventLogProfileService.needsCompleteSignupBirthday = false;
            if (i10 == 106) {
                Intent intent = FragmentWrapperActivity.intent(AccountDeletedFragment.class);
                intent.putExtra(Constants.PARAM_BIRTHDAY_TYPE, EnterBirthdayFragment.BirthdayType.SIGNUP);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(SignUpAddProfileFragment.this, intent);
                return;
            }
            SignUpAddProfileFragment.this.goToAccountCreatedPage(new SignUpAccountCreatedFragment(), SignUpAddProfileFragment.this.newAccount);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFail$6(View view) {
        finishWithResult(true, 0, null);
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // com.narvii.account.AccountBaseFragment
    public boolean cancel() {
        if (this.step > 1) {
            return false;
        }
        this.step = -1;
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "sign_up_create_profile";
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
    public void onProgress(String str, int i10, int i11) {
    }

    private boolean isThirdPartLogin() {
        return getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFail$5(View view) throws NoSuchAlgorithmException, InvalidKeyException {
        if (this.step == 3) {
            this.step = 2;
            updateIndicatorViewStatus(2);
            proceed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onViewCreated$0(View view, boolean z6) {
        view.setVisibility(z6 ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$2(CompoundButton compoundButton, boolean z6) {
        if (z6) {
            this.agreeError.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$3(View view) throws NoSuchAlgorithmException, InvalidKeyException {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Next").send();
        signupClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$signupClicked$4() {
        this.scrollView.smoothScrollBy(0, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void proceed() throws NoSuchAlgorithmException, InvalidKeyException {
        ObjectNode objectNode;
        int i10 = this.step + 1;
        this.step = i10;
        if (i10 != 1) {
            if (i10 == 2) {
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
                builder.param(a0.a.o, accountService.getDeviceId());
                if (!TextUtils.isEmpty(this.email)) {
                    builder.param("email", this.email);
                }
                builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
                builder.param("nickname", str);
                GPSCoordinate location = getLocation();
                builder.param("latitude", Integer.valueOf(location == null ? 0 : location.latitudeE6()));
                builder.param("longitude", Integer.valueOf(location != null ? location.longitudeE6() : 0));
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
                return;
            }
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        return;
                    }
                    this.request = ApiRequest.builder().global().post().path("/persona/profile/birthday").param("birthday", ((LoginActivity) getActivity()).birthday).build();
                    showProgress();
                    ((ApiService) getService("api")).exec(this.request, this.birthdayListener);
                    return;
                }
                AccountService accountService2 = (AccountService) getService("account");
                ApiService apiService2 = (ApiService) getService("api");
                ApiRequest.Builder builder2 = ApiRequest.builder();
                builder2.post().global().path("/account/" + accountService2.getUserId());
                builder2.param("icon", this.photo.getUploadedUrl(this.avatarUrl));
                this.request = builder2.build();
                showProgress();
                apiService2.exec(this.request, this.updateListener);
                return;
            }
            showProgress();
            if (this.photo.getUploadedUrl(this.avatarUrl) == null) {
                PhotoManager photoManager = this.photo;
                photoManager.retryCount = 2;
                photoManager.upload(this.avatarUrl, this);
                return;
            }
        }
        Utils.post(new Runnable() { // from class: com.narvii.account.q0
            @Override // java.lang.Runnable
            public final void run() throws NoSuchAlgorithmException, InvalidKeyException {
                this.f1739a.proceed();
            }
        });
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

    @Override // com.narvii.account.AccountBaseFragment
    public void finishWithResult(boolean z6, int i10, String str) {
        if (z6) {
            i10 = this.newAccount ? 1 : 0;
        }
        super.finishWithResult(z6, i10, str);
    }

    @Override // com.narvii.account.AccountBaseFragment
    public String getProgressText() {
        int i10 = this.step;
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3 || i10 == 4) {
                return getContext().getString(R.string.account_uploading_picture);
            }
            if (i10 != 5) {
                return super.getProgressText();
            }
        }
        return getContext().getString(R.string.account_creating_account);
    }

    @Override // com.narvii.photos.PhotoUploadListener
    public void onFinish(String str, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
        if (this.step == 3) {
            proceed();
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        if (list == null || list.size() <= 0) {
            return;
        }
        String str = list.get(0).url;
        this.avatarUrl = str;
        this.avatar.setImageUrl(str);
        updateViews();
        updateNextView();
    }

    @Override // com.narvii.media.MediaPickerFragment.OnStartPickListener
    public void onStartPickMedia(int i10) {
        LoggingService loggingService = (LoggingService) getService("logging");
        if (i10 == 1) {
            loggingService.lambda$logEvent$0("AddProfilePhotoStarting", "method", "Camera");
        } else if (i10 == 2) {
            loggingService.lambda$logEvent$0("AddProfilePhotoStarting", "method", "Photo Library");
        } else {
            if (i10 != 3) {
                return;
            }
            loggingService.lambda$logEvent$0("AddProfilePhotoStarting", "method", "Search GIF");
        }
    }

    public void signupClicked() throws NoSuchAlgorithmException, InvalidKeyException {
        if (TextUtils.isEmpty(this.avatarUrl)) {
            this.avatarPlaceholder.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.shake));
            NVToast.makeText(getContext(), R.string.account_no_avatar, 0).show();
            setLastError(5, "No Photo");
            return;
        }
        String string = this.nickname.getText().toString();
        this.nicknameText = string;
        if (TextUtils.isEmpty(string)) {
            return;
        }
        if (!this.agreeCheck.isChecked()) {
            ((View) this.agreeCheck.getParent()).startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.shake_h));
            this.agreeError.setVisibility(0);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.account.p0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1731a.lambda$signupClicked$4();
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(View view, View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        final boolean z6;
        final View viewFindViewById = view.findViewById(R.id.big_title);
        View viewFindViewById2 = view.findViewById(R.id.nickname_title);
        int iDpToPx = (int) Utils.dpToPx(getContext(), 16.0f);
        if (viewFindViewById.getHeight() + iDpToPx + iDpToPx + ((int) Utils.dpToPx(getContext(), 100.0f)) + viewFindViewById2.getHeight() + iDpToPx + (iDpToPx / 2) + this.nickname.getHeight() + Utils.dpToPx(getContext(), 40.0f) + ((int) Utils.dpToPx(getContext(), 30.0f)) + this.nextView.getHeight() > view.getHeight()) {
            z6 = true;
        } else {
            z6 = false;
        }
        Utils.handler.post(new Runnable() { // from class: com.narvii.account.r0
            @Override // java.lang.Runnable
            public final void run() {
                SignUpAddProfileFragment.lambda$onViewCreated$0(viewFindViewById, z6);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.actionbar_back) {
            if (id == R.id.avatar || id == R.id.avatar_click) {
                LogEvent.clickWildcardBuilder(this, "Photo").send();
                this.photoDir.mkdirs();
                this.picker.pickMedia(this.photoDir, (Bundle) null, 6);
                return;
            }
            return;
        }
        getFragmentManager().i1();
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.photo = (PhotoManager) getService("photo");
        this.photoDir = new File(new File(getContext().getFilesDir(), "photo"), "signup");
        this.eventLogProfileService = (EventLogProfileService) getService("eventLogProfile");
        if (bundle == null) {
            this.picker = new MediaPickerFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("folder", "signup");
            this.picker.setArguments(bundle2);
            getFragmentManager().q().e(this.picker, "mediaPicker").k();
            LoginActivity loginActivity = (LoginActivity) getActivity();
            loginActivity.statMaxLoginStep = 0;
            loginActivity.statMaxSignupSetp = 30;
        } else {
            this.picker = (MediaPickerFragment) getFragmentManager().m0("mediaPicker");
            this.avatarUrl = bundle.getString("avatar");
        }
        this.picker.addOnResultListener(this);
        this.picker.startPickListener = this;
        this.email = getStringParam("email");
        this.pass = getStringParam("pass");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.account_signup2, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // com.narvii.photos.PhotoUploadListener
    public void onFail(String str, int i10, String str2, Throwable th) {
        dismissProgress();
        String string = getContext().getString(R.string.account_avatar_missing, str2);
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(string);
        alertDialog.setCancelable(false);
        alertDialog.addButton(getString(R.string.retry), 4, new View.OnClickListener() { // from class: com.narvii.account.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws NoSuchAlgorithmException, InvalidKeyException {
                this.f1752a.lambda$onFail$5(view);
            }
        });
        alertDialog.addButton(getString(R.string.done), 0, new View.OnClickListener() { // from class: com.narvii.account.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1761a.lambda$onFail$6(view);
            }
        });
        alertDialog.show();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        SoftKeyboard.showSoftKeyboard(this.nickname);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("avatar", this.avatarUrl);
        bundle.putParcelable("editNickname", this.nickname.onSaveInstanceState());
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(final View view, Bundle bundle) {
        int iIndexOf;
        super.onViewCreated(view, bundle);
        this.nextView = view.findViewById(R.id.next);
        this.scrollView = (ScrollView) view.findViewById(R.id.scroll);
        NVImageLoader nVImageLoader = (NVImageLoader) getService("imageLoader");
        EditText editText = (EditText) view.findViewById(R.id.nickname);
        this.nickname = editText;
        editText.setHintTextColor(getResources().getColor(R.color.account_hint_text_color));
        if (getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART) && !TextUtils.isEmpty(getStringParam(AccountBaseFragment.KEY_NICKNAME))) {
            this.nickname.setText(getStringParam(AccountBaseFragment.KEY_NICKNAME));
            this.nickname.setSelection(getStringParam(AccountBaseFragment.KEY_NICKNAME).length());
        } else {
            String str = this.email;
            if (str != null && (iIndexOf = str.indexOf(64)) > 0) {
                this.nickname.setText(this.email.substring(0, Math.min(iIndexOf, 50)));
                EditText editText2 = this.nickname;
                editText2.setSelection(editText2.getText().length());
            }
        }
        ThumbImageView thumbImageView = (ThumbImageView) view.findViewById(R.id.avatar);
        this.avatar = thumbImageView;
        thumbImageView.setImageUrl(this.avatarUrl);
        if (!TextUtils.isEmpty(getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL)) && this.avatarUrl == null) {
            this.avatar.setImageBitmap(nVImageLoader.getLocal(getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL), 200, 200, true));
            this.avatarUrl = getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL);
        }
        this.avatar.setOnClickListener(this);
        View viewFindViewById = view.findViewById(R.id.avatar_click);
        this.avatarClick = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.avatarPlaceholder = view.findViewById(R.id.avatar_placeholder);
        this.avatarPlaceholder2 = view.findViewById(R.id.avatar_placeholder2);
        view.findViewById(R.id.actionbar_back).setOnClickListener(this);
        updateViews();
        updateNextView();
        this.nickname.addTextChangedListener(new TextWatcher() { // from class: com.narvii.account.SignUpAddProfileFragment.1
            boolean logged;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SignUpAddProfileFragment.this.updateNextView();
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                if (this.logged) {
                    return;
                }
                ((LoggingService) SignUpAddProfileFragment.this.getService("logging")).lambda$logEvent$0("AddScreenNameStarting", new Object[0]);
                this.logged = true;
            }
        });
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.narvii.account.u0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                this.f1765a.lambda$onViewCreated$1(view, view2, i10, i11, i12, i13, i14, i15, i16, i17);
            }
        });
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.agree);
        this.agreeCheck = checkBox;
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.account.v0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                this.f1768a.lambda$onViewCreated$2(compoundButton, z6);
            }
        });
        this.agreeError = view.findViewById(R.id.agree_error);
        TextView textView = (TextView) view.findViewById(R.id.agree_text);
        String string = getString(R.string.tos);
        String string2 = getString(R.string.privacy_policy);
        String string3 = getString(R.string.account_agreement, string, string2);
        SpannableString spannableString = new SpannableString(string3);
        LinkTouchSpan linkTouchSpan = new LinkTouchSpan() { // from class: com.narvii.account.SignUpAddProfileFragment.2
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View view2) {
                LogEvent.clickWildcardBuilder(SignUpAddProfileFragment.this, "TermsOfService").send();
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(SignUpAddProfileFragment.this, new Intent("android.intent.action.VIEW", Uri.parse("ndc://tos")));
            }
        };
        LinkTouchSpan linkTouchSpan2 = new LinkTouchSpan() { // from class: com.narvii.account.SignUpAddProfileFragment.3
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View view2) {
                LogEvent.clickWildcardBuilder(SignUpAddProfileFragment.this, "PrivacyPolicy").send();
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(SignUpAddProfileFragment.this, new Intent("android.intent.action.VIEW", Uri.parse("ndc://privacy")));
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
        this.nextView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.w0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws NoSuchAlgorithmException, InvalidKeyException {
                this.f1781a.lambda$onViewCreated$3(view2);
            }
        });
    }
}

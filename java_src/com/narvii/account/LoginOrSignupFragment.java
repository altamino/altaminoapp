package com.narvii.account;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.account.restore.AccoutRestorePhoneFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.logging.LogEvent;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PackageUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.LinkTouchSpan;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes2.dex */
public class LoginOrSignupFragment extends AccountBaseFragment implements View.OnClickListener, FragmentOnBackListener, EventLogProfileService.EventLogProfileListener {
    public static final String LOGIN_WITH_JOIN_COMMUNITY_INVITER = "inviter";
    public static final int MOBILE_SIGN_UP_PROVIDER = 8;
    public static int mobileSignUpProvider = 8;
    public static boolean showPhoneNumberItem = true;
    private TextView accountTagline;
    private ViewGroup animatorContainer;
    AnimatorSet animatorSet;
    private View backButton;
    HashMap<Integer, Bitmap> bitmapMaps;
    EventLogProfileService eventLogProfileService;
    boolean eventProfileGot;
    TintButton imgAminoLogo;
    NVImageView imgCommunityIcon;
    View inviteCommunityContainer;
    NVImageView inviteCommunityIcon;
    TextView inviteCommunityName;
    TextView invitorName;
    Button loginButton;
    TextView loginHint;
    WebView mWebView;
    boolean pendingStart;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.account.LoginOrSignupFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountBaseFragment.ACTION_MOBILE_REGISTER_SWITCH_LOGIN.equals(intent.getAction())) {
                LoginOrSignupFragment.this.switchLogin(intent, 0, 0);
            } else if (AccountBaseFragment.ACTION_MOBILE_REGISTER_SWITCH_RESTORE.equals(intent.getAction())) {
                Intent intent2 = FragmentWrapperActivity.intent(AccoutRestorePhoneFragment.class);
                intent2.putExtra("phoneNumber", intent.getStringExtra("phoneNumber"));
                LoginOrSignupFragment.this.startActivityForResult(intent2, AccountBaseFragment.RESTORE_ACCOUNT);
            }
        }
    };
    SharedPreferences sharedPreferences;
    Button signupButton;
    Button startButton;
    TextView tvCommunityName;
    TextView tvTagline;
    List<ImageView> viewList;

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void clearResponseWhenAccountChange() {
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "AuthHomePage";
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.sharedPreferences = (SharedPreferences) getService("prefs");
        this.eventLogProfileService = (EventLogProfileService) getService("eventLogProfile");
        showPhoneNumberItem = true;
        requestMobileSignUpProvider();
        registerLocalReceiver(this.receiver, new IntentFilter(AccountBaseFragment.ACTION_MOBILE_REGISTER_SWITCH_LOGIN));
        registerLocalReceiver(this.receiver, new IntentFilter(AccountBaseFragment.ACTION_MOBILE_REGISTER_SWITCH_RESTORE));
        if (getBooleanParam("onBoarding")) {
            SharedPreferences sharedPreferences = (SharedPreferences) getService("prefs");
            if (!sharedPreferences.contains("signUpStrategy")) {
                sharedPreferences.edit().putInt("signUpStrategy", 2).apply();
            }
        }
        if (this.eventLogProfileService.getResponse() != null || this.eventLogProfileService.getError() != null) {
            this.eventProfileGot = true;
        } else {
            this.eventLogProfileService.refreshIfIdle();
            this.eventLogProfileService.addListener(this);
        }
    }

    private void requestMobileSignUpProvider() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().https().path("auth/config-v2").global().build(), new ApiResponseListener<AuthConfigResponse>(AuthConfigResponse.class) { // from class: com.narvii.account.LoginOrSignupFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AuthConfigResponse authConfigResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) authConfigResponse);
                ArrayList<Integer> arrayList = authConfigResponse.mobileSignUpProviderList;
                if (arrayList == null || !arrayList.contains(Integer.valueOf(LoginOrSignupFragment.mobileSignUpProvider))) {
                    LoginOrSignupFragment.showPhoneNumberItem = false;
                } else {
                    LoginOrSignupFragment.showPhoneNumberItem = true;
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(NVApplication.CLIENT_TYPE == 101 ? R.layout.account_login_or_signup_standalone : R.layout.account_login_or_signup, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.loginButton = (Button) view.findViewById(R.id.login);
        view.findViewById(R.id.login).setOnClickListener(this);
        this.signupButton = (Button) view.findViewById(R.id.signup);
        view.findViewById(R.id.signup).setOnClickListener(this);
        view.findViewById(R.id.actionbar_back).setOnClickListener(this);
        this.startButton = (Button) view.findViewById(R.id.start);
        Button button = this.startButton;
        if (button != null) {
            button.setOnClickListener(this);
        }
        this.loginHint = (TextView) view.findViewById(R.id.login_hint);
        TextView textView = this.loginHint;
        if (textView != null) {
            textView.setOnClickListener(this);
            setUpLoginHint();
        }
        this.backButton = view.findViewById(R.id.actionbar_back);
        this.tvCommunityName = (TextView) view.findViewById(R.id.community_name);
        this.imgCommunityIcon = (NVImageView) view.findViewById(R.id.community_icon);
        this.imgAminoLogo = (TintButton) view.findViewById(R.id.amino_logo);
        this.tvTagline = (TextView) view.findViewById(R.id.community_tagline);
        this.accountTagline = (TextView) view.findViewById(R.id.account_tagline_text);
        this.inviteCommunityContainer = view.findViewById(R.id.community_invite_container);
        this.inviteCommunityIcon = (NVImageView) view.findViewById(R.id.community_icon_invite);
        this.invitorName = (TextView) view.findViewById(R.id.invitor_name_invite);
        this.inviteCommunityName = (TextView) view.findViewById(R.id.community_name_invite);
        updateView();
        if (NVApplication.CLIENT_TYPE == 100) {
            this.animatorContainer = (ViewGroup) view.findViewById(R.id.animator_container);
            this.animatorContainer.removeAllViews();
            this.viewList = new ArrayList();
            this.bitmapMaps = new HashMap<>();
        }
    }

    private void setUpLoginHint() {
        String string = getString(R.string.already_have_account);
        String string2 = getString(R.string.account_login);
        SpannableString spannableString = new SpannableString(string + " " + string2);
        LinkTouchSpan linkTouchSpan = new LinkTouchSpan() { // from class: com.narvii.account.LoginOrSignupFragment.3
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
            }
        };
        int length = string.length();
        int length2 = string2.length() + length + 1;
        spannableString.setSpan(linkTouchSpan, length, length2, 33);
        spannableString.setSpan(new StyleSpan(1), length, length2, 33);
        this.loginHint.setText(spannableString);
        this.loginHint.setMovementMethod(LinkTouchMovementMethod.getInstance());
        this.loginHint.setLinkTextColor(-855638017);
    }

    private void useSimpleForeground(ViewGroup viewGroup) {
        LayoutInflater.from(getContext()).inflate(R.layout.layout_login_simple_foreground, viewGroup, true);
        ImageView imageView = (ImageView) viewGroup.findViewById(R.id.ic_foreground);
        try {
            loadBitmap(imageView, R.drawable.ic_orb_simple_foreground);
            Bitmap bitmap = this.bitmapMaps.get(Integer.valueOf(R.id.ic_foreground));
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
            }
        } catch (Exception unused) {
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            viewGroup.removeAllViews();
            Iterator<Map.Entry<Integer, Bitmap>> it = this.bitmapMaps.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().recycle();
            }
        }
    }

    protected void useComplexAnimation(ViewGroup viewGroup) {
        LayoutInflater.from(getContext()).inflate(R.layout.layout_login_animator, viewGroup, true);
        try {
            createAnimation(viewGroup);
        } catch (Exception unused) {
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            viewGroup.removeAllViews();
            Iterator<Map.Entry<Integer, Bitmap>> it = this.bitmapMaps.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().recycle();
            }
            useSimpleForeground(viewGroup);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        SoftKeyboard.hideSoftKeyboard(getActivity());
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        super.onPause();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        List<ImageView> list = this.viewList;
        if (list != null) {
            list.clear();
        }
        HashMap<Integer, Bitmap> map = this.bitmapMaps;
        if (map != null) {
            map.clear();
        }
        ViewGroup viewGroup = this.animatorContainer;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDestroyView();
    }

    private ObjectAnimator createRotationAnimator(View view, boolean z) {
        float fNextInt = (new Random().nextInt() % 30) + 10;
        long jNextInt = (((new Random().nextInt() % 100) / 10) + 30) * 1000;
        float[] fArr = new float[3];
        fArr[0] = z ? 0.0f : fNextInt;
        fArr[1] = z ? fNextInt : 0.0f;
        if (z) {
            fNextInt = 0.0f;
        }
        fArr[2] = fNextInt;
        return createInfiniteAnimator(view, jNextInt, "rotation", fArr);
    }

    private ObjectAnimator createInfiniteAnimator(Object obj, long j, String str, float... fArr) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(obj, str, fArr);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setDuration(j);
        return objectAnimatorOfFloat;
    }

    private void updateView() {
        boolean z = NVApplication.CLIENT_TYPE == 101;
        if (z) {
            TextView textView = this.accountTagline;
            if (textView != null) {
                textView.setVisibility(8);
            }
            TextView textView2 = this.tvCommunityName;
            if (textView2 != null) {
                textView2.setVisibility(0);
                PackageUtils packageUtils = new PackageUtils(getContext());
                ViewUtils.setMontserratExtraBoldTypeface(this.tvCommunityName);
                this.tvCommunityName.setText(packageUtils.getAppName());
            }
            NVImageView nVImageView = this.imgCommunityIcon;
            if (nVImageView != null) {
                nVImageView.setVisibility(0);
                this.imgCommunityIcon.setImageUrl("assets://icon-community.jpg");
            }
            TextView textView3 = this.tvTagline;
            if (textView3 != null) {
                textView3.setVisibility(0);
                this.tvTagline.setText(((CommunityService) NVApplication.instance().getService("community")).getCommunity(((ConfigService) NVApplication.instance().getService("config")).getCommunityId()).tagline);
            }
            this.imgAminoLogo.setImageDrawable(getResources().getDrawable(R.drawable.amino_login_logo_white));
        } else {
            TextView textView4 = this.accountTagline;
            if (textView4 != null) {
                ViewUtils.setMontserratExtraLightTypeface(textView4);
            }
        }
        if (!(!TextUtils.isEmpty(getStringParam("community"))) || z) {
            return;
        }
        Community community = (Community) JacksonUtils.readAs(getStringParam("community"), Community.class);
        TextView textView5 = this.accountTagline;
        if (textView5 != null) {
            textView5.setVisibility(0);
        }
        TintButton tintButton = this.imgAminoLogo;
        if (tintButton != null) {
            tintButton.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.account_login_amino_logo));
        }
        this.inviteCommunityContainer.setVisibility(0);
        this.inviteCommunityIcon.setImageUrl(community.icon);
        this.inviteCommunityName.setText(community.name);
        TextView textView6 = this.tvCommunityName;
        if (textView6 != null) {
            textView6.setVisibility(8);
        }
        NVImageView nVImageView2 = this.imgCommunityIcon;
        if (nVImageView2 != null) {
            nVImageView2.setVisibility(8);
        }
        TextView textView7 = this.tvTagline;
        if (textView7 != null) {
            textView7.setVisibility(8);
        }
        if (getStringParam(LOGIN_WITH_JOIN_COMMUNITY_INVITER) != null) {
            User user = (User) JacksonUtils.readAs(getStringParam(LOGIN_WITH_JOIN_COMMUNITY_INVITER), User.class);
            TextView textView8 = this.invitorName;
            if (textView8 == null || user == null) {
                return;
            }
            textView8.setText(getString(R.string.invited_by, user.nickname()));
            this.invitorName.setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        if (view.getId() == R.id.signup) {
            LogEvent.clickBuilder(this, ActSemantic.signup).area("EngagementArea").send();
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            final int[] iArr = new int[4];
            if (showPhoneNumberItem) {
                actionSheetDialog.setTitle(R.string.sign_up_action_sheet_title);
                actionSheetDialog.addItem(R.string.account_phone_number, false);
                iArr[0] = R.string.account_phone_number;
                i = 1;
            } else {
                i = 0;
            }
            actionSheetDialog.addItem(R.string.account_email_address, false);
            int i2 = i + 1;
            iArr[i] = R.string.account_email_address;
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.account.LoginOrSignupFragment.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    ActSemantic actSemantic;
                    String str;
                    switch (iArr[i3]) {
                        case R.string.account_email_address /* 2131689525 */:
                            actSemantic = ActSemantic.emailSignup;
                            ((LoginActivity) LoginOrSignupFragment.this.getActivity()).statType = 2;
                            str = "Email";
                            break;
                        case R.string.account_facebook /* 2131689530 */:
                            actSemantic = ActSemantic.facebookSignup;
                            ((LoginActivity) LoginOrSignupFragment.this.getActivity()).statType = 3;
                            str = "Facebook";
                            break;
                        case R.string.account_google /* 2131689533 */:
                            actSemantic = ActSemantic.googleSignup;
                            ((LoginActivity) LoginOrSignupFragment.this.getActivity()).statType = 4;
                            str = "Google";
                            break;
                        case R.string.account_phone_number /* 2131689553 */:
                            actSemantic = ActSemantic.phoneSignup;
                            ((LoginActivity) LoginOrSignupFragment.this.getActivity()).statType = 1;
                            str = "Phone";
                            break;
                        default:
                            actSemantic = null;
                            str = null;
                            break;
                    }
                    if (actSemantic != null) {
                        LogEvent.clickBuilder(LoginOrSignupFragment.this, actSemantic).area("EngagementArea").send();
                    }
                    FragmentTransaction fragmentTransactionBeginTransaction = LoginOrSignupFragment.this.getFragmentManager().beginTransaction();
                    fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                    AgeGatingFragment ageGatingFragment = new AgeGatingFragment();
                    Bundle bundle = new Bundle();
                    bundle.putString("method", str);
                    ageGatingFragment.setArguments(bundle);
                    fragmentTransactionBeginTransaction.replace(R.id.frame, ageGatingFragment).addToBackStack(null).commitAllowingStateLoss();
                    ((LoginActivity) LoginOrSignupFragment.this.getActivity()).loggingMethod = str;
                    ((LoggingService) LoginOrSignupFragment.this.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("SignupStarting", "method", str);
                }
            });
            actionSheetDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.account.LoginOrSignupFragment.5
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    LogEvent.clickBuilder(LoginOrSignupFragment.this, ActSemantic.cancelSignup).area("EngagementArea").send();
                }
            });
            actionSheetDialog.show();
        }
        if (view.getId() == R.id.login || view.getId() == R.id.login_hint) {
            clickLogin();
        }
        if (view.getId() == R.id.actionbar_back) {
            getActivity().onBackPressed();
        }
        if (view.getId() == R.id.start) {
            if (this.eventProfileGot) {
                clickStartButton();
                return;
            }
            this.pendingStart = true;
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.account.LoginOrSignupFragment.6
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    LoginOrSignupFragment.this.pendingStart = false;
                }
            });
            progressDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clickStartButton() {
        LogEvent.clickBuilder(this, ActSemantic.start).area("EngagementArea").send();
        Intent intent = new Intent();
        intent.putExtra("clickStartButton", true);
        setResult(0, intent);
        finish();
    }

    private void clickLogin() {
        LogEvent.clickBuilder(this, ActSemantic.login).area("EngagementArea").send();
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.account_phone_number, false);
        actionSheetDialog.addItem(R.string.account_email_address, false);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.account.LoginOrSignupFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ActSemantic actSemantic = null;
                if (i == 0) {
                    FragmentTransaction fragmentTransactionBeginTransaction = LoginOrSignupFragment.this.getFragmentManager().beginTransaction();
                    fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                    fragmentTransactionBeginTransaction.replace(R.id.frame, new MobileLoginFragment()).addToBackStack(null).commitAllowingStateLoss();
                    actSemantic = ActSemantic.phoneLogin;
                    ((LoginActivity) LoginOrSignupFragment.this.getActivity()).statType = 1;
                } else if (i == 1) {
                    FragmentTransaction fragmentTransactionBeginTransaction2 = LoginOrSignupFragment.this.getFragmentManager().beginTransaction();
                    fragmentTransactionBeginTransaction2.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                    fragmentTransactionBeginTransaction2.replace(R.id.frame, new EmailLoginFragment()).addToBackStack(null).commitAllowingStateLoss();
                    actSemantic = ActSemantic.emailLogin;
                    ((LoginActivity) LoginOrSignupFragment.this.getActivity()).statType = 2;
                } else if (i != 2 && i == 3) {
                    ((GoogleLoginFragment) LoginOrSignupFragment.this.getFragmentManager().findFragmentById(R.id.google_login_fragment)).requestLogin(2);
                    actSemantic = ActSemantic.googleLogin;
                    ((LoginActivity) LoginOrSignupFragment.this.getActivity()).statType = 4;
                }
                if (actSemantic != null) {
                    LogEvent.clickBuilder(LoginOrSignupFragment.this, actSemantic).area("EngagementArea").send();
                }
            }
        });
        actionSheetDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.account.LoginOrSignupFragment.8
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                LogEvent.clickBuilder(LoginOrSignupFragment.this, ActSemantic.cancelLogin).area("EngagementArea").send();
            }
        });
        actionSheetDialog.show();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        View view = this.backButton;
        if (view != null && view.getVisibility() != 0) {
            return true;
        }
        LogEvent.clickBuilder(this, ActSemantic.cancelAuth).area("EngagementArea").send();
        return false;
    }

    private void createAnimation(View view) {
        ImageView imageView = (ImageView) view.findViewById(R.id.ic_orb_core);
        ImageView imageView2 = (ImageView) view.findViewById(R.id.ic_orb_core_1);
        ImageView imageView3 = (ImageView) view.findViewById(R.id.ic_orb_gear_1);
        ImageView imageView4 = (ImageView) view.findViewById(R.id.ic_orb_gear_2);
        ImageView imageView5 = (ImageView) view.findViewById(R.id.ic_orb_object_1);
        ImageView imageView6 = (ImageView) view.findViewById(R.id.ic_orb_object_2);
        ImageView imageView7 = (ImageView) view.findViewById(R.id.ic_orb_object_3);
        ImageView imageView8 = (ImageView) view.findViewById(R.id.ic_orb_object_4);
        ImageView imageView9 = (ImageView) view.findViewById(R.id.ic_orb_object_5);
        ImageView imageView10 = (ImageView) view.findViewById(R.id.ic_orb_object_6);
        ImageView imageView11 = (ImageView) view.findViewById(R.id.ic_orb_dotted_1);
        ImageView imageView12 = (ImageView) view.findViewById(R.id.ic_orb_dotted_2);
        ImageView imageView13 = (ImageView) view.findViewById(R.id.ic_orb_dotted_3);
        ImageView imageView14 = (ImageView) view.findViewById(R.id.ic_orb_dotted_4);
        ImageView imageView15 = (ImageView) view.findViewById(R.id.ic_orb_ellipse_1);
        ImageView imageView16 = (ImageView) view.findViewById(R.id.ic_orb_ellipse_2);
        ImageView imageView17 = (ImageView) view.findViewById(R.id.ic_orb_dash_1);
        ImageView imageView18 = (ImageView) view.findViewById(R.id.ic_orb_dash_2);
        ImageView imageView19 = (ImageView) view.findViewById(R.id.ic_orb_dash_4);
        ImageView imageView20 = (ImageView) view.findViewById(R.id.ic_orb_10);
        ImageView imageView21 = (ImageView) view.findViewById(R.id.ic_orb_12);
        ImageView imageView22 = (ImageView) view.findViewById(R.id.ic_orb_16);
        ImageView imageView23 = (ImageView) view.findViewById(R.id.ic_orb_24);
        ImageView imageView24 = (ImageView) view.findViewById(R.id.ic_orb_32);
        ImageView imageView25 = (ImageView) view.findViewById(R.id.ic_orb_36);
        ImageView imageView26 = (ImageView) view.findViewById(R.id.ic_orb_ring_1);
        ImageView imageView27 = (ImageView) view.findViewById(R.id.ic_orb_ring_2);
        ImageView imageView28 = (ImageView) view.findViewById(R.id.ic_orb_ring_3);
        loadBitmap(imageView, R.drawable.ic_orb_core);
        loadBitmap(imageView2, R.drawable.ic_orb_core_1);
        loadBitmap(imageView3, R.drawable.ic_orb_gear_1);
        loadBitmap(imageView4, R.drawable.ic_orb_gear_2);
        loadBitmap(imageView5, R.drawable.ic_orb_object_1);
        loadBitmap(imageView6, R.drawable.ic_orb_object_2);
        loadBitmap(imageView7, R.drawable.ic_orb_object_3);
        loadBitmap(imageView8, R.drawable.ic_orb_object_4);
        loadBitmap(imageView9, R.drawable.ic_orb_object_5);
        loadBitmap(imageView10, R.drawable.ic_orb_object_6);
        loadBitmap(imageView11, R.drawable.ic_orb_dotted_1);
        loadBitmap(imageView12, R.drawable.ic_orb_dotted_2);
        loadBitmap(imageView13, R.drawable.ic_orb_dotted_3);
        ImageView imageView29 = imageView14;
        loadBitmap(imageView29, R.drawable.ic_orb_dotted_4);
        loadBitmap(imageView15, R.drawable.ic_orb_ellipse_1);
        loadBitmap(imageView16, R.drawable.ic_orb_ellipse_2);
        loadBitmap(imageView17, R.drawable.ic_orb_dash_1);
        loadBitmap(imageView18, R.drawable.ic_orb_dash_2);
        loadBitmap(imageView19, R.drawable.ic_orb_dash_4);
        loadBitmap(imageView20, R.drawable.ic_orb_10);
        loadBitmap(imageView21, R.drawable.ic_orb_12);
        loadBitmap(imageView22, R.drawable.ic_orb_16);
        loadBitmap(imageView23, R.drawable.ic_orb_24);
        loadBitmap(imageView24, R.drawable.ic_orb_32);
        loadBitmap(imageView25, R.drawable.ic_orb_36);
        ImageView imageView30 = imageView26;
        loadBitmap(imageView30, R.drawable.ic_orb_ellipse_3);
        List<ImageView> list = this.viewList;
        if (list != null) {
            Iterator<ImageView> it = list.iterator();
            while (it.hasNext()) {
                Iterator<ImageView> it2 = it;
                ImageView next = it.next();
                ImageView imageView31 = imageView30;
                int id = next.getId();
                ImageView imageView32 = imageView29;
                ImageView imageView33 = imageView12;
                Bitmap bitmap = (id == R.id.ic_orb_ring_2 || id == R.id.ic_orb_ring_3) ? this.bitmapMaps.get(Integer.valueOf(R.id.ic_orb_ring_1)) : this.bitmapMaps.get(Integer.valueOf(id));
                if (bitmap != null) {
                    next.setImageBitmap(bitmap);
                }
                imageView29 = imageView32;
                it = it2;
                imageView12 = imageView33;
                imageView30 = imageView31;
            }
        }
        ImageView imageView34 = imageView30;
        ImageView imageView35 = imageView29;
        ImageView imageView36 = imageView12;
        View viewFindViewById = view.findViewById(R.id.orb_10);
        View viewFindViewById2 = view.findViewById(R.id.orb_12);
        View viewFindViewById3 = view.findViewById(R.id.orb_16);
        View viewFindViewById4 = view.findViewById(R.id.orb_24);
        View viewFindViewById5 = view.findViewById(R.id.orb_32);
        View viewFindViewById6 = view.findViewById(R.id.orb_36);
        ArrayList arrayList = new ArrayList();
        arrayList.add(createInfiniteAnimator(imageView2, 10000L, "scaleX", 1.0f, 1.15f, 1.0f));
        arrayList.add(createInfiniteAnimator(imageView2, 10000L, "scaleY", 1.0f, 1.15f, 1.0f));
        arrayList.add(createRotationAnimator(imageView3, true));
        arrayList.add(createRotationAnimator(imageView4, false));
        arrayList.add(createRotationAnimator(imageView5, true));
        arrayList.add(createRotationAnimator(imageView6, false));
        arrayList.add(createRotationAnimator(imageView7, true));
        arrayList.add(createRotationAnimator(imageView8, false));
        arrayList.add(createRotationAnimator(imageView9, true));
        arrayList.add(createRotationAnimator(imageView10, false));
        arrayList.add(createRotationAnimator(imageView11, true));
        arrayList.add(createRotationAnimator(imageView36, false));
        arrayList.add(createRotationAnimator(imageView13, true));
        arrayList.add(createRotationAnimator(imageView35, false));
        arrayList.add(createRotationAnimator(imageView15, true));
        arrayList.add(createRotationAnimator(imageView16, false));
        arrayList.add(createRotationAnimator(imageView17, true));
        arrayList.add(createRotationAnimator(imageView18, false));
        arrayList.add(createRotationAnimator(imageView19, true));
        arrayList.add(createRotationAnimator(viewFindViewById, true));
        arrayList.add(createRotationAnimator(viewFindViewById2, false));
        arrayList.add(createRotationAnimator(viewFindViewById3, true));
        arrayList.add(createRotationAnimator(viewFindViewById4, false));
        arrayList.add(createRotationAnimator(viewFindViewById5, true));
        arrayList.add(createRotationAnimator(viewFindViewById6, false));
        arrayList.add(createRotationAnimator(imageView34, true));
        arrayList.add(createRotationAnimator(imageView27, false));
        arrayList.add(createRotationAnimator(imageView28, true));
        this.animatorSet = new AnimatorSet();
        this.animatorSet.playTogether(arrayList);
    }

    public Bitmap loadBitmap(ImageView imageView, int i) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(getResources(), i, options);
        options.inSampleSize = getSampleSize(options, imageView.getWidth(), imageView.getHeight());
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.ALPHA_8;
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), i, options);
        this.viewList.add(imageView);
        this.bitmapMaps.put(Integer.valueOf(imageView.getId()), bitmapDecodeResource);
        return bitmapDecodeResource;
    }

    public static int getSampleSize(BitmapFactory.Options options, int i, int i2) {
        if (i == 0 || i2 == 0 || options == null) {
            return 1;
        }
        int i3 = options.outWidth / i;
        int i4 = options.outHeight / i2;
        return i3 >= i4 ? i4 : i3;
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        builder.extraParam("coldStart", Boolean.valueOf(getBooleanParam("onBoarding")));
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onProfileChanged(EventLogProfileResponse eventLogProfileResponse, boolean z) {
        this.eventLogProfileService.removeListener(this);
        this.eventProfileGot = true;
        if (this.pendingStart) {
            Utils.post(new Runnable() { // from class: com.narvii.account.LoginOrSignupFragment.9
                @Override // java.lang.Runnable
                public void run() {
                    LoginOrSignupFragment.this.clickStartButton();
                }
            });
        }
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onRequestFailed(String str, boolean z) {
        this.eventLogProfileService.removeListener(this);
        this.eventProfileGot = true;
        if (this.pendingStart) {
            Utils.post(new Runnable() { // from class: com.narvii.account.LoginOrSignupFragment.10
                @Override // java.lang.Runnable
                public void run() {
                    LoginOrSignupFragment.this.clickStartButton();
                }
            });
        }
    }
}

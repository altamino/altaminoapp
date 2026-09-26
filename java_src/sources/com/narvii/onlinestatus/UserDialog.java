package com.narvii.onlinestatus;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.NVObject;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.user.title.UserTitleFlowView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.MoodView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class UserDialog extends NVDialog {
    public static final int CLICK_FLAG = 3;
    public static final int CLICK_KICK = 4;
    public static final int CLICK_PROFILE = 2;
    public static final int CLICK_REMOVE_PRESENTER = 6;
    public static final int CLICK_START_CHAT = 1;
    public static final int CLICK_STOP_PRESENTING = 5;
    public static final int LEAVE_CHAT_SUCCESS = 7;
    protected TextView aminoId;
    protected UserDialogClickListener clickListener;
    private View contentView;
    private Context context;
    String error;
    private View errorRetry;
    private View errorView;
    View.OnClickListener l;
    private View progressView;
    public String source;
    protected User user;
    private UserResponse userResponse;
    UserTitleFlowView userTitleFlowView;

    public interface UserDialogClickListener {
        void onClicked(int i10, NVObject nVObject);
    }

    private boolean isUserOnline(User user) {
        return user != null && user.onlineStatus == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retry() {
        this.error = null;
        updateViews();
        sendUserRequest();
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "MiniUserProfile";
    }

    public void initView() {
    }

    protected boolean isFlagable() {
        return true;
    }

    protected int layoutId() {
        return R.layout.online_user_dialog;
    }

    public void setOnClickListener(UserDialogClickListener userDialogClickListener) {
        this.clickListener = userDialogClickListener;
    }

    private void sendUserRequest() {
        if (this.user == null) {
            return;
        }
        ((ApiService) Utils.getNVContext(getContext()).getService("api")).exec(ApiRequest.builder().path("/user-profile/" + this.user.uid()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.onlinestatus.UserDialog.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                super.onFinish(apiRequest, userResponse);
                UserDialog.this.userResponse = userResponse;
                UserDialog userDialog = UserDialog.this;
                userDialog.user = userDialog.userResponse.user;
                UserDialog.this.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                UserDialog userDialog = UserDialog.this;
                userDialog.error = str;
                userDialog.updateViews();
            }
        });
    }

    public void onFlagClicked(NVContext nVContext) {
        new FlagReportOptionDialog.Builder(nVContext).nvObject(this.user).miniProfile(true).build().show();
    }

    /* JADX WARN: Code duplicated, block: B:83:0x01dc  */
    protected void updateViews() {
        boolean z6;
        String str;
        TextView textView = this.aminoId;
        if (textView != null) {
            User user = this.user;
            if (user == null || TextUtils.isEmpty(user.aminoId)) {
                str = "";
            } else {
                str = MentionedEditText.DEFAULT_METION_TAG + this.user.aminoId;
            }
            textView.setText(str);
            TextView textView2 = this.aminoId;
            User user2 = this.user;
            textView2.setVisibility(android.text.TextUtils.isEmpty(user2 == null ? null : user2.aminoId) ? 8 : 0);
        }
        this.progressView.setVisibility((this.userResponse == null && android.text.TextUtils.isEmpty(this.error)) ? 0 : 8);
        this.errorView.setVisibility(!android.text.TextUtils.isEmpty(this.error) ? 0 : 8);
        this.contentView.setVisibility(this.userResponse != null ? 0 : 8);
        UserTitleFlowView userTitleFlowView = (UserTitleFlowView) findViewById(R.id.user_title_flow);
        this.userTitleFlowView = userTitleFlowView;
        userTitleFlowView.setUser(this.user);
        UserTitleFlowView userTitleFlowView2 = this.userTitleFlowView;
        userTitleFlowView2.setVisibility(userTitleFlowView2.getChildCount() == 0 ? 8 : 0);
        View viewFindViewById = findViewById(R.id.amino_staff_badge);
        boolean zNodeBoolean = JacksonUtils.nodeBoolean(this.user.extensions, "isMemberOfTeamAmino");
        viewFindViewById.setVisibility(zNodeBoolean ? 0 : 4);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onlinestatus.UserDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AlertDialog.Builder builder = new AlertDialog.Builder(UserDialog.this.getContext());
                builder.setMessage(R.string.amino_staff_message);
                builder.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                builder.show();
            }
        });
        NVContext nVContext = Utils.getNVContext(getContext());
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        userAvatarLayout.setNoBadge(zNodeBoolean);
        userAvatarLayout.setUser(this.user);
        findViewById(R.id.avatar).setOnClickListener(this.l);
        ((NVImageView) findViewById(R.id.avatar)).setStrokeColor((this.user.isSubscribeMemberShip() && new CommunityConfigHelper(nVContext).isPremiumFeatureEnabled()) ? -18123 : -1);
        ((NicknameView) findViewById(R.id.nickname)).setUser(this.user);
        String strCompactContent = TextUtils.compactContent(this.user.content);
        if (android.text.TextUtils.isEmpty(strCompactContent)) {
            findViewById(R.id.content).setVisibility(this.user.onlineStatus == 1 ? 0 : 8);
        } else {
            ((TextView) findViewById(R.id.content)).setText(strCompactContent);
            findViewById(R.id.content).setVisibility(android.text.TextUtils.isEmpty(strCompactContent) ? 8 : 0);
        }
        MoodView moodView = (MoodView) findViewById(R.id.mood);
        moodView.setAnimate(true);
        moodView.setVisibility((!isUserOnline(this.user) || Sticker.isEmpty(this.user.getMoodSticker())) ? 4 : 0);
        moodView.setMoodSticker(this.user);
        findViewById(R.id.online_status_oval).setVisibility((isUserOnline(this.user) && Sticker.isEmpty(this.user.getMoodSticker())) ? 0 : 4);
        findViewById(R.id.online_user_start_chat).setOnClickListener(this.l);
        findViewById(R.id.online_user_profile).setOnClickListener(this.l);
        findViewById(R.id.stub3).setOnClickListener(this.l);
        User userProfile = ((AccountService) nVContext.getService("account")).getUserProfile();
        User user3 = this.user;
        if (user3 != null) {
            z6 = Utils.isEqualsNotNull(user3.uid(), userProfile != null ? userProfile.uid() : null);
        }
        findViewById(R.id.flag).setVisibility((!isFlagable() || z6) ? 4 : 0);
        findViewById(R.id.flag).setOnClickListener(this.l);
    }

    public UserDialog(Context context, User user) {
        super(context, R.style.CustomDialogWithAnimation);
        this.l = new View.OnClickListener() { // from class: com.narvii.onlinestatus.UserDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UserDialogClickListener userDialogClickListener;
                if (view.getId() == R.id.online_user_start_chat) {
                    LogEvent.clickWildcardBuilder(UserDialog.this, "StartChat").send();
                    UserDialog userDialog = UserDialog.this;
                    UserDialogClickListener userDialogClickListener2 = userDialog.clickListener;
                    if (userDialogClickListener2 != null) {
                        userDialogClickListener2.onClicked(1, userDialog.user);
                    }
                } else if (view.getId() != R.id.online_user_profile && view.getId() != R.id.avatar) {
                    if (view.getId() == R.id.flag && (userDialogClickListener = UserDialog.this.clickListener) != null) {
                        userDialogClickListener.onClicked(3, null);
                    }
                } else {
                    LogEvent.clickBuilder(UserDialog.this, ActSemantic.checkDetail).area("ProfileButton").object(UserDialog.this.user).send();
                    UserDialogClickListener userDialogClickListener3 = UserDialog.this.clickListener;
                    if (userDialogClickListener3 != null) {
                        userDialogClickListener3.onClicked(2, null);
                    }
                }
                UserDialog.this.dismiss();
            }
        };
        if (user == null) {
            dismiss();
            return;
        }
        this.context = context;
        this.user = user;
        setContentView(layoutId());
        this.progressView = findViewById(R.id.request_progress);
        this.contentView = findViewById(R.id.content_container);
        this.errorView = findViewById(R.id.error_container);
        View viewFindViewById = findViewById(R.id.retry);
        this.errorRetry = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onlinestatus.UserDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UserDialog.this.retry();
            }
        });
        this.aminoId = (TextView) findViewById(R.id.amino_id);
        sendUserRequest();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        int i10;
        super.show();
        View viewFindViewById = findViewById(R.id.stub2);
        boolean zIsLandscape = Utils.isLandscape(getContext());
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        if (zIsLandscape) {
            i10 = getContext().getResources().getDisplayMetrics().heightPixels;
        } else {
            i10 = getContext().getResources().getDisplayMetrics().widthPixels;
        }
        layoutParams.width = (int) (i10 - Utils.dpToPx(getContext(), 20.0f));
        viewFindViewById.setLayoutParams(layoutParams);
        viewFindViewById.startAnimation(AnimationUtils.loadAnimation(this.context, R.anim.slide_up));
    }
}

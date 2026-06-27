package com.narvii.onlinestatus;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.user.title.UserTitleFlowView;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes3.dex */
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
        void onClicked(int i, NVObject nVObject);
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
                } else if (view.getId() == R.id.online_user_profile || view.getId() == R.id.avatar) {
                    LogEvent.clickBuilder(UserDialog.this, ActSemantic.checkDetail).area("ProfileButton").object(UserDialog.this.user).send();
                    UserDialogClickListener userDialogClickListener3 = UserDialog.this.clickListener;
                    if (userDialogClickListener3 != null) {
                        userDialogClickListener3.onClicked(2, null);
                    }
                } else if (view.getId() == R.id.flag && (userDialogClickListener = UserDialog.this.clickListener) != null) {
                    userDialogClickListener.onClicked(3, null);
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
        this.errorRetry = findViewById(R.id.retry);
        this.errorRetry.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onlinestatus.UserDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UserDialog.this.retry();
            }
        });
        this.aminoId = (TextView) findViewById(R.id.amino_id);
        sendUserRequest();
    }

    public void setOnClickListener(UserDialogClickListener userDialogClickListener) {
        this.clickListener = userDialogClickListener;
    }

    public void onFlagClicked(NVContext nVContext) {
        new FlagReportOptionDialog.Builder(nVContext).nvObject(this.user).miniProfile(true).build().show();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        View viewFindViewById = findViewById(R.id.stub2);
        boolean zIsLandscape = Utils.isLandscape(getContext());
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        layoutParams.width = (int) ((zIsLandscape ? getContext().getResources().getDisplayMetrics().heightPixels : getContext().getResources().getDisplayMetrics().widthPixels) - Utils.dpToPx(getContext(), 20.0f));
        viewFindViewById.setLayoutParams(layoutParams);
        viewFindViewById.startAnimation(AnimationUtils.loadAnimation(this.context, R.anim.slide_up));
    }

    private boolean isUserOnline(User user) {
        return user != null && user.onlineStatus == 1;
    }

    private void sendUserRequest() {
        if (this.user == null) {
            return;
        }
        ((ApiService) Utils.getNVContext(getContext()).getService("api")).exec(ApiRequest.builder().path("/user-profile/" + this.user.uid()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.onlinestatus.UserDialog.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) userResponse);
                UserDialog.this.userResponse = userResponse;
                UserDialog userDialog = UserDialog.this;
                userDialog.user = userDialog.userResponse.user;
                UserDialog.this.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                UserDialog userDialog = UserDialog.this;
                userDialog.error = str;
                userDialog.updateViews();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void updateViews() {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.onlinestatus.UserDialog.updateViews():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retry() {
        this.error = null;
        updateViews();
        sendUserRequest();
    }
}

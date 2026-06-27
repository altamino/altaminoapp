package com.narvii.poweruser.strike;

import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.EditText;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.chat.template.MessageTemplate;
import com.narvii.chat.template.MessageTemplateListResponse;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.model.Blog;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Comment;
import com.narvii.model.Community;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.poweruser.SectionSeekBar;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class StrikeWarningFragment extends NVFragment implements View.OnClickListener {
    private static final int DURATION_ANIMATION = 200;
    private static final String QUERY_TYPE_STRIKE = "strike";
    private static final String QUERY_TYPE_WARNING = "warning";
    private static final int STEP_ENTRY_SELECT = 0;
    private static final int STEP_OPERATION_EDIT = 1;
    ApiService apiService;
    private View btnBack;
    private View btnOperaStrike;
    private View btnOperaWarning;
    private View btnSubmit;
    private String curTemplateContent;
    private String curTemplateTitle;
    private EditText edtStrikeMessage;
    private View entryContainer;
    private boolean isStrikeMode;
    int mObjType;
    NVObject mObject;
    User mUser;
    int mode;
    private View muteUserContainer;
    private View operationContainer;
    private SparseArray<Integer> sectionStonesHours = new SparseArray<>();
    private SectionSeekBar seekBar;
    private int step;
    public String strikeTemplateError;
    public List<MessageTemplate> strikeTemplateList;
    private NVFlowLayout strikeTypeContainer;
    private View templateErrorContainer;
    private View templateLoading;
    ApiRequest templateRequest;
    private TextView tvOperationTag;
    private TextView tvRecentTime;
    private TextView tvStrikeCount;
    private TextView tvTemplateError;
    private TextView tvWarningCount;
    UserAvatarLayout userAvatarLayout;
    public String warningTemplateError;
    public List<MessageTemplate> warningTemplateList;

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.apiService = (ApiService) getService("api");
        Bundle extras = getActivity().getIntent().getExtras();
        if (extras != null) {
            handleBundle(extras);
        }
        if (bundle != null) {
            this.strikeTemplateList = JacksonUtils.readListAs(bundle.getString("strikeList"), MessageTemplate.class);
            this.warningTemplateList = JacksonUtils.readListAs(bundle.getString("warningList"), MessageTemplate.class);
        }
        configStones();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("strikeList", JacksonUtils.writeAsString(this.strikeTemplateList));
        bundle.putString("warningList", JacksonUtils.writeAsString(this.warningTemplateList));
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_send_strike_entry, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        view.findViewById(R.id.chat_template_close).setOnClickListener(this);
        this.userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
        this.userAvatarLayout.setUser(this.mUser);
        ((NicknameView) view.findViewById(R.id.nickname)).setUser(this.mUser);
        this.tvStrikeCount = (TextView) view.findViewById(R.id.strike_count);
        this.tvWarningCount = (TextView) view.findViewById(R.id.warning_count);
        this.tvRecentTime = (TextView) view.findViewById(R.id.recent_time);
        updateStrikeWarningHistoryView();
        this.entryContainer = view.findViewById(R.id.entry_container);
        this.btnOperaWarning = this.entryContainer.findViewById(R.id.opera_warning);
        this.btnOperaWarning.setOnClickListener(this);
        this.btnOperaStrike = this.entryContainer.findViewById(R.id.opera_strike);
        this.btnOperaStrike.setOnClickListener(this);
        this.operationContainer = view.findViewById(R.id.operation_container);
        this.tvOperationTag = (TextView) this.operationContainer.findViewById(R.id.operation_tag);
        this.strikeTypeContainer = (NVFlowLayout) this.operationContainer.findViewById(R.id.strike_warning_type);
        this.edtStrikeMessage = (EditText) this.operationContainer.findViewById(R.id.strike_edit);
        this.edtStrikeMessage.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (view2.getId() == R.id.strike_edit) {
                    view2.getParent().requestDisallowInterceptTouchEvent(true);
                    if ((motionEvent.getAction() & 255) == 1) {
                        view2.getParent().requestDisallowInterceptTouchEvent(false);
                    }
                }
                return false;
            }
        });
        this.seekBar = (SectionSeekBar) this.operationContainer.findViewById(R.id.seek_bar);
        this.seekBar.setCustomSectionTextArray(new SectionSeekBar.CustomSectionTextArray() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.2
            @Override // com.narvii.poweruser.SectionSeekBar.CustomSectionTextArray
            public SparseArray<String> onCustomize(int i, SparseArray<String> sparseArray) {
                sparseArray.clear();
                for (int i2 = 0; i2 < StrikeWarningFragment.this.sectionStonesHours.size(); i2++) {
                    sparseArray.put(i2, StrikeWarningFragment.this.sectionStonesHours.valueAt(i2) + "h");
                }
                return sparseArray;
            }
        });
        this.btnBack = this.operationContainer.findViewById(R.id.back);
        this.btnBack.setOnClickListener(this);
        this.btnSubmit = this.operationContainer.findViewById(R.id.submit);
        this.btnSubmit.setOnClickListener(this);
        this.muteUserContainer = view.findViewById(R.id.mute_user_container);
        this.templateErrorContainer = view.findViewById(R.id.template_error_container);
        this.templateErrorContainer.setOnClickListener(this);
        this.templateLoading = view.findViewById(R.id.template_request_progress);
        this.tvTemplateError = (TextView) view.findViewById(R.id.error);
        this.templateLoading = view.findViewById(R.id.template_request_progress);
        this.operationContainer.setVisibility(4);
        this.entryContainer.setVisibility(0);
        User user = this.mUser;
        if (user == null || user.adminInfo != null) {
            return;
        }
        queryUserInfo();
    }

    private void queryUserInfo() {
        this.apiService.exec(new ApiRequest.Builder().path("/user-profile/" + this.mUser.uid()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                StrikeWarningFragment strikeWarningFragment;
                User user;
                super.onFinish(apiRequest, (ApiRequest) userResponse);
                User user2 = userResponse.user;
                if (user2 == null || (user = (strikeWarningFragment = StrikeWarningFragment.this).mUser) == null) {
                    return;
                }
                user.adminInfo = user2.adminInfo;
                strikeWarningFragment.updateStrikeWarningHistoryView();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStrikeWarningHistoryView() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        User user = this.mUser;
        int strikeCount = user == null ? 0 : user.getStrikeCount();
        String string = getString(R.string.one_strike);
        int i = -16724355;
        if (strikeCount < 1) {
            string = getString(R.string.n_strikes, String.valueOf(strikeCount));
        } else if (strikeCount == 1) {
            i = -678365;
            string = getString(R.string.one_strike);
        } else if (strikeCount > 1) {
            i = -3145189;
            string = getString(R.string.n_strikes, String.valueOf(strikeCount));
        }
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 4.0f));
        this.tvStrikeCount.setText(string);
        this.tvStrikeCount.setBackgroundDrawable(gradientDrawable);
        this.tvStrikeCount.setVisibility(this.mUser.adminInfo == null ? 4 : 0);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(-34816);
        gradientDrawable2.setCornerRadius(Utils.dpToPx(getContext(), 4.0f));
        int warningCount = this.mUser.getWarningCount();
        this.tvWarningCount.setText(warningCount == 1 ? getString(R.string.one_warning) : getString(R.string.n_warnings, String.valueOf(this.mUser.getWarningCount())));
        this.tvWarningCount.setBackgroundDrawable(gradientDrawable2);
        this.tvWarningCount.setVisibility(warningCount == 0 ? 8 : 0);
        Date lastWarningOrStrikeTime = this.mUser.getLastWarningOrStrikeTime();
        this.tvRecentTime.setText(lastWarningOrStrikeTime == null ? null : DateTimeFormatter.getInstance(getContext()).format(lastWarningOrStrikeTime));
        this.tvRecentTime.setVisibility(lastWarningOrStrikeTime == null ? 8 : 0);
    }

    private void configStones() {
        this.sectionStonesHours.put(0, 1);
        this.sectionStonesHours.put(1, 3);
        this.sectionStonesHours.put(2, 6);
        this.sectionStonesHours.put(3, 12);
        this.sectionStonesHours.put(4, 24);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.back /* 2131296514 */:
                enterOperationSelectPage();
                break;
            case R.id.chat_template_close /* 2131296777 */:
                if (getActivity() != null) {
                    getActivity().finish();
                    break;
                }
                break;
            case R.id.opera_strike /* 2131298254 */:
                enterOperationEditPage(true);
                break;
            case R.id.opera_warning /* 2131298255 */:
                enterOperationEditPage(false);
                break;
            case R.id.submit /* 2131299091 */:
                sendStrike();
                break;
            case R.id.template_error_container /* 2131299153 */:
                this.warningTemplateError = null;
                this.strikeTemplateError = null;
                this.warningTemplateList = null;
                this.strikeTemplateList = null;
                sendNoticeTemplateRequest(this.isStrikeMode ? QUERY_TYPE_STRIKE : "warning");
                break;
        }
    }

    public boolean onBackPressed() {
        if (this.step != 1) {
            return false;
        }
        this.step = 0;
        cancelNoticeTemplateRequest();
        enterOperationSelectPage();
        return true;
    }

    private void enterOperationSelectPage() {
        this.step = 0;
        this.curTemplateTitle = null;
        this.curTemplateContent = null;
        this.isStrikeMode = false;
        onTemplateSelected(null);
        SoftKeyboard.hideSoftKeyboard(this.edtStrikeMessage);
        TranslateAnimation translateAnimation = new TranslateAnimation(1, -1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        if (Utils.isRtl()) {
            translateAnimation = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        }
        translateAnimation.setDuration(200L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                StrikeWarningFragment.this.entryContainer.setVisibility(0);
            }
        });
        this.entryContainer.startAnimation(translateAnimation);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(1, 0.0f, 1, 1.0f, 1, 0.0f, 1, 0.0f);
        if (Utils.isRtl()) {
            translateAnimation2 = new TranslateAnimation(1, 0.0f, 1, -1.0f, 1, 0.0f, 1, 0.0f);
        }
        translateAnimation2.setDuration(200L);
        translateAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.5
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                StrikeWarningFragment.this.operationContainer.setVisibility(8);
            }
        });
        this.operationContainer.startAnimation(translateAnimation2);
    }

    private void enterOperationEditPage(boolean z) {
        this.isStrikeMode = z;
        this.step = 1;
        sendNoticeTemplateRequest(z ? QUERY_TYPE_STRIKE : "warning");
        updateOperationView();
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, -1.0f, 1, 0.0f, 1, 0.0f);
        if (Utils.isRtl()) {
            translateAnimation = new TranslateAnimation(1, 0.0f, 1, 1.0f, 1, 0.0f, 1, 0.0f);
        }
        translateAnimation.setDuration(200L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.6
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                StrikeWarningFragment.this.entryContainer.setVisibility(8);
            }
        });
        this.entryContainer.startAnimation(translateAnimation);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        if (Utils.isRtl()) {
            translateAnimation2 = new TranslateAnimation(1, -1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        }
        translateAnimation2.setDuration(200L);
        translateAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.7
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                StrikeWarningFragment.this.operationContainer.setVisibility(0);
            }
        });
        translateAnimation2.setStartOffset(50L);
        this.operationContainer.startAnimation(translateAnimation2);
    }

    private void updateOperationView() {
        this.tvOperationTag.setTextColor(-1);
        this.tvOperationTag.setText(this.isStrikeMode ? R.string.strike : R.string.warning);
        this.tvOperationTag.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), this.isStrikeMode ? R.drawable.strike_tag_red_bg : R.drawable.strike_tag_warning_bg));
        this.muteUserContainer.setVisibility(this.isStrikeMode ? 0 : 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStrikeTemplateViews() {
        if (isAdded()) {
            String str = this.isStrikeMode ? this.strikeTemplateError : this.warningTemplateError;
            List<MessageTemplate> list = this.isStrikeMode ? this.strikeTemplateList : this.warningTemplateList;
            int i = 8;
            this.templateLoading.setVisibility((list == null && TextUtils.isEmpty(str)) ? 0 : 8);
            this.templateErrorContainer.setVisibility(!TextUtils.isEmpty(str) ? 0 : 8);
            this.tvTemplateError.setText(str);
            NVFlowLayout nVFlowLayout = this.strikeTypeContainer;
            if (list != null && TextUtils.isEmpty(str)) {
                i = 0;
            }
            nVFlowLayout.setVisibility(i);
            if (list != null) {
                this.strikeTypeContainer.removeAllViews();
                for (final MessageTemplate messageTemplate : list) {
                    View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_strike_template_item, (ViewGroup) this.strikeTypeContainer, false);
                    boolean zIsEqualsNotNull = Utils.isEqualsNotNull(this.curTemplateTitle, messageTemplate.title);
                    TextView textView = (TextView) viewInflate.findViewById(R.id.content);
                    textView.setText(messageTemplate.title);
                    textView.setTextColor(zIsEqualsNotNull ? -1 : -9342087);
                    textView.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), zIsEqualsNotNull ? R.drawable.strike_warning_bg_checked : R.drawable.strike_warning_bg));
                    viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.8
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (!StrikeWarningFragment.this.messageChanged()) {
                                StrikeWarningFragment.this.onTemplateSelected(messageTemplate);
                                return;
                            }
                            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(StrikeWarningFragment.this.getContext());
                            aCMAlertDialog.setMessage(R.string.strike_change_template_hint);
                            aCMAlertDialog.addButton(R.string.no, (View.OnClickListener) null, -4473925);
                            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.8.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view2) {
                                    AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                                    StrikeWarningFragment.this.onTemplateSelected(messageTemplate);
                                }
                            });
                            aCMAlertDialog.show();
                        }
                    });
                    viewInflate.setTag(R.id.strike_template_tag, messageTemplate.title);
                    this.strikeTypeContainer.addView(viewInflate);
                }
                onTemplateSelected(list.get(list.size() - 1));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTemplateSelected(MessageTemplate messageTemplate) {
        this.curTemplateTitle = messageTemplate == null ? null : messageTemplate.title;
        this.curTemplateContent = messageTemplate == null ? null : messageTemplate.content;
        this.edtStrikeMessage.setText(messageTemplate != null ? messageTemplate.content : null);
        updateTagViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean messageChanged() {
        List<MessageTemplate> list = this.isStrikeMode ? this.strikeTemplateList : this.warningTemplateList;
        if (TextUtils.isEmpty(this.curTemplateTitle) || list == null) {
            return false;
        }
        for (MessageTemplate messageTemplate : list) {
            if (Utils.isEqualsNotNull(messageTemplate.title, this.curTemplateTitle)) {
                if (Utils.isEquals(messageTemplate.content, this.edtStrikeMessage.getText().toString())) {
                    return false;
                }
                return (TextUtils.isEmpty(messageTemplate.content) && TextUtils.isEmpty(this.edtStrikeMessage.getText().toString())) ? false : true;
            }
        }
        return false;
    }

    private void updateTagViews() {
        NVFlowLayout nVFlowLayout = this.strikeTypeContainer;
        if (nVFlowLayout == null || nVFlowLayout.getChildCount() == 0) {
            return;
        }
        for (int i = 0; i < this.strikeTypeContainer.getChildCount(); i++) {
            View childAt = this.strikeTypeContainer.getChildAt(i);
            boolean zIsEqualsNotNull = Utils.isEqualsNotNull(this.curTemplateTitle, childAt.getTag(R.id.strike_template_tag));
            TextView textView = (TextView) childAt.findViewById(R.id.content);
            textView.setTextColor(zIsEqualsNotNull ? -1 : -9342087);
            textView.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), zIsEqualsNotNull ? R.drawable.strike_warning_bg_checked : R.drawable.strike_warning_bg));
        }
    }

    private void cancelNoticeTemplateRequest() {
        ApiRequest apiRequest = this.templateRequest;
        if (apiRequest != null) {
            this.apiService.abort(apiRequest);
        }
        this.warningTemplateError = null;
        this.strikeTemplateError = null;
    }

    private void sendNoticeTemplateRequest(String str) {
        List<MessageTemplate> list;
        List<MessageTemplate> list2;
        final boolean zIsEqualsNotNull = Utils.isEqualsNotNull(str, "warning");
        final boolean zIsEqualsNotNull2 = Utils.isEqualsNotNull(str, QUERY_TYPE_STRIKE);
        if (zIsEqualsNotNull && (list2 = this.warningTemplateList) != null && list2.size() > 0) {
            List<MessageTemplate> list3 = this.warningTemplateList;
            onTemplateSelected(list3.get(list3.size() - 1));
            return;
        }
        if (zIsEqualsNotNull2 && (list = this.strikeTemplateList) != null && list.size() > 0) {
            List<MessageTemplate> list4 = this.strikeTemplateList;
            onTemplateSelected(list4.get(list4.size() - 1));
            return;
        }
        updateStrikeTemplateViews();
        Community community = ((CommunityService) getService("community")).getCommunity(((ConfigService) getService("config")).getCommunityId());
        String str2 = community == null ? null : community.primaryLanguage;
        ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/notice/message-template/" + str);
        if (!TextUtils.isEmpty(str2)) {
            builderPath.headers("Accept-Language", str2);
        }
        ((ApiService) getService("api")).exec(builderPath.build(), new ApiResponseListener<MessageTemplateListResponse>(MessageTemplateListResponse.class) { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.9
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MessageTemplateListResponse messageTemplateListResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) messageTemplateListResponse);
                if (zIsEqualsNotNull2) {
                    StrikeWarningFragment.this.strikeTemplateError = null;
                } else if (zIsEqualsNotNull) {
                    StrikeWarningFragment.this.warningTemplateError = null;
                }
                if (zIsEqualsNotNull2) {
                    StrikeWarningFragment.this.strikeTemplateList = messageTemplateListResponse.messageTemplateList;
                } else if (zIsEqualsNotNull) {
                    StrikeWarningFragment.this.warningTemplateList = messageTemplateListResponse.messageTemplateList;
                }
                StrikeWarningFragment.this.updateStrikeTemplateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list5, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list5, str3, apiResponse, th);
                if (zIsEqualsNotNull2) {
                    StrikeWarningFragment.this.strikeTemplateError = null;
                } else if (zIsEqualsNotNull) {
                    StrikeWarningFragment.this.warningTemplateError = null;
                }
                StrikeWarningFragment.this.updateStrikeTemplateViews();
            }
        });
    }

    private void handleBundle(Bundle bundle) {
        this.mObjType = bundle.getInt("attachType");
        String string = bundle.getString("attachObject");
        this.mode = bundle.getInt("launchMode", 0);
        int i = this.mObjType;
        if (i == 0) {
            this.mObject = (NVObject) JacksonUtils.readAs(string, User.class);
            NVObject nVObject = this.mObject;
            this.mUser = nVObject != null ? (User) nVObject : null;
            return;
        }
        if (i == 1) {
            this.mObject = (NVObject) JacksonUtils.readAs(string, Blog.class);
            NVObject nVObject2 = this.mObject;
            if (nVObject2 != null) {
                this.mUser = ((Blog) nVObject2).author;
                return;
            }
            return;
        }
        if (i == 2) {
            this.mObject = (NVObject) JacksonUtils.readAs(string, Item.class);
            NVObject nVObject3 = this.mObject;
            if (nVObject3 != null) {
                this.mUser = ((Item) nVObject3).author;
                return;
            }
            return;
        }
        if (i == 3) {
            this.mObject = (NVObject) JacksonUtils.readAs(string, Comment.class);
            NVObject nVObject4 = this.mObject;
            if (nVObject4 != null) {
                this.mUser = ((Comment) nVObject4).author;
                return;
            }
            return;
        }
        if (i == 7) {
            this.mObject = (NVObject) JacksonUtils.readAs(string, ChatMessage.class);
            NVObject nVObject5 = this.mObject;
            if (nVObject5 != null) {
                this.mUser = ((ChatMessage) nVObject5).author;
                return;
            }
            return;
        }
        if (i == 12) {
            this.mObject = (NVObject) JacksonUtils.readAs(string, ChatThread.class);
            NVObject nVObject6 = this.mObject;
            if (nVObject6 != null) {
                this.mUser = ((ChatThread) nVObject6).owner();
                return;
            }
            return;
        }
        if (i != 109) {
            return;
        }
        this.mObject = (NVObject) JacksonUtils.readAs(string, SharedFile.class);
        NVObject nVObject7 = this.mObject;
        if (nVObject7 != null) {
            this.mUser = ((SharedFile) nVObject7).author;
        }
    }

    private void sendStrike() {
        String string = this.edtStrikeMessage.getText().toString();
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string.trim()) || string.length() < 3) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.reason_for_ban_three_words_required);
            aCMAlertDialog.addButton(android.R.string.ok, null);
            aCMAlertDialog.show();
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ApiRequest.Builder builderPath = new ApiRequest.Builder().post().path("/notice");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("uid", this.mObject.uid());
        objectNodeCreateObjectNode.put("title", this.curTemplateTitle);
        objectNodeCreateObjectNode.put("content", string);
        objectNodeCreateObjectNode.put("attachedObject", getAttachObjectNode());
        objectNodeCreateObjectNode.put("penaltyType", this.isStrikeMode ? 1 : 0);
        if (this.isStrikeMode) {
            Integer num = this.sectionStonesHours.get(this.seekBar.getProgress());
            int iIntValue = InviteMembersFragment.SECOND_HOUR;
            if (num != null) {
                iIntValue = num.intValue() * InviteMembersFragment.SECOND_HOUR;
            }
            objectNodeCreateObjectNode.put("penaltyValue", iIntValue);
        }
        if (!TextUtils.isEmpty(string)) {
            objectNodeCreateObjectNode.put("adminOpNote", JacksonUtils.createObjectNode());
        }
        objectNodeCreateObjectNode.put("noticeType", this.isStrikeMode ? 4 : 7);
        builderPath.body(objectNodeCreateObjectNode);
        builderPath.timeout(2000);
        ((ApiService) getService("api")).exec(builderPath.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.10
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                progressDialog.dismiss();
                if (StrikeWarningFragment.this.getActivity() != null) {
                    StrikeWarningFragment.this.getActivity().finish();
                }
                NVToast.makeText(StrikeWarningFragment.this.getContext(), StrikeWarningFragment.this.getString(R.string.success), 1).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(StrikeWarningFragment.this.getContext(), str, 1).show();
            }
        });
    }

    private ObjectNode getAttachObjectNode() {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, this.mObject.id());
        objectNodeCreateObjectNode.put(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, this.mObject.objectType());
        if (!TextUtils.isEmpty(this.mObject.parentId())) {
            objectNodeCreateObjectNode.put("parentId", this.mObject.parentId());
            NVObject nVObject = this.mObject;
            if (nVObject instanceof Comment) {
                objectNodeCreateObjectNode.put("parentType", ((Comment) nVObject).parentType);
            } else if (nVObject instanceof ChatMessage) {
                objectNodeCreateObjectNode.put("parentType", 12);
            }
        }
        NVObject nVObject2 = this.mObject;
        if (nVObject2 instanceof ChatMessage) {
            objectNodeCreateObjectNode.put("title", ((ChatMessage) nVObject2).content);
            if (((ChatMessage) this.mObject).media() != null) {
                ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
                arrayNodeCreateArrayNode.add(JacksonUtils.DEFAULT_MAPPER.valueToTree(((ChatMessage) this.mObject).media()));
                objectNodeCreateObjectNode.put("mediaList", arrayNodeCreateArrayNode);
            }
        } else if (nVObject2 instanceof Comment) {
            objectNodeCreateObjectNode.put("title", ((Comment) nVObject2).content);
            NVObject nVObject3 = this.mObject;
            if (((Comment) nVObject3).mediaList != null && ((Comment) nVObject3).mediaList.size() != 0) {
                ArrayNode arrayNodeCreateArrayNode2 = JacksonUtils.createArrayNode();
                Iterator<Media> it = ((Comment) this.mObject).mediaList.iterator();
                while (it.hasNext()) {
                    arrayNodeCreateArrayNode2.add(JacksonUtils.DEFAULT_MAPPER.valueToTree(it.next()));
                }
                objectNodeCreateObjectNode.put("mediaList", arrayNodeCreateArrayNode2);
            }
        }
        return objectNodeCreateObjectNode;
    }
}

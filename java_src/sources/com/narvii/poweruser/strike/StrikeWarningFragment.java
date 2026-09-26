package com.narvii.poweruser.strike;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.chat.template.MessageTemplate;
import com.narvii.chat.template.MessageTemplateListResponse;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.master.search.SearchPrefsHelper;
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

/* JADX INFO: loaded from: classes8.dex */
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

    /* JADX INFO: Access modifiers changed from: private */
    public void onTemplateSelected(MessageTemplate messageTemplate) {
        this.curTemplateTitle = messageTemplate == null ? null : messageTemplate.title;
        this.curTemplateContent = messageTemplate == null ? null : messageTemplate.content;
        this.edtStrikeMessage.setText(messageTemplate != null ? messageTemplate.content : null);
        updateTagViews();
    }

    private void cancelNoticeTemplateRequest() {
        ApiRequest apiRequest = this.templateRequest;
        if (apiRequest != null) {
            this.apiService.abort(apiRequest);
        }
        this.warningTemplateError = null;
        this.strikeTemplateError = null;
    }

    private void configStones() {
        this.sectionStonesHours.put(0, 1);
        this.sectionStonesHours.put(1, 3);
        this.sectionStonesHours.put(2, 6);
        this.sectionStonesHours.put(3, 12);
        this.sectionStonesHours.put(4, 24);
    }

    private void enterOperationEditPage(boolean z6) {
        this.isStrikeMode = z6;
        this.step = 1;
        sendNoticeTemplateRequest(z6 ? QUERY_TYPE_STRIKE : "warning");
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

    private void handleBundle(Bundle bundle) {
        this.mObjType = bundle.getInt("attachType");
        String string = bundle.getString("attachObject");
        this.mode = bundle.getInt("launchMode", 0);
        int i10 = this.mObjType;
        if (i10 == 0) {
            NVObject nVObject = (NVObject) JacksonUtils.readAs(string, User.class);
            this.mObject = nVObject;
            this.mUser = nVObject != null ? (User) nVObject : null;
            return;
        }
        if (i10 == 1) {
            NVObject nVObject2 = (NVObject) JacksonUtils.readAs(string, Blog.class);
            this.mObject = nVObject2;
            if (nVObject2 != null) {
                this.mUser = ((Blog) nVObject2).author;
                return;
            }
            return;
        }
        if (i10 == 2) {
            NVObject nVObject3 = (NVObject) JacksonUtils.readAs(string, Item.class);
            this.mObject = nVObject3;
            if (nVObject3 != null) {
                this.mUser = ((Item) nVObject3).author;
                return;
            }
            return;
        }
        if (i10 == 3) {
            NVObject nVObject4 = (NVObject) JacksonUtils.readAs(string, Comment.class);
            this.mObject = nVObject4;
            if (nVObject4 != null) {
                this.mUser = ((Comment) nVObject4).author;
                return;
            }
            return;
        }
        if (i10 == 7) {
            NVObject nVObject5 = (NVObject) JacksonUtils.readAs(string, ChatMessage.class);
            this.mObject = nVObject5;
            if (nVObject5 != null) {
                this.mUser = ((ChatMessage) nVObject5).author;
                return;
            }
            return;
        }
        if (i10 == 12) {
            NVObject nVObject6 = (NVObject) JacksonUtils.readAs(string, ChatThread.class);
            this.mObject = nVObject6;
            if (nVObject6 != null) {
                this.mUser = ((ChatThread) nVObject6).owner();
                return;
            }
            return;
        }
        if (i10 != 109) {
            return;
        }
        NVObject nVObject7 = (NVObject) JacksonUtils.readAs(string, SharedFile.class);
        this.mObject = nVObject7;
        if (nVObject7 != null) {
            this.mUser = ((SharedFile) nVObject7).author;
        }
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

    private void queryUserInfo() {
        this.apiService.exec(new ApiRequest.Builder().path("/user-profile/" + this.mUser.uid()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                StrikeWarningFragment strikeWarningFragment;
                User user;
                super.onFinish(apiRequest, userResponse);
                User user2 = userResponse.user;
                if (user2 == null || (user = (strikeWarningFragment = StrikeWarningFragment.this).mUser) == null) {
                    return;
                }
                user.adminInfo = user2.adminInfo;
                strikeWarningFragment.updateStrikeWarningHistoryView();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }
        });
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
        Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(((ConfigService) getService("config")).getCommunityId());
        String str2 = community == null ? null : community.primaryLanguage;
        ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/notice/message-template/" + str);
        if (!TextUtils.isEmpty(str2)) {
            builderPath.headers("Accept-Language", str2);
        }
        ((ApiService) getService("api")).exec(builderPath.build(), new ApiResponseListener<MessageTemplateListResponse>(MessageTemplateListResponse.class) { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.9
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MessageTemplateListResponse messageTemplateListResponse) throws Exception {
                super.onFinish(apiRequest, messageTemplateListResponse);
                boolean z6 = zIsEqualsNotNull2;
                if (z6) {
                    StrikeWarningFragment.this.strikeTemplateError = null;
                } else if (zIsEqualsNotNull) {
                    StrikeWarningFragment.this.warningTemplateError = null;
                }
                if (z6) {
                    StrikeWarningFragment.this.strikeTemplateList = messageTemplateListResponse.messageTemplateList;
                } else if (zIsEqualsNotNull) {
                    StrikeWarningFragment.this.warningTemplateList = messageTemplateListResponse.messageTemplateList;
                }
                StrikeWarningFragment.this.updateStrikeTemplateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list5, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list5, str3, apiResponse, th);
                if (zIsEqualsNotNull2) {
                    StrikeWarningFragment.this.strikeTemplateError = null;
                } else if (zIsEqualsNotNull) {
                    StrikeWarningFragment.this.warningTemplateError = null;
                }
                StrikeWarningFragment.this.updateStrikeTemplateViews();
            }
        });
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
        objectNodeCreateObjectNode.put("targetUid", this.mObject.uid());
        objectNodeCreateObjectNode.put("title", this.curTemplateTitle);
        objectNodeCreateObjectNode.put("content", string);
        objectNodeCreateObjectNode.put("attachedObject", getAttachObjectNode());
        objectNodeCreateObjectNode.put("penaltyType", this.isStrikeMode ? 1 : 0);
        if (this.isStrikeMode) {
            Integer num = this.sectionStonesHours.get(this.seekBar.getProgress());
            int iIntValue = InviteMembersFragment.SECOND_HOUR;
            if (num != null) {
                iIntValue = InviteMembersFragment.SECOND_HOUR * num.intValue();
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
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(StrikeWarningFragment.this.getContext(), str, 1).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                progressDialog.dismiss();
                if (StrikeWarningFragment.this.getActivity() != null) {
                    StrikeWarningFragment.this.getActivity().finish();
                }
                NVToast.makeText(StrikeWarningFragment.this.getContext(), StrikeWarningFragment.this.getString(R.string.success), 1).show();
            }
        });
    }

    private void updateOperationView() {
        this.tvOperationTag.setTextColor(-1);
        this.tvOperationTag.setText(this.isStrikeMode ? R.string.strike : R.string.warning);
        this.tvOperationTag.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), this.isStrikeMode ? R.drawable.strike_tag_red_bg : R.drawable.strike_tag_warning_bg));
        this.muteUserContainer.setVisibility(this.isStrikeMode ? 0 : 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStrikeWarningHistoryView() {
        String string;
        int i10;
        if (this.mUser == null) {
            this.tvStrikeCount.setVisibility(8);
            this.tvWarningCount.setVisibility(8);
            this.tvRecentTime.setVisibility(8);
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        int strikeCount = this.mUser.getStrikeCount();
        if (strikeCount < 1) {
            string = getString(R.string.n_strikes, String.valueOf(strikeCount));
            i10 = -16724355;
        } else if (strikeCount == 1) {
            string = getString(R.string.one_strike);
            i10 = -678365;
        } else {
            string = getString(R.string.n_strikes, String.valueOf(strikeCount));
            i10 = -3145189;
        }
        gradientDrawable.setColor(i10);
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 4.0f));
        this.tvStrikeCount.setText(string);
        this.tvStrikeCount.setBackgroundDrawable(gradientDrawable);
        this.tvStrikeCount.setVisibility(this.mUser.adminInfo == null ? 4 : 0);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(-34816);
        gradientDrawable2.setCornerRadius(Utils.dpToPx(getContext(), 4.0f));
        int warningCount = this.mUser.getWarningCount();
        this.tvWarningCount.setText(warningCount == 1 ? getString(R.string.one_warning) : getString(R.string.n_warnings, String.valueOf(warningCount)));
        this.tvWarningCount.setBackgroundDrawable(gradientDrawable2);
        this.tvWarningCount.setVisibility(warningCount == 0 ? 8 : 0);
        Date lastWarningOrStrikeTime = this.mUser.getLastWarningOrStrikeTime();
        this.tvRecentTime.setText(lastWarningOrStrikeTime == null ? null : DateTimeFormatter.getInstance(getContext()).format(lastWarningOrStrikeTime));
        this.tvRecentTime.setVisibility(lastWarningOrStrikeTime != null ? 0 : 8);
    }

    private void updateTagViews() {
        NVFlowLayout nVFlowLayout = this.strikeTypeContainer;
        if (nVFlowLayout == null || nVFlowLayout.getChildCount() == 0) {
            return;
        }
        for (int i10 = 0; i10 < this.strikeTypeContainer.getChildCount(); i10++) {
            View childAt = this.strikeTypeContainer.getChildAt(i10);
            boolean zIsEqualsNotNull = Utils.isEqualsNotNull(this.curTemplateTitle, childAt.getTag(R.id.strike_template_tag));
            TextView textView = (TextView) childAt.findViewById(R.id.content);
            textView.setTextColor(zIsEqualsNotNull ? -1 : -9342087);
            textView.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), zIsEqualsNotNull ? R.drawable.strike_warning_bg_checked : R.drawable.strike_warning_bg));
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStrikeTemplateViews() {
        String str;
        List<MessageTemplate> list;
        int i10;
        int i11;
        int i12;
        int i13;
        if (!isAdded()) {
            return;
        }
        boolean z6 = this.isStrikeMode;
        if (z6) {
            str = this.strikeTemplateError;
        } else {
            str = this.warningTemplateError;
        }
        if (z6) {
            list = this.strikeTemplateList;
        } else {
            list = this.warningTemplateList;
        }
        View view = this.templateLoading;
        int i14 = 8;
        if (list == null && TextUtils.isEmpty(str)) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        view.setVisibility(i10);
        View view2 = this.templateErrorContainer;
        if (!TextUtils.isEmpty(str)) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        view2.setVisibility(i11);
        this.tvTemplateError.setText(str);
        NVFlowLayout nVFlowLayout = this.strikeTypeContainer;
        if (list != null && TextUtils.isEmpty(str)) {
            i14 = 0;
        }
        nVFlowLayout.setVisibility(i14);
        if (list != null) {
            this.strikeTypeContainer.removeAllViews();
            for (final MessageTemplate messageTemplate : list) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_strike_template_item, (ViewGroup) this.strikeTypeContainer, false);
                boolean zIsEqualsNotNull = Utils.isEqualsNotNull(this.curTemplateTitle, messageTemplate.title);
                TextView textView = (TextView) viewInflate.findViewById(R.id.content);
                textView.setText(messageTemplate.title);
                if (zIsEqualsNotNull) {
                    i12 = -1;
                } else {
                    i12 = -9342087;
                }
                textView.setTextColor(i12);
                Context context = getContext();
                if (zIsEqualsNotNull) {
                    i13 = R.drawable.strike_warning_bg_checked;
                } else {
                    i13 = R.drawable.strike_warning_bg;
                }
                textView.setBackgroundDrawable(ContextCompat.getDrawable(context, i13));
                viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.8
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        if (!StrikeWarningFragment.this.messageChanged()) {
                            StrikeWarningFragment.this.onTemplateSelected(messageTemplate);
                            return;
                        }
                        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(StrikeWarningFragment.this.getContext());
                        aCMAlertDialog.setMessage(R.string.strike_change_template_hint);
                        aCMAlertDialog.addButton(R.string.no, (View.OnClickListener) null, -4473925);
                        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.8.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view4) {
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        switch (view.getId()) {
            case R.id.back /* 2131362193 */:
                enterOperationSelectPage();
                break;
            case R.id.chat_template_close /* 2131362497 */:
                if (getActivity() != null) {
                    getActivity().finish();
                }
                break;
            case R.id.opera_strike /* 2131364468 */:
                enterOperationEditPage(true);
                break;
            case R.id.opera_warning /* 2131364469 */:
                enterOperationEditPage(false);
                break;
            case R.id.submit /* 2131365368 */:
                sendStrike();
                break;
            case R.id.template_error_container /* 2131365443 */:
                this.warningTemplateError = null;
                this.strikeTemplateError = null;
                this.warningTemplateList = null;
                this.strikeTemplateList = null;
                if (this.isStrikeMode) {
                    str = QUERY_TYPE_STRIKE;
                } else {
                    str = "warning";
                }
                sendNoticeTemplateRequest(str);
                break;
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_send_strike_entry, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("strikeList", JacksonUtils.writeAsString(this.strikeTemplateList));
        bundle.putString("warningList", JacksonUtils.writeAsString(this.warningTemplateList));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        view.findViewById(R.id.chat_template_close).setOnClickListener(this);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
        this.userAvatarLayout = userAvatarLayout;
        userAvatarLayout.setUser(this.mUser);
        ((NicknameView) view.findViewById(R.id.nickname)).setUser(this.mUser);
        this.tvStrikeCount = (TextView) view.findViewById(R.id.strike_count);
        this.tvWarningCount = (TextView) view.findViewById(R.id.warning_count);
        this.tvRecentTime = (TextView) view.findViewById(R.id.recent_time);
        updateStrikeWarningHistoryView();
        View viewFindViewById = view.findViewById(R.id.entry_container);
        this.entryContainer = viewFindViewById;
        View viewFindViewById2 = viewFindViewById.findViewById(R.id.opera_warning);
        this.btnOperaWarning = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        View viewFindViewById3 = this.entryContainer.findViewById(R.id.opera_strike);
        this.btnOperaStrike = viewFindViewById3;
        viewFindViewById3.setOnClickListener(this);
        View viewFindViewById4 = view.findViewById(R.id.operation_container);
        this.operationContainer = viewFindViewById4;
        this.tvOperationTag = (TextView) viewFindViewById4.findViewById(R.id.operation_tag);
        this.strikeTypeContainer = (NVFlowLayout) this.operationContainer.findViewById(R.id.strike_warning_type);
        EditText editText = (EditText) this.operationContainer.findViewById(R.id.strike_edit);
        this.edtStrikeMessage = editText;
        editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.1
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
        SectionSeekBar sectionSeekBar = (SectionSeekBar) this.operationContainer.findViewById(R.id.seek_bar);
        this.seekBar = sectionSeekBar;
        sectionSeekBar.setCustomSectionTextArray(new SectionSeekBar.CustomSectionTextArray() { // from class: com.narvii.poweruser.strike.StrikeWarningFragment.2
            @Override // com.narvii.poweruser.SectionSeekBar.CustomSectionTextArray
            @NonNull
            public SparseArray<String> onCustomize(int i10, @NonNull SparseArray<String> sparseArray) {
                sparseArray.clear();
                for (int i11 = 0; i11 < StrikeWarningFragment.this.sectionStonesHours.size(); i11++) {
                    sparseArray.put(i11, StrikeWarningFragment.this.sectionStonesHours.valueAt(i11) + CmcdHeadersFactory.STREAMING_FORMAT_HLS);
                }
                return sparseArray;
            }
        });
        View viewFindViewById5 = this.operationContainer.findViewById(R.id.back);
        this.btnBack = viewFindViewById5;
        viewFindViewById5.setOnClickListener(this);
        View viewFindViewById6 = this.operationContainer.findViewById(R.id.submit);
        this.btnSubmit = viewFindViewById6;
        viewFindViewById6.setOnClickListener(this);
        this.muteUserContainer = view.findViewById(R.id.mute_user_container);
        View viewFindViewById7 = view.findViewById(R.id.template_error_container);
        this.templateErrorContainer = viewFindViewById7;
        viewFindViewById7.setOnClickListener(this);
        this.templateLoading = view.findViewById(R.id.template_request_progress);
        this.tvTemplateError = (TextView) view.findViewById(R.id.error);
        this.templateLoading = view.findViewById(R.id.template_request_progress);
        this.operationContainer.setVisibility(4);
        this.entryContainer.setVisibility(0);
        User user = this.mUser;
        if (user != null && user.adminInfo == null) {
            queryUserInfo();
        }
    }
}

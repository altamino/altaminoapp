package com.narvii.flag.report;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.compose.runtime.ComposerKt;
import androidx.fragment.app.FragmentActivity;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.flag.model.Flag;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Comment;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.QuizQuestion;
import com.narvii.model.SharedFile;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CommentResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.photos.PhotoManager;
import com.narvii.photos.PhotoUploadListener;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.CheckDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.image.Screenshot;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.FlagItemLayout;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class FlagReportOptionDialog extends AlertDialog {
    private CheckBox blockCheck;
    private View btnSend;
    private FlagPreview flagPreview;
    private String flagReason;
    boolean fullScreen;
    private boolean isGlobalScope;
    View.OnClickListener listener;
    private LinearLayout mFlagOptionLayout;
    private NVContext mNvContext;
    private NVObject mObject;
    private ProgressBar mProgressView;
    private String mediaUrl;
    private boolean miniProfile;
    private String refMediaUrl;
    private int reqFlagType;
    private String reqMsg;
    private String reqObjId;
    private int reqObjType;
    private String reqParentId;
    private int reqParentType;
    private String reqUserId;
    private boolean screenShotFlag;
    private boolean showBlockUser;

    /* JADX INFO: renamed from: com.narvii.flag.report.FlagReportOptionDialog$2, reason: invalid class name */
    class AnonymousClass2 extends FlagRequestDialog<CommentResponse> {
        final /* synthetic */ ConfigService val$config;
        final /* synthetic */ String val$defaultText;

        @Override // com.narvii.flag.report.FlagRequestDialog
        public boolean hasPreBlockRequest() {
            return true;
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public boolean showBlockUser() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Context context, Class cls, ConfigService configService, String str) {
            super(context, cls);
            this.val$config = configService;
            this.val$defaultText = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$execPreBlockRequest$0(Object obj) {
            if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                sendFlagRequest();
            } else {
                screenshotFailed();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$execPreBlockRequest$1() {
            FlagReportOptionDialog.this.uploadCurFlagScreenShoot(new Callback() { // from class: com.narvii.flag.report.c
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f2274a.lambda$execPreBlockRequest$0(obj);
                }
            });
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public ApiRequest.Builder createApiRequestBuilder(String str) {
            ApiRequest.Builder builderPath = ApiRequest.builder().post().communityId(this.val$config.getCommunityId()).path("/blog/" + FlagReportOptionDialog.this.mObject.parentId() + "/comment");
            if (TextUtils.isEmpty(str)) {
                str = this.val$defaultText;
            }
            builderPath.param("content", str);
            if (FlagReportOptionDialog.this.mediaUrl != null) {
                ArrayList arrayList = new ArrayList();
                Media media = new Media();
                media.type = 100;
                media.url = FlagReportOptionDialog.this.mediaUrl;
                media.caption = null;
                arrayList.add(media);
                builderPath.param("mediaList", JacksonUtils.DEFAULT_MAPPER.valueToTree(arrayList));
            }
            return builderPath;
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        protected FlagPreview getFlagPreview() {
            return FlagReportOptionDialog.this.flagPreview;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.flag.report.FlagRequestDialog
        public void onReuqestFinished(CommentResponse commentResponse) {
            ((NotificationCenter) Utils.getNVContext(getContext()).getService("notification")).sendNotification(new Notification("new", commentResponse.comment));
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public void execPreBlockRequest() {
            super.execPreBlockRequest();
            SoftKeyboard.hideSoftKeyboard(getContext());
            Utils.post(new Runnable() { // from class: com.narvii.flag.report.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2275a.lambda$execPreBlockRequest$1();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.narvii.flag.report.FlagReportOptionDialog$3, reason: invalid class name */
    class AnonymousClass3 extends FlagRequestDialog<ApiResponse> {
        final /* synthetic */ ConfigService val$config;

        @Override // com.narvii.flag.report.FlagRequestDialog
        public boolean hasPreBlockRequest() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Context context, Class cls, ConfigService configService) {
            super(context, cls);
            this.val$config = configService;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$execPreBlockRequest$0(Object obj) {
            if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                sendFlagRequest();
            } else {
                screenshotFailed();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$execPreBlockRequest$1() {
            FlagReportOptionDialog.this.uploadCurFlagScreenShoot(new Callback() { // from class: com.narvii.flag.report.f
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f2277a.lambda$execPreBlockRequest$0(obj);
                }
            });
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public ApiRequest.Builder createApiRequestBuilder(String str) {
            int communityId = this.val$config.getCommunityId();
            Bundle bundle = new Bundle();
            if (FlagReportOptionDialog.this.mObject instanceof Community) {
                communityId = ((Community) FlagReportOptionDialog.this.mObject).id;
                bundle.putString("community_id", String.valueOf(communityId));
                bundle.putString("type", SearchPrefsHelper.PREFS_KEY_COMMUNITY);
                bundle.putString("community_name", ((Community) FlagReportOptionDialog.this.mObject).name);
            } else if (FlagReportOptionDialog.this.mObject instanceof Feed) {
                communityId = ((Feed) FlagReportOptionDialog.this.mObject).ndcId;
                bundle.putString("post_id", String.valueOf(communityId));
                bundle.putString("type", "blog");
                bundle.putString("feed_name", ((Feed) FlagReportOptionDialog.this.mObject).title());
            } else if (FlagReportOptionDialog.this.mObject instanceof User) {
                if (((User) FlagReportOptionDialog.this.mObject).isGlobal) {
                    communityId = 0;
                }
                bundle.putString("user_id", String.valueOf(communityId));
                bundle.putString("type", GlobalProfileFragment.KEY_USER);
                bundle.putString("user_name", ((User) FlagReportOptionDialog.this.mObject).nickname());
            } else if (FlagReportOptionDialog.this.mObject instanceof ChatThread) {
                communityId = ((ChatThread) FlagReportOptionDialog.this.mObject).ndcId;
                bundle.putString("chat_id", String.valueOf(communityId));
                bundle.putString("type", "chat");
                bundle.putString("chat_name", ((ChatThread) FlagReportOptionDialog.this.mObject).title);
            } else if (FlagReportOptionDialog.this.mObject instanceof ChatMessage) {
                bundle.putString("chat_id", String.valueOf(communityId));
                bundle.putString("type", AccountNotice.LEVEL_MESSAGE);
                bundle.putString("author_nickname", ((ChatMessage) FlagReportOptionDialog.this.mObject).getAuthor().nickname);
            }
            bundle.putString("reason", Flag.getFlagTypeString(FlagReportOptionDialog.this.reqFlagType));
            FirebaseAnalytics.getInstance(getContext()).a("add_flag", bundle);
            ApiRequest.Builder builderParam = ApiRequest.builder().post().communityId(communityId).path(FlagReportOptionDialog.this.isGlobalScope ? "/g-flag" : "/flag").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, FlagReportOptionDialog.this.reqObjId).param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(FlagReportOptionDialog.this.reqObjType)).param("flagType", Integer.valueOf(FlagReportOptionDialog.this.reqFlagType));
            if (FlagReportOptionDialog.this.reqParentId != null) {
                builderParam.param("parentId", FlagReportOptionDialog.this.reqParentId);
                builderParam.param("parentType", Integer.valueOf(FlagReportOptionDialog.this.reqParentType));
            }
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            if (FlagReportOptionDialog.this.mediaUrl != null) {
                ArrayList arrayList = new ArrayList();
                Media media = new Media();
                media.type = 100;
                media.url = FlagReportOptionDialog.this.mediaUrl;
                media.caption = null;
                arrayList.add(media);
                objectNodeCreateObjectNode.put("mediaList", JacksonUtils.createArrayNode(JacksonUtils.writeAsString(arrayList)));
            }
            builderParam.param("refObject", objectNodeCreateObjectNode);
            builderParam.param(AccountNotice.LEVEL_MESSAGE, str);
            if (!TextUtils.isEmpty(FlagReportOptionDialog.this.refMediaUrl)) {
                builderParam.param("refMediaUrl", FlagReportOptionDialog.this.refMediaUrl);
            }
            return builderParam;
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        protected FlagPreview getFlagPreview() {
            return FlagReportOptionDialog.this.flagPreview;
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public boolean showBlockUser() {
            return FlagReportOptionDialog.this.showBlockUser;
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public void execPreBlockRequest() {
            super.execPreBlockRequest();
            SoftKeyboard.hideSoftKeyboard(getContext());
            Utils.post(new Runnable() { // from class: com.narvii.flag.report.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2276a.lambda$execPreBlockRequest$1();
                }
            });
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public void onSendRequest() {
            String str;
            super.onSendRequest();
            FirebaseLogManager.logEvent(this, "flag for review", FirebaseLogManager.createParams("value", Flag.getFlagTypeString(FlagReportOptionDialog.this.reqFlagType), "source", StatisticHelper.getStatisticSource(this, FlagReportOptionDialog.this.mObject, FlagReportOptionDialog.this.reqObjType), "item_id", FlagReportOptionDialog.this.reqObjId));
            StatisticsEventBuilder statisticsEventBuilderSource = ((StatisticsService) FlagReportOptionDialog.this.mNvContext.getService("statistics")).event("User Flags Post").userPropInc("Flagged Posts Total").source(StatisticHelper.getStatisticSource(FlagReportOptionDialog.this.mNvContext, FlagReportOptionDialog.this.mObject, FlagReportOptionDialog.this.reqObjType));
            if (!TextUtils.isEmpty(FlagReportOptionDialog.this.flagReason)) {
                str = FlagReportOptionDialog.this.flagReason;
            } else {
                str = "Others";
            }
            statisticsEventBuilderSource.param("Reason", str);
        }
    }

    public static class Builder {
        FlagReportOptionDialog optionDialog;

        public FlagReportOptionDialog build() {
            return this.optionDialog;
        }

        public Builder addItem(int i10, View.OnClickListener onClickListener) {
            this.optionDialog.addItem(i10, onClickListener);
            return this;
        }

        public Builder flagPreview(FlagPreview flagPreview) {
            this.optionDialog.flagPreview = flagPreview;
            return this;
        }

        public Builder miniProfile(boolean z6) {
            this.optionDialog.miniProfile = z6;
            return this;
        }

        public Builder nvObject(NVObject nVObject) {
            this.optionDialog.mObject = nVObject;
            if (nVObject instanceof Feed) {
                this.optionDialog.setupFeedOptions((Feed) nVObject);
            } else if (nVObject instanceof Comment) {
                this.optionDialog.setupCommentOptions((Comment) nVObject);
            } else if (nVObject instanceof ChatMessage) {
                this.optionDialog.setupChatMessageOptions((ChatMessage) nVObject);
            } else if (nVObject instanceof ChatThread) {
                this.optionDialog.setupChatThreadOptions((ChatThread) nVObject);
            } else if (nVObject instanceof Community) {
                this.optionDialog.setupCommunityOptions((Community) nVObject);
            } else if (nVObject instanceof User) {
                this.optionDialog.setupUserOptions((User) nVObject);
            } else if (nVObject instanceof QuizQuestion) {
                this.optionDialog.setupQuizQuestionOptions((QuizQuestion) nVObject);
            } else if (nVObject instanceof SharedFile) {
                this.optionDialog.setupSharedFileOptions((SharedFile) nVObject);
            } else if (nVObject instanceof Sticker) {
                this.optionDialog.setupStickerOptions((Sticker) nVObject);
            } else if (nVObject instanceof StickerCollection) {
                this.optionDialog.setupStickerCoellctonOptions((StickerCollection) nVObject);
            } else if (nVObject instanceof StoryTopic) {
                this.optionDialog.setupStoryTopicOptions((StoryTopic) nVObject);
            }
            return this;
        }

        public Builder refMediaUrl(String str) {
            this.optionDialog.refMediaUrl = str;
            return this;
        }

        public Builder screenShotFlag(boolean z6) {
            this.optionDialog.screenShotFlag = z6;
            return this;
        }

        public Builder showBlockUser(boolean z6) {
            this.optionDialog.showBlockUser = z6;
            return this;
        }

        public Builder(NVContext nVContext) {
            this.optionDialog = new FlagReportOptionDialog(nVContext);
        }
    }

    public static class FlagPreview {
        public Media media;
        public String subTitle;
        public String title;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadCurFlagScreenShoot(Callback callback) {
        uploadCurFlagScreenShoot("flag-image", callback);
    }

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(int i10, int i11, View.OnClickListener onClickListener) {
        return addButton(i10, i11, onClickListener);
    }

    public void addItem(String str, int i10, View.OnClickListener onClickListener) {
        FlagItemLayout flagItemLayout = new FlagItemLayout(getContext());
        flagItemLayout.setLeftText(str);
        flagItemLayout.setLeftTextColor(i10);
        flagItemLayout.setBackground(getContext().getResources().getDrawable(R.drawable.dialog_item_green));
        flagItemLayout.setOnClickListener(onClickListener);
        this.mFlagOptionLayout.addView(flagItemLayout);
    }

    private FlagReportOptionDialog(NVContext nVContext) {
        super(nVContext.getContext());
        this.showBlockUser = true;
        this.reqFlagType = 999;
        this.miniProfile = true;
        this.listener = new View.OnClickListener() { // from class: com.narvii.flag.report.FlagReportOptionDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view instanceof FlagItemLayout) {
                    FlagItemLayout flagItemLayout = (FlagItemLayout) view;
                    FlagReportOptionDialog.this.updateCell(flagItemLayout);
                    FlagReportOptionDialog.this.flagReason = flagItemLayout.getLeftText();
                    FlagReportOptionDialog flagReportOptionDialog = FlagReportOptionDialog.this;
                    flagReportOptionDialog.reqFlagType = flagReportOptionDialog.getFlagType(flagItemLayout.getLeftText());
                    FlagReportOptionDialog.this.initReqParam();
                    if (!FlagReportOptionDialog.this.itemEquals(flagItemLayout, R.string.flag_some_post) && !FlagReportOptionDialog.this.itemEquals(flagItemLayout, R.string.flag_some_said)) {
                        FlagReportOptionDialog.this.sendRequest();
                        return;
                    }
                    AlertDialog alertDialog = new AlertDialog(FlagReportOptionDialog.this.getContext());
                    alertDialog.setTitle(FlagReportOptionDialog.this.getContext().getString(R.string.flag_notify_title));
                    alertDialog.setMessage(FlagReportOptionDialog.this.getContext().getString(R.string.flag_notify_message));
                    alertDialog.setTitleColor(Color.rgb(0, ComposerKt.referenceKey, 125));
                    alertDialog.addButton(android.R.string.ok, 4, (View.OnClickListener) null);
                    alertDialog.show();
                }
            }
        };
        this.mNvContext = nVContext;
        this.isGlobalScope = Utils.isGlobalInteractionScope(nVContext);
        setContentView(R.layout.flag_report_dialog_layout);
        this.mFlagOptionLayout = (LinearLayout) findViewById(R.id.flag_report_options_layout);
        setTitle(getContext().getString(R.string.flag_title));
        setTitleColor(Color.rgb(0, ComposerKt.referenceKey, 125));
        this.mProgressView = (ProgressBar) findViewById(R.id.request_progress);
        addButton(getContext().getString(R.string.cancel), 0, new View.OnClickListener() { // from class: com.narvii.flag.report.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2272a.lambda$new$0(view);
            }
        });
        this.mediaUrl = null;
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.dialog_content);
        if (viewGroup != null) {
            viewGroup.setClipChildren(true);
        }
    }

    private void addFlagPreviewView() {
        if (this.flagPreview != null) {
            View viewFindViewById = getLayoutInflater().inflate(R.layout.flag_object_preview, this.mFlagOptionLayout).findViewById(R.id.flag_preview_layout);
            NVImageView nVImageView = (NVImageView) viewFindViewById.findViewById(R.id.icon);
            TextView textView = (TextView) viewFindViewById.findViewById(R.id.title);
            TextView textView2 = (TextView) viewFindViewById.findViewById(R.id.subTitle);
            nVImageView.setImageMedia(this.flagPreview.media);
            textView.setText(this.flagPreview.title);
            textView2.setText(this.flagPreview.subTitle);
        }
    }

    private void hideProgress() {
        this.mProgressView.setVisibility(8);
        this.mFlagOptionLayout.setClickable(true);
        this.btnSend.setClickable(true);
        for (int i10 = 0; i10 < this.mFlagOptionLayout.getChildCount(); i10++) {
            this.mFlagOptionLayout.getChildAt(i10).setClickable(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initReqParam() {
        NVObject nVObject = this.mObject;
        this.reqObjId = nVObject == null ? null : nVObject.id();
        NVObject nVObject2 = this.mObject;
        this.reqObjType = nVObject2 == null ? 0 : nVObject2.objectType();
        NVObject nVObject3 = this.mObject;
        this.reqParentId = nVObject3 == null ? null : nVObject3.parentId();
        NVObject nVObject4 = this.mObject;
        if (nVObject4 instanceof Feed) {
            this.reqMsg = null;
            this.reqUserId = ((Feed) nVObject4).author.uid;
            return;
        }
        if (nVObject4 instanceof Comment) {
            this.reqMsg = null;
            this.reqUserId = ((Comment) nVObject4).author.uid;
            this.reqParentId = nVObject4.parentId();
            this.reqParentType = ((Comment) this.mObject).parentType;
            return;
        }
        if (nVObject4 instanceof ChatMessage) {
            this.reqMsg = null;
            this.reqUserId = ((ChatMessage) nVObject4).author.uid;
            this.reqParentType = 12;
            return;
        }
        if (nVObject4 instanceof ChatThread) {
            this.reqMsg = null;
            this.reqUserId = ((ChatThread) nVObject4).uid;
            return;
        }
        if (nVObject4 instanceof User) {
            this.reqMsg = null;
            this.reqUserId = ((User) nVObject4).uid;
            return;
        }
        if (nVObject4 instanceof Community) {
            this.reqMsg = null;
            if (((Community) nVObject4).agent != null) {
                this.reqUserId = ((Community) nVObject4).agent.id();
                return;
            }
            return;
        }
        if (nVObject4 instanceof QuizQuestion) {
            this.reqMsg = null;
            this.reqParentType = ((QuizQuestion) nVObject4).parentType;
        } else if (nVObject4 instanceof SharedFile) {
            this.reqMsg = null;
            User user = ((SharedFile) nVObject4).author;
            this.reqUserId = user != null ? user.uid : null;
        } else if (nVObject4 instanceof Sticker) {
            this.reqParentType = 114;
        } else {
            boolean z6 = nVObject4 instanceof StoryTopic;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupChatMessageOptions(ChatMessage chatMessage) {
        this.mFlagOptionLayout.removeAllViews();
        addItem(R.string.flag_violence_graphic_content_or_dangerous_activity, this.listener);
        addItem(R.string.flag_hate_speech_and_bigotry, this.listener);
        addItem(R.string.flag_self_injury_and_suicide, this.listener);
        addItem(R.string.flag_harassment_and_trolling, this.listener);
        addItem(R.string.flag_nudity_and_pornography, this.listener);
        addItem(R.string.flag_bullying, this.listener);
        if (!this.isGlobalScope) {
            addItem(R.string.flag_off_topic, this.listener);
        }
        addItem(R.string.flag_spam, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupChatThreadOptions(ChatThread chatThread) {
        this.mFlagOptionLayout.removeAllViews();
        addItem(R.string.flag_violence_graphic_content_or_dangerous_activity, this.listener);
        addItem(R.string.flag_hate_speech_and_bigotry, this.listener);
        addItem(R.string.flag_self_injury_and_suicide, this.listener);
        addItem(R.string.flag_harassment_and_trolling, this.listener);
        addItem(R.string.flag_nudity_and_pornography, this.listener);
        addItem(R.string.flag_bullying, this.listener);
        if (!this.isGlobalScope) {
            addItem(R.string.flag_off_topic, this.listener);
        }
        addItem(R.string.flag_spam, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupCommentOptions(Comment comment) {
        this.mFlagOptionLayout.removeAllViews();
        addItem(R.string.flag_violence_graphic_content_or_dangerous_activity, this.listener);
        addItem(R.string.flag_hate_speech_and_bigotry, this.listener);
        addItem(R.string.flag_self_injury_and_suicide, this.listener);
        addItem(R.string.flag_harassment_and_trolling, this.listener);
        addItem(R.string.flag_nudity_and_pornography, this.listener);
        addItem(R.string.flag_bullying, this.listener);
        if (!this.isGlobalScope) {
            addItem(R.string.flag_off_topic, this.listener);
        }
        addItem(R.string.flag_spam, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupCommunityOptions(Community community) {
        this.mFlagOptionLayout.removeAllViews();
        addItem(R.string.flag_inappropriate, this.listener);
        addItem(R.string.flag_spam, this.listener);
        addItem(R.string.flag_other, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupFeedOptions(Feed feed) {
        this.mFlagOptionLayout.removeAllViews();
        addItem(R.string.flag_violence_graphic_content_or_dangerous_activity, this.listener);
        addItem(R.string.flag_hate_speech_and_bigotry, this.listener);
        addItem(R.string.flag_self_injury_and_suicide, this.listener);
        addItem(R.string.flag_harassment_and_trolling, this.listener);
        addItem(R.string.flag_nudity_and_pornography, this.listener);
        addItem(R.string.flag_bullying, this.listener);
        if (!this.isGlobalScope) {
            addItem(R.string.flag_off_topic, this.listener);
        }
        addItem(R.string.flag_spam, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupQuizQuestionOptions(QuizQuestion quizQuestion) {
        this.mFlagOptionLayout.removeAllViews();
        addFlagPreviewView();
        addItem(R.string.flag_incorrect_answer, new View.OnClickListener() { // from class: com.narvii.flag.report.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2273a.lambda$setupQuizQuestionOptions$1(view);
            }
        });
        addItem(R.string.flag_violence_graphic_content_or_dangerous_activity, this.listener);
        addItem(R.string.flag_hate_speech_and_bigotry, this.listener);
        addItem(R.string.flag_self_injury_and_suicide, this.listener);
        addItem(R.string.flag_harassment_and_trolling, this.listener);
        addItem(R.string.flag_nudity_and_pornography, this.listener);
        addItem(R.string.flag_bullying, this.listener);
        if (!this.isGlobalScope) {
            addItem(R.string.flag_off_topic, this.listener);
        }
        addItem(R.string.flag_spam, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupSharedFileOptions(SharedFile sharedFile) {
        this.mFlagOptionLayout.removeAllViews();
        if (!this.isGlobalScope) {
            addItem(R.string.flag_off_topic, this.listener);
        }
        addItem(R.string.flag_bullying, this.listener);
        addItem(R.string.flag_sexually_explicit, this.listener);
        addItem(R.string.flag_inappropriate_request, this.listener);
        addItem(R.string.flag_violent, this.listener);
        addItem(R.string.flag_spam, this.listener);
        addItem(R.string.flag_other, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupStickerCoellctonOptions(StickerCollection stickerCollection) {
        this.mFlagOptionLayout.removeAllViews();
        addItem(R.string.flag_violence_graphic_content_or_dangerous_activity, this.listener);
        addItem(R.string.flag_hate_speech_and_bigotry, this.listener);
        addItem(R.string.flag_self_injury_and_suicide, this.listener);
        addItem(R.string.flag_harassment_and_trolling, this.listener);
        addItem(R.string.flag_nudity_and_pornography, this.listener);
        addItem(R.string.flag_bullying, this.listener);
        if (!this.isGlobalScope) {
            addItem(R.string.flag_off_topic, this.listener);
        }
        addItem(R.string.flag_spam, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupStickerOptions(Sticker sticker) {
        this.mFlagOptionLayout.removeAllViews();
        addItem(R.string.flag_violence_graphic_content_or_dangerous_activity, this.listener);
        addItem(R.string.flag_hate_speech_and_bigotry, this.listener);
        addItem(R.string.flag_self_injury_and_suicide, this.listener);
        addItem(R.string.flag_harassment_and_trolling, this.listener);
        addItem(R.string.flag_nudity_and_pornography, this.listener);
        addItem(R.string.flag_bullying, this.listener);
        if (!this.isGlobalScope) {
            addItem(R.string.flag_off_topic, this.listener);
        }
        addItem(R.string.flag_spam, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupStoryTopicOptions(StoryTopic storyTopic) {
        this.mFlagOptionLayout.removeAllViews();
        addItem(R.string.flag_violence_graphic_content_or_dangerous_activity, this.listener);
        addItem(R.string.flag_hate_speech_and_bigotry, this.listener);
        addItem(R.string.flag_self_injury_and_suicide, this.listener);
        addItem(R.string.flag_harassment_and_trolling, this.listener);
        addItem(R.string.flag_nudity_and_pornography, this.listener);
        addItem(R.string.flag_bullying, this.listener);
        addItem(R.string.flag_spam, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupUserOptions(User user) {
        this.mFlagOptionLayout.removeAllViews();
        if (!this.miniProfile) {
            addItem(R.string.flag_some_post, this.listener);
            addItem(R.string.flag_some_said, this.listener);
        }
        addItem(R.string.flag_violence_graphic_content_or_dangerous_activity, this.listener);
        addItem(R.string.flag_hate_speech_and_bigotry, this.listener);
        addItem(R.string.flag_self_injury_and_suicide, this.listener);
        addItem(R.string.flag_harassment_and_trolling, this.listener);
        addItem(R.string.flag_nudity_and_pornography, this.listener);
        addItem(R.string.flag_bullying, this.listener);
        if (!this.isGlobalScope) {
            addItem(R.string.flag_off_topic, this.listener);
        }
        addItem(R.string.flag_spam, this.listener);
    }

    private void showCheckDialog() {
        CheckDialog checkDialog = new CheckDialog(getContext());
        checkDialog.setText(getContext().getString(R.string.flag_successfully));
        checkDialog.show();
    }

    private void showProgress() {
        this.mProgressView.setVisibility(0);
        this.mFlagOptionLayout.setClickable(false);
        this.btnSend.setClickable(false);
        for (int i10 = 0; i10 < this.mFlagOptionLayout.getChildCount(); i10++) {
            this.mFlagOptionLayout.getChildAt(i10).setClickable(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCell(FlagItemLayout flagItemLayout) {
        int childCount = this.mFlagOptionLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (this.mFlagOptionLayout.getChildAt(i10) instanceof FlagItemLayout) {
                if (this.mFlagOptionLayout.getChildAt(i10) == flagItemLayout) {
                    flagItemLayout.setChecked(true);
                    flagItemLayout.setBackground(new ColorDrawable(getContext().getResources().getColor(R.color.color_default)));
                } else {
                    ((FlagItemLayout) this.mFlagOptionLayout.getChildAt(i10)).setChecked(false);
                    this.mFlagOptionLayout.getChildAt(i10).setBackground(new ColorDrawable(-328966));
                }
            }
        }
    }

    private void uploadCurFlagScreenShoot(String str, final Callback callback) {
        FragmentActivity activity;
        NVContext nVContext = this.mNvContext;
        if (nVContext instanceof NVFragment) {
            activity = ((NVFragment) nVContext).getActivity();
        } else {
            activity = nVContext instanceof NVActivity ? (NVActivity) nVContext : null;
        }
        if (activity != null && !this.screenShotFlag) {
            ((PhotoManager) this.mNvContext.getService("photo")).upload((String) null, Screenshot.takeScreenshot(activity), str, new PhotoUploadListener() { // from class: com.narvii.flag.report.FlagReportOptionDialog.4
                @Override // com.narvii.photos.PhotoUploadListener
                public void onProgress(String str2, int i10, int i11) {
                }

                @Override // com.narvii.photos.PhotoUploadListener
                public void onFail(String str2, int i10, String str3, Throwable th) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(Boolean.FALSE);
                    }
                }

                @Override // com.narvii.photos.PhotoUploadListener
                public void onFinish(String str2, String str3) {
                    if (callback != null) {
                        FlagReportOptionDialog.this.mediaUrl = str3;
                        callback.call(Boolean.TRUE);
                    }
                }
            });
        } else if (callback != null) {
            callback.call(Boolean.FALSE);
        }
    }

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(CharSequence charSequence, int i10, View.OnClickListener onClickListener) {
        int i11;
        if (i10 == 2) {
            i11 = R.layout.dialog_alert_button_blue;
        } else if (i10 != 4) {
            i11 = i10 != 8 ? R.layout.dialog_alert_button_gray : R.layout.dialog_alert_button_red;
        } else {
            i11 = R.layout.dialog_alert_button_green;
        }
        TextView textView = (TextView) this.inflater.inflate(i11, this.buttons, false);
        textView.setText(charSequence);
        if (this.buttons.getChildCount() > 0) {
            this.inflater.inflate(R.layout.dialog_alert_button_divider, this.buttons);
        }
        this.buttons.addView(textView);
        textView.setOnClickListener(onClickListener);
        this.buttons.setVisibility(0);
        return textView;
    }

    public void setFullScreen(boolean z6) {
        this.fullScreen = z6;
        if (z6) {
            getWindow().setFlags(1024, 1024);
        } else {
            getWindow().clearFlags(1024);
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        if (((AccountService) this.mNvContext.getService("account")).hasAccount()) {
            super.show();
            return;
        }
        Intent intent = new Intent("flag");
        NVContext nVContext = this.mNvContext;
        if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).ensureLogin(intent);
        } else if (nVContext instanceof NVActivity) {
            ((NVActivity) nVContext).ensureLogin(intent);
        }
    }

    private void addBlockUser() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.flag_block_user_layout, (ViewGroup) null);
        this.mFlagOptionLayout.addView(viewInflate);
        this.blockCheck = (CheckBox) findViewById(R.id.flag_block_user_check);
        ((LinearLayout.LayoutParams) viewInflate.getLayoutParams()).setMargins((int) TypedValue.applyDimension(1, 10.0f, getContext().getResources().getDisplayMetrics()), 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFlagType(String str) {
        return Flag.getFlagType(getContext(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean itemEquals(FlagItemLayout flagItemLayout, int i10) {
        return flagItemLayout.getLeftText().equals(getContext().getString(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupQuizQuestionOptions$1(View view) {
        sendQuizQuestionIncorrectAnswer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequest() {
        dismiss();
        ConfigService configService = (ConfigService) this.mNvContext.getService("config");
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(getContext(), ApiResponse.class, configService);
        anonymousClass3.setFlagUserInfo(configService.getCommunityId(), this.reqUserId);
        anonymousClass3.setEditHint(getContext().getResources().getString(R.string.flag_message_hint_required));
        if (this.mObject instanceof QuizQuestion) {
            AndroidBug5497Workaround.assistActivity(anonymousClass3);
        }
        if (this.fullScreen) {
            anonymousClass3.getWindow().setFlags(1024, 1024);
        }
        anonymousClass3.show();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (isShowing()) {
            dismiss();
        }
    }

    void sendQuizQuestionIncorrectAnswer() {
        dismiss();
        ConfigService configService = (ConfigService) this.mNvContext.getService("config");
        String string = getContext().getString(R.string.quiz_incorrect_answer, ((QuizQuestion) this.mObject).title);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(getContext(), CommentResponse.class, configService, string);
        anonymousClass2.setFlagUserInfo(configService.getCommunityId(), this.reqUserId);
        anonymousClass2.setEditHint(getContext().getResources().getString(R.string.flag_message_hint_required));
        anonymousClass2.setEditText(string + "\n");
        AndroidBug5497Workaround.assistActivity(anonymousClass2);
        if (this.fullScreen) {
            anonymousClass2.getWindow().setFlags(1024, 1024);
        }
        anonymousClass2.show();
    }

    public void addItem(String str, View.OnClickListener onClickListener) {
        addItem(str, Color.rgb(40, 40, 40), onClickListener);
    }

    public void addItem(int i10, int i11, View.OnClickListener onClickListener) {
        addItem(getContext().getString(i10), i11, onClickListener);
    }

    public void addItem(int i10, View.OnClickListener onClickListener) {
        addItem(getContext().getString(i10), onClickListener);
    }
}

package com.narvii.flag.report;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.flag.model.Flag;
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
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.CheckDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.image.Screenshot;
import com.narvii.widget.FlagItemLayout;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;

/* loaded from: classes2.dex */
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

    public static class FlagPreview {
        public Media media;
        public String subTitle;
        public String title;
    }

    private FlagReportOptionDialog(NVContext nVContext) {
        super(nVContext.getContext());
        this.showBlockUser = true;
        this.reqFlagType = Flag.TYPE_NONE;
        this.miniProfile = true;
        this.isGlobalScope = false;
        this.listener = new View.OnClickListener() { // from class: com.narvii.flag.report.FlagReportOptionDialog.3
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
                    alertDialog.setTitleColor(Color.rgb(0, 206, 125));
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
        setTitleColor(Color.rgb(0, 206, 125));
        this.mProgressView = (ProgressBar) findViewById(R.id.request_progress);
        addButton(getContext().getString(R.string.cancel), 0, new View.OnClickListener() { // from class: com.narvii.flag.report.FlagReportOptionDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FlagReportOptionDialog.this.dismiss();
            }
        });
        this.mediaUrl = null;
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.dialog_content);
        if (viewGroup != null) {
            viewGroup.setClipChildren(true);
        }
    }

    public void setFullScreen(boolean z) {
        this.fullScreen = z;
        if (z) {
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

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(int i, int i2, View.OnClickListener onClickListener) {
        return addButton(i, i2, onClickListener);
    }

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(CharSequence charSequence, int i, View.OnClickListener onClickListener) {
        TextView textView = (TextView) this.inflater.inflate(i != 2 ? i != 4 ? i != 8 ? R.layout.dialog_alert_button_gray : R.layout.dialog_alert_button_red : R.layout.dialog_alert_button_green : R.layout.dialog_alert_button_blue, this.buttons, false);
        textView.setText(charSequence);
        if (this.buttons.getChildCount() > 0) {
            this.inflater.inflate(R.layout.dialog_alert_button_divider, this.buttons);
        }
        this.buttons.addView(textView);
        textView.setOnClickListener(onClickListener);
        this.buttons.setVisibility(0);
        return textView;
    }

    public void addItem(String str, int i, View.OnClickListener onClickListener) {
        FlagItemLayout flagItemLayout = new FlagItemLayout(getContext());
        flagItemLayout.setLeftText(str);
        flagItemLayout.setLeftTextColor(i);
        if (Build.VERSION.SDK_INT >= 16) {
            flagItemLayout.setBackground(getContext().getResources().getDrawable(R.drawable.dialog_item_green));
        } else {
            flagItemLayout.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.dialog_item_green));
        }
        flagItemLayout.setOnClickListener(onClickListener);
        this.mFlagOptionLayout.addView(flagItemLayout);
    }

    public void addItem(String str, View.OnClickListener onClickListener) {
        addItem(str, Color.rgb(40, 40, 40), onClickListener);
    }

    public void addItem(int i, int i2, View.OnClickListener onClickListener) {
        addItem(getContext().getString(i), i2, onClickListener);
    }

    public void addItem(int i, View.OnClickListener onClickListener) {
        addItem(getContext().getString(i), onClickListener);
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
    public void setupCommunityOptions(Community community) {
        this.mFlagOptionLayout.removeAllViews();
        addItem(R.string.flag_inappropriate, this.listener);
        addItem(R.string.flag_spam, this.listener);
        addItem(R.string.flag_other, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupQuizQuestionOptions(QuizQuestion quizQuestion) {
        this.mFlagOptionLayout.removeAllViews();
        addFlagPreviewView();
        addItem(R.string.flag_incorrect_answer, new View.OnClickListener() { // from class: com.narvii.flag.report.FlagReportOptionDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FlagReportOptionDialog.this.sendQuizQuestionIncorrectAnswer();
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
            boolean z = nVObject4 instanceof StoryTopic;
        }
    }

    void sendQuizQuestionIncorrectAnswer() {
        dismiss();
        final ConfigService configService = (ConfigService) this.mNvContext.getService("config");
        final String string = getContext().getString(R.string.quiz_incorrect_answer, ((QuizQuestion) this.mObject).title);
        FlagRequestDialog<CommentResponse> flagRequestDialog = new FlagRequestDialog<CommentResponse>(getContext(), CommentResponse.class) { // from class: com.narvii.flag.report.FlagReportOptionDialog.4
            @Override // com.narvii.flag.report.FlagRequestDialog
            public boolean hasPreBlockRequest() {
                return true;
            }

            @Override // com.narvii.flag.report.FlagRequestDialog
            public boolean showBlockUser() {
                return false;
            }

            @Override // com.narvii.flag.report.FlagRequestDialog
            public ApiRequest.Builder createApiRequestBuilder(String str) {
                ApiRequest.Builder builderPath = ApiRequest.builder().post().communityId(configService.getCommunityId()).path("/blog/" + FlagReportOptionDialog.this.mObject.parentId() + "/comment");
                if (TextUtils.isEmpty(str)) {
                    str = string;
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
                Utils.post(new Runnable() { // from class: com.narvii.flag.report.FlagReportOptionDialog.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        FlagReportOptionDialog.this.uploadCurFlagScreenShoot(null, new Callback() { // from class: com.narvii.flag.report.FlagReportOptionDialog.4.1.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                sendFlagRequest();
                            }
                        });
                    }
                });
            }
        };
        flagRequestDialog.setFlagUserInfo(configService.getCommunityId(), this.reqUserId);
        flagRequestDialog.setEditHint(getContext().getResources().getString(R.string.flag_message_hint_required));
        flagRequestDialog.setEditText(string + "\n");
        AndroidBug5497Workaround.assistActivity(flagRequestDialog);
        if (this.fullScreen) {
            flagRequestDialog.getWindow().setFlags(1024, 1024);
        }
        flagRequestDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequest() {
        dismiss();
        final ConfigService configService = (ConfigService) this.mNvContext.getService("config");
        FlagRequestDialog<ApiResponse> flagRequestDialog = new FlagRequestDialog<ApiResponse>(getContext(), ApiResponse.class) { // from class: com.narvii.flag.report.FlagReportOptionDialog.5
            @Override // com.narvii.flag.report.FlagRequestDialog
            public boolean hasPreBlockRequest() {
                return true;
            }

            @Override // com.narvii.flag.report.FlagRequestDialog
            public ApiRequest.Builder createApiRequestBuilder(String str) {
                int communityId = configService.getCommunityId();
                if (FlagReportOptionDialog.this.mObject instanceof Community) {
                    communityId = ((Community) FlagReportOptionDialog.this.mObject).id;
                } else if (FlagReportOptionDialog.this.mObject instanceof Feed) {
                    communityId = ((Feed) FlagReportOptionDialog.this.mObject).ndcId;
                } else if ((FlagReportOptionDialog.this.mObject instanceof User) && ((User) FlagReportOptionDialog.this.mObject).isGlobal) {
                    communityId = 0;
                }
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
                Utils.post(new Runnable() { // from class: com.narvii.flag.report.FlagReportOptionDialog.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        FlagReportOptionDialog.this.uploadCurFlagScreenShoot(new Callback() { // from class: com.narvii.flag.report.FlagReportOptionDialog.5.1.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                sendFlagRequest();
                            }
                        });
                    }
                });
            }

            @Override // com.narvii.flag.report.FlagRequestDialog
            public void onSendRequest() {
                super.onSendRequest();
            }
        };
        flagRequestDialog.setFlagUserInfo(configService.getCommunityId(), this.reqUserId);
        flagRequestDialog.setEditHint(getContext().getResources().getString(R.string.flag_message_hint_required));
        if (this.mObject instanceof QuizQuestion) {
            AndroidBug5497Workaround.assistActivity(flagRequestDialog);
        }
        if (this.fullScreen) {
            flagRequestDialog.getWindow().setFlags(1024, 1024);
        }
        flagRequestDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadCurFlagScreenShoot(Callback callback) {
        uploadCurFlagScreenShoot("flag-image", callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadCurFlagScreenShoot(String str, final Callback callback) {
        FragmentActivity activity;
        NVContext nVContext = this.mNvContext;
        if (nVContext instanceof NVFragment) {
            activity = ((NVFragment) nVContext).getActivity();
        } else {
            activity = nVContext instanceof NVActivity ? (NVActivity) nVContext : null;
        }
        if (activity != null && !this.screenShotFlag) {
            ((PhotoManager) this.mNvContext.getService("photo")).upload((String) null, Screenshot.takeScreenshot(activity), str, new PhotoUploadListener() { // from class: com.narvii.flag.report.FlagReportOptionDialog.6
                @Override // com.narvii.photos.PhotoUploadListener
                public void onProgress(String str2, int i, int i2) {
                }

                @Override // com.narvii.photos.PhotoUploadListener
                public void onFinish(String str2, String str3) {
                    if (callback != null) {
                        FlagReportOptionDialog.this.mediaUrl = str3;
                        callback.call(true);
                    }
                }

                @Override // com.narvii.photos.PhotoUploadListener
                public void onFail(String str2, int i, String str3, Throwable th) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(false);
                    }
                }
            });
        } else if (callback != null) {
            callback.call(false);
        }
    }

    private void showProgress() {
        this.mProgressView.setVisibility(0);
        this.mFlagOptionLayout.setClickable(false);
        this.btnSend.setClickable(false);
        for (int i = 0; i < this.mFlagOptionLayout.getChildCount(); i++) {
            this.mFlagOptionLayout.getChildAt(i).setClickable(false);
        }
    }

    private void hideProgress() {
        this.mProgressView.setVisibility(8);
        this.mFlagOptionLayout.setClickable(true);
        this.btnSend.setClickable(true);
        for (int i = 0; i < this.mFlagOptionLayout.getChildCount(); i++) {
            this.mFlagOptionLayout.getChildAt(i).setClickable(true);
        }
    }

    private void showCheckDialog() throws Resources.NotFoundException {
        CheckDialog checkDialog = new CheckDialog(getContext());
        checkDialog.setText(getContext().getString(R.string.flag_successfully));
        checkDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCell(FlagItemLayout flagItemLayout) {
        int childCount = this.mFlagOptionLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (this.mFlagOptionLayout.getChildAt(i) instanceof FlagItemLayout) {
                if (this.mFlagOptionLayout.getChildAt(i) == flagItemLayout) {
                    flagItemLayout.setChecked(true);
                    if (Build.VERSION.SDK_INT >= 16) {
                        flagItemLayout.setBackground(new ColorDrawable(getContext().getResources().getColor(R.color.color_default)));
                    } else {
                        flagItemLayout.setBackgroundDrawable(new ColorDrawable(getContext().getResources().getColor(R.color.color_default)));
                    }
                } else {
                    ((FlagItemLayout) this.mFlagOptionLayout.getChildAt(i)).setChecked(false);
                    if (Build.VERSION.SDK_INT >= 16) {
                        ((FlagItemLayout) this.mFlagOptionLayout.getChildAt(i)).setBackground(new ColorDrawable(-328966));
                    } else {
                        ((FlagItemLayout) this.mFlagOptionLayout.getChildAt(i)).setBackgroundDrawable(new ColorDrawable(-328966));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean itemEquals(FlagItemLayout flagItemLayout, int i) {
        return flagItemLayout.getLeftText().equals(getContext().getString(i));
    }

    public static class Builder {
        FlagReportOptionDialog optionDialog;

        public Builder(NVContext nVContext) {
            this.optionDialog = new FlagReportOptionDialog(nVContext);
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

        public Builder flagPreview(FlagPreview flagPreview) {
            this.optionDialog.flagPreview = flagPreview;
            return this;
        }

        public Builder addItem(int i, View.OnClickListener onClickListener) {
            this.optionDialog.addItem(i, onClickListener);
            return this;
        }

        public Builder showBlockUser(boolean z) {
            this.optionDialog.showBlockUser = z;
            return this;
        }

        public Builder refMediaUrl(String str) {
            this.optionDialog.refMediaUrl = str;
            return this;
        }

        public Builder miniProfile(boolean z) {
            this.optionDialog.miniProfile = z;
            return this;
        }

        public Builder screenShotFlag(boolean z) {
            this.optionDialog.screenShotFlag = z;
            return this;
        }

        public FlagReportOptionDialog build() {
            return this.optionDialog;
        }
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
}

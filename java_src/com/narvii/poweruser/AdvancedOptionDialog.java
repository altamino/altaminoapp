package com.narvii.poweruser;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.blog.category.BlogCategoryPickerFragment;
import com.narvii.chat.RequestChatUserHelper;
import com.narvii.chat.input.ChatInputFragment;
import com.narvii.chat.organizer.ChatOrganizerPickerFragment;
import com.narvii.chat.template.SendStrikeActivity;
import com.narvii.comment.CommentHelper;
import com.narvii.master.CommunityHelper;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.poweruser.history.ModerationHistoryFragment;
import com.narvii.quiz.QuizReviewListFragment;
import com.narvii.user.feature.FeatureUserHelper;
import com.narvii.user.title.EditUserTitleFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.dialog.RequestDialog;
import com.narvii.util.dialog.SingleChoiceDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.FlagItemLayout;
import java.util.List;

/* loaded from: classes3.dex */
public class AdvancedOptionDialog extends AlertDialog {
    View.OnClickListener banListener;
    CommunityConfigHelper communityConfigHelper;
    private SendBroadcastHelper helper;
    View.OnClickListener hideUserProfileListener;
    View.OnClickListener listener;
    private LinearLayout mAdvancedLayout;
    private List<BlogCategory> mBlogCateLog;
    private NVContext mNvContext;
    private NVObject mObject;
    View.OnClickListener messageUserListener;
    View.OnClickListener strikeUserProfileListener;
    View.OnClickListener unBanListener;
    View.OnClickListener unHideUserProfileListener;

    private void showBanDialog() {
    }

    @Override // com.narvii.util.dialog.AlertDialog
    protected int baseLayoutId() {
        return R.layout.dialog_alert_advance_options_layout;
    }

    private AdvancedOptionDialog(NVContext nVContext) {
        super(nVContext.getContext());
        this.listener = new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view instanceof FlagItemLayout) {
                    FlagItemLayout flagItemLayout = (FlagItemLayout) view;
                    if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_feature_chat) || !(AdvancedOptionDialog.this.mObject instanceof ChatThread)) {
                        if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_unfeature_chat) || !(AdvancedOptionDialog.this.mObject instanceof ChatThread)) {
                            if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_feature) || !(AdvancedOptionDialog.this.mObject instanceof Feed)) {
                                if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_unfeature) || !(AdvancedOptionDialog.this.mObject instanceof Feed)) {
                                    if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.feature_this_member)) {
                                        if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.unfeature_this_member)) {
                                            if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_unpin) || !(AdvancedOptionDialog.this.mObject instanceof Feed)) {
                                                if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_pin) || !(AdvancedOptionDialog.this.mObject instanceof Feed)) {
                                                    if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_disable_post)) {
                                                        if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_enable_post)) {
                                                            if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_disable_photo)) {
                                                                if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_enable_photo)) {
                                                                    if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_chat_disable_chatroom)) {
                                                                        if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_chat_enable_chatroom)) {
                                                                            if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_chat_delete)) {
                                                                                if (AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_change_category)) {
                                                                                    AdvancedOptionDialog.this.changeCategory();
                                                                                    return;
                                                                                }
                                                                                if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_edit_user_title)) {
                                                                                    if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_delete_comment)) {
                                                                                        if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.catalog_submit_to_official)) {
                                                                                            if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.broadcast_page)) {
                                                                                                if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_moderation_history)) {
                                                                                                    if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_review_quiz)) {
                                                                                                        if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_add_to_best_quiz)) {
                                                                                                            if (!AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_remove_from_best_quiz)) {
                                                                                                                if (AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.trans_organizer)) {
                                                                                                                    Intent intent = FragmentWrapperActivity.intent(ChatOrganizerPickerFragment.class);
                                                                                                                    if (AdvancedOptionDialog.this.mObject instanceof ChatThread) {
                                                                                                                        intent.putExtra("thread", JacksonUtils.writeAsString(AdvancedOptionDialog.this.mObject));
                                                                                                                    }
                                                                                                                    AdvancedOptionDialog.this.startActivity(intent);
                                                                                                                    AdvancedOptionDialog.this.dismiss();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            }
                                                                                                            new PowerFeedHelper(AdvancedOptionDialog.this.mNvContext, (Feed) AdvancedOptionDialog.this.mObject).changeBestQuizStatus(false);
                                                                                                            AdvancedOptionDialog.this.dismiss();
                                                                                                            return;
                                                                                                        }
                                                                                                        new PowerFeedHelper(AdvancedOptionDialog.this.mNvContext, (Feed) AdvancedOptionDialog.this.mObject).changeBestQuizStatus(true);
                                                                                                        AdvancedOptionDialog.this.dismiss();
                                                                                                        return;
                                                                                                    }
                                                                                                    AdvancedOptionDialog.this.dismiss();
                                                                                                    AdvancedOptionDialog.this.reviewQuiz();
                                                                                                    return;
                                                                                                }
                                                                                                AdvancedOptionDialog.this.dismiss();
                                                                                                AdvancedOptionDialog.this.launchModerationHistory();
                                                                                                return;
                                                                                            }
                                                                                            AdvancedOptionDialog.this.dismiss();
                                                                                            AdvancedOptionDialog.this.helper.sendBroadcast(AdvancedOptionDialog.this.mObject);
                                                                                            return;
                                                                                        }
                                                                                        AdvancedOptionDialog advancedOptionDialog = AdvancedOptionDialog.this;
                                                                                        advancedOptionDialog.submitOfficialCatalog((Item) advancedOptionDialog.mObject);
                                                                                        return;
                                                                                    }
                                                                                    AdvancedOptionDialog advancedOptionDialog2 = AdvancedOptionDialog.this;
                                                                                    advancedOptionDialog2.deleteComment((Comment) advancedOptionDialog2.mObject);
                                                                                    return;
                                                                                }
                                                                                AdvancedOptionDialog advancedOptionDialog3 = AdvancedOptionDialog.this;
                                                                                advancedOptionDialog3.changeUserTitle((User) advancedOptionDialog3.mObject);
                                                                                return;
                                                                            }
                                                                            AdvancedOptionDialog advancedOptionDialog4 = AdvancedOptionDialog.this;
                                                                            advancedOptionDialog4.deleteChatMessage((ChatMessage) advancedOptionDialog4.mObject);
                                                                            return;
                                                                        }
                                                                        AdvancedOptionDialog advancedOptionDialog5 = AdvancedOptionDialog.this;
                                                                        advancedOptionDialog5.changeObjectStatus(advancedOptionDialog5.mObject, true);
                                                                        return;
                                                                    }
                                                                    AdvancedOptionDialog advancedOptionDialog6 = AdvancedOptionDialog.this;
                                                                    advancedOptionDialog6.changeObjectStatus(advancedOptionDialog6.mObject, false);
                                                                    return;
                                                                }
                                                                AdvancedOptionDialog advancedOptionDialog7 = AdvancedOptionDialog.this;
                                                                advancedOptionDialog7.changeObjectStatus(advancedOptionDialog7.mObject, true);
                                                                return;
                                                            }
                                                            AdvancedOptionDialog advancedOptionDialog8 = AdvancedOptionDialog.this;
                                                            advancedOptionDialog8.changeObjectStatus(advancedOptionDialog8.mObject, false);
                                                            return;
                                                        }
                                                        AdvancedOptionDialog advancedOptionDialog9 = AdvancedOptionDialog.this;
                                                        advancedOptionDialog9.changeObjectStatus(advancedOptionDialog9.mObject, true);
                                                        return;
                                                    }
                                                    AdvancedOptionDialog advancedOptionDialog10 = AdvancedOptionDialog.this;
                                                    advancedOptionDialog10.changeObjectStatus(advancedOptionDialog10.mObject, false);
                                                    return;
                                                }
                                                new PowerFeedHelper(AdvancedOptionDialog.this.mNvContext, (Feed) AdvancedOptionDialog.this.mObject).featureFeed(2, 0L, new Callback<ApiResponse>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.2.6
                                                    @Override // com.narvii.util.Callback
                                                    public void call(ApiResponse apiResponse) {
                                                        AdvancedOptionDialog.this.dismiss();
                                                    }
                                                });
                                                return;
                                            }
                                            new PowerFeedHelper(AdvancedOptionDialog.this.mNvContext, (Feed) AdvancedOptionDialog.this.mObject).featureFeed(0, 0L, new Callback<ApiResponse>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.2.5
                                                @Override // com.narvii.util.Callback
                                                public void call(ApiResponse apiResponse) {
                                                    AdvancedOptionDialog.this.dismiss();
                                                }
                                            });
                                            return;
                                        }
                                        new FeatureUserHelper(AdvancedOptionDialog.this.mNvContext, (User) AdvancedOptionDialog.this.mObject).featureUser(0, 0L, new Callback<ApiResponse>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.2.4
                                            @Override // com.narvii.util.Callback
                                            public void call(ApiResponse apiResponse) {
                                                AdvancedOptionDialog.this.dismiss();
                                            }
                                        });
                                        return;
                                    }
                                    new FeatureUserHelper(AdvancedOptionDialog.this.mNvContext, (User) AdvancedOptionDialog.this.mObject).showFeatureDialog(new Callback() { // from class: com.narvii.poweruser.AdvancedOptionDialog.2.3
                                        @Override // com.narvii.util.Callback
                                        public void call(Object obj) {
                                            AdvancedOptionDialog.this.dismiss();
                                        }
                                    });
                                    return;
                                }
                                new PowerFeedHelper(AdvancedOptionDialog.this.mNvContext, (Feed) AdvancedOptionDialog.this.mObject).featureFeed(0, 0L, new Callback<ApiResponse>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.2.2
                                    @Override // com.narvii.util.Callback
                                    public void call(ApiResponse apiResponse) {
                                        AdvancedOptionDialog.this.dismiss();
                                    }
                                });
                                return;
                            }
                            new PowerFeedHelper(AdvancedOptionDialog.this.mNvContext, (Feed) AdvancedOptionDialog.this.mObject).showFeatureDialog(new Callback() { // from class: com.narvii.poweruser.AdvancedOptionDialog.2.1
                                @Override // com.narvii.util.Callback
                                public void call(Object obj) {
                                    AdvancedOptionDialog.this.dismiss();
                                }
                            });
                            return;
                        }
                        new PowerChatHelper(AdvancedOptionDialog.this.mNvContext, (ChatThread) AdvancedOptionDialog.this.mObject).unfeatureChat();
                        AdvancedOptionDialog.this.dismiss();
                        return;
                    }
                    new PowerChatHelper(AdvancedOptionDialog.this.mNvContext, (ChatThread) AdvancedOptionDialog.this.mObject).showFeatureDialog();
                    AdvancedOptionDialog.this.dismiss();
                }
            }
        };
        this.banListener = new AnonymousClass3();
        this.unBanListener = new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view instanceof FlagItemLayout) {
                    if (AdvancedOptionDialog.this.itemEquals((FlagItemLayout) view, R.string.advanced_options_unban_user) && (AdvancedOptionDialog.this.mObject instanceof User)) {
                        AdvancedOptionDialog advancedOptionDialog = AdvancedOptionDialog.this;
                        advancedOptionDialog.unBanUser((User) advancedOptionDialog.mObject);
                    }
                }
            }
        };
        this.strikeUserProfileListener = new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdvancedOptionDialog.this.dismiss();
                new AdvanceUserUtils(AdvancedOptionDialog.this.mNvContext).showStrikeWarningDialog(new Callback<Integer>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.5.1
                    @Override // com.narvii.util.Callback
                    public void call(Integer num) {
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (iIntValue == 0) {
                                AdvancedOptionDialog advancedOptionDialog = AdvancedOptionDialog.this;
                                advancedOptionDialog.messageUser(advancedOptionDialog.mObject);
                            } else {
                                if (iIntValue != 1) {
                                    return;
                                }
                                AdvancedOptionDialog.this.sendStrike();
                            }
                        }
                    }
                });
            }
        };
        this.hideUserProfileListener = new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view instanceof FlagItemLayout) {
                    if (AdvancedOptionDialog.this.itemEquals((FlagItemLayout) view, R.string.advanced_options_hide_userprofile) && (AdvancedOptionDialog.this.mObject instanceof User)) {
                        AdvancedOptionDialog advancedOptionDialog = AdvancedOptionDialog.this;
                        advancedOptionDialog.changUserProfileStatus((User) advancedOptionDialog.mObject, true);
                    }
                }
            }
        };
        this.unHideUserProfileListener = new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view instanceof FlagItemLayout) {
                    if (AdvancedOptionDialog.this.itemEquals((FlagItemLayout) view, R.string.advanced_options_unhide_userprofile) && (AdvancedOptionDialog.this.mObject instanceof User)) {
                        AdvancedOptionDialog advancedOptionDialog = AdvancedOptionDialog.this;
                        advancedOptionDialog.changUserProfileStatus((User) advancedOptionDialog.mObject, false);
                    }
                }
            }
        };
        this.messageUserListener = new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view instanceof FlagItemLayout) {
                    if (AdvancedOptionDialog.this.itemEquals((FlagItemLayout) view, R.string.advanced_options_message_member)) {
                        if (AdvancedOptionDialog.this.isShowing()) {
                            AdvancedOptionDialog.this.dismiss();
                        }
                        AlertDialog alertDialog = new AlertDialog(AdvancedOptionDialog.this.getContext());
                        alertDialog.setTitle(R.string.moderation_send_message_title);
                        alertDialog.setMessage(R.string.moderation_send_message_info);
                        alertDialog.addButton(R.string.cancel, 0, (View.OnClickListener) null);
                        alertDialog.addButton(android.R.string.ok, 4, new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.12.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                AdvancedOptionDialog advancedOptionDialog = AdvancedOptionDialog.this;
                                advancedOptionDialog.messageUser(advancedOptionDialog.mObject);
                            }
                        });
                        alertDialog.show();
                    }
                }
            }
        };
        this.mNvContext = nVContext;
        this.helper = new SendBroadcastHelper(nVContext);
        setContentView(R.layout.dialog_advanced_options);
        this.mAdvancedLayout = (LinearLayout) findViewById(R.id.advanced_options_layout);
        setTitle(getContext().getString(R.string.advanced));
        setTitleColor(Color.rgb(0, 206, 125));
        addButton(getContext().getString(R.string.close), 0, new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdvancedOptionDialog.this.dismiss();
            }
        });
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
    }

    public void addItem(String str, int i, View.OnClickListener onClickListener) {
        addItem(str, null, i, onClickListener);
    }

    public void addItem(String str, CharSequence charSequence, int i, View.OnClickListener onClickListener) {
        FlagItemLayout flagItemLayout = new FlagItemLayout(getContext());
        flagItemLayout.setLeftText(str);
        flagItemLayout.setHintText(charSequence);
        flagItemLayout.hideRight();
        flagItemLayout.setLeftTextColor(i);
        if (Build.VERSION.SDK_INT >= 16) {
            flagItemLayout.setBackground(getContext().getResources().getDrawable(R.drawable.dialog_item_green));
        } else {
            flagItemLayout.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.dialog_item_green));
        }
        flagItemLayout.setOnClickListener(onClickListener);
        this.mAdvancedLayout.addView(flagItemLayout);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) flagItemLayout.getLayoutParams();
        int iApplyDimension = (int) (TypedValue.applyDimension(1, 10.0f, getContext().getResources().getDisplayMetrics()) * (-1.0f));
        layoutParams.setMargins(iApplyDimension, 0, iApplyDimension, 0);
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

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupFeedOptions(Feed feed) {
        User user;
        this.mAdvancedLayout.removeAllViews();
        AccountService accountService = (AccountService) this.mNvContext.getService("account");
        User userProfile = accountService.getUserProfile();
        String userId = accountService.getUserId();
        User user2 = feed.author;
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(userId, user2 == null ? null : user2.uid);
        User user3 = feed.author;
        boolean z = false;
        boolean z2 = user3 != null && user3.isSystem();
        if (userProfile != null && userProfile.isCurator() && !z2 && !zIsEqualsNotNull && this.communityConfigHelper.isChatEnabled()) {
            addItem(R.string.advanced_options_message_member, this.messageUserListener);
        }
        if (feed.status() != 9 && this.communityConfigHelper.isFeaturedPostEnabled()) {
            if (feed.featureType() != 2) {
                addItem(R.string.advanced_options_pin, this.listener);
            }
            if (feed.featureType() == 1) {
                addItem(R.string.advanced_options_unfeature, this.listener);
            } else if (feed.featureType() == 2) {
                addItem(R.string.advanced_options_unpin, this.listener);
            } else if (feed.featureType() == 0) {
                addItem(R.string.advanced_options_feature, this.listener);
            }
        }
        boolean z3 = feed instanceof Blog;
        if (z3 && ((Blog) feed).type == 6) {
            addItem(R.string.advanced_options_review_quiz, this.listener);
        }
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this.mNvContext);
        if (feed.objectType() == 1 && userProfile != null && userProfile.isCurator() && communityConfigHelper.isTopicCategoryEnabled()) {
            addItem(getContext().getString(R.string.advanced_options_change_category), null, ViewCompat.MEASURED_STATE_MASK, this.listener);
        }
        if (z3) {
            Blog blog = (Blog) feed;
            if (blog.type == 6) {
                if (!blog.isInBestQuiz()) {
                    addItem(R.string.advanced_options_add_to_best_quiz, this.listener);
                } else {
                    addItem(R.string.advanced_options_remove_from_best_quiz, this.listener);
                }
            }
        }
        addSendBroadcastItem(feed);
        if (feed != null && (user = feed.author) != null && user.isSystem()) {
            z = true;
        }
        addStrikeUserItem(zIsEqualsNotNull, z);
        if (feed.status() == 9) {
            addItem(R.string.advanced_options_enable_post, this.listener);
        } else {
            addItem(R.string.advanced_options_disable_post, SupportMenu.CATEGORY_MASK, this.listener);
        }
        if (userProfile == null || !userProfile.isCurator()) {
            return;
        }
        addItem(R.string.advanced_options_moderation_history, this.listener);
    }

    private void addSendBroadcastItem(NVObject nVObject) {
        User userProfile = ((AccountService) this.mNvContext.getService("account")).getUserProfile();
        if (nVObject.status() == 9 || !userProfile.isLeader()) {
            return;
        }
        addItem(getContext().getResources().getString(R.string.broadcast_page), getContext().getResources().getString(R.string.broadcast_page_hint), ViewCompat.MEASURED_STATE_MASK, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupCommentOptions(Comment comment) {
        User user;
        this.mAdvancedLayout.removeAllViews();
        AccountService accountService = (AccountService) this.mNvContext.getService("account");
        User userProfile = accountService.getUserProfile();
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(accountService.getUserId(), comment.author.uid);
        if (userProfile != null && userProfile.isCurator() && !zIsEqualsNotNull && this.communityConfigHelper.isChatEnabled()) {
            addItem(R.string.advanced_options_message_member, this.messageUserListener);
        }
        addStrikeUserItem(zIsEqualsNotNull, (comment == null || (user = comment.author) == null || !user.isSystem()) ? false : true);
        addItem(R.string.advanced_options_delete_comment, SupportMenu.CATEGORY_MASK, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupChatRoomOptions(ChatThread chatThread) {
        User userProfile;
        boolean zIsEqualsNotNull;
        this.mAdvancedLayout.removeAllViews();
        AccountService accountService = (AccountService) this.mNvContext.getService("account");
        boolean z = false;
        if (accountService != null) {
            userProfile = accountService.getUserProfile();
            zIsEqualsNotNull = Utils.isEqualsNotNull(accountService.getUserId(), chatThread.uid());
        } else {
            userProfile = null;
            zIsEqualsNotNull = false;
        }
        if (chatThread.publicChat() && chatThread.status != 9 && this.communityConfigHelper.isFeaturedChatThreadEnabled() && userProfile != null && userProfile.isCurator()) {
            if (chatThread.featureType() == 5) {
                addItem(R.string.advanced_options_unfeature_chat, this.listener);
            } else {
                addItem(R.string.advanced_options_feature_chat, this.listener);
            }
        }
        if (userProfile != null && userProfile.isCurator() && !zIsEqualsNotNull && this.communityConfigHelper.isChatEnabled()) {
            addItem(R.string.advanced_options_message_member, this.messageUserListener);
        }
        if (userProfile != null && userProfile.isCurator()) {
            addItem(R.string.advanced_options_moderation_history, this.listener);
        }
        if (chatThread != null && chatThread.owner() != null && chatThread.owner().isSystem()) {
            z = true;
        }
        addStrikeUserItem(zIsEqualsNotNull, z);
        addItem(getContext().getString(R.string.trans_organizer), getContext().getString(R.string.trans_organizer_settings_description), ViewCompat.MEASURED_STATE_MASK, this.listener);
        if (chatThread.status() == 9) {
            addItem(R.string.advanced_options_chat_enable_chatroom, this.listener);
        } else {
            addItem(R.string.advanced_options_chat_disable_chatroom, SupportMenu.CATEGORY_MASK, this.listener);
        }
        if (chatThread.type == 2) {
            addSendBroadcastItem(chatThread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupChatMessageOptions(ChatMessage chatMessage) {
        User user;
        this.mAdvancedLayout.removeAllViews();
        AccountService accountService = (AccountService) this.mNvContext.getService("account");
        User userProfile = accountService.getUserProfile();
        String userId = accountService.getUserId();
        User user2 = chatMessage.author;
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(userId, user2 == null ? null : user2.uid);
        if (userProfile != null && userProfile.isCurator() && !zIsEqualsNotNull && this.communityConfigHelper.isChatEnabled()) {
            addItem(R.string.advanced_options_message_member, this.messageUserListener);
        }
        addStrikeUserItem(zIsEqualsNotNull, (chatMessage == null || (user = chatMessage.author) == null || !user.isSystem()) ? false : true);
        addItem(R.string.advanced_options_chat_delete, SupportMenu.CATEGORY_MASK, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupSharedFileOptions(SharedFile sharedFile) {
        User user;
        this.mAdvancedLayout.removeAllViews();
        AccountService accountService = (AccountService) this.mNvContext.getService("account");
        User userProfile = accountService.getUserProfile();
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(accountService.getUserId(), sharedFile.author.uid);
        if (userProfile != null && userProfile.isCurator() && !zIsEqualsNotNull && this.communityConfigHelper.isChatEnabled()) {
            addItem(R.string.advanced_options_message_member, this.messageUserListener);
        }
        addStrikeUserItem(zIsEqualsNotNull, (sharedFile == null || (user = sharedFile.author) == null || !user.isSystem()) ? false : true);
        if (sharedFile.status == 9) {
            addItem(R.string.advanced_options_enable_photo, this.listener);
        } else {
            addItem(R.string.advanced_options_disable_photo, SupportMenu.CATEGORY_MASK, this.listener);
        }
        if (userProfile == null || !userProfile.isCurator()) {
            return;
        }
        addItem(R.string.advanced_options_moderation_history, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupUserProfileOptions(User user) {
        this.mAdvancedLayout.removeAllViews();
        AccountService accountService = (AccountService) this.mNvContext.getService("account");
        User userProfile = accountService.getUserProfile();
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(accountService.getUserId(), user.uid);
        if (userProfile != null && userProfile.isCurator() && !zIsEqualsNotNull && this.communityConfigHelper.isChatEnabled()) {
            addItem(R.string.advanced_options_message_member, this.messageUserListener);
        }
        if (userProfile != null && userProfile.isLeader()) {
            addItem(R.string.advanced_options_edit_user_title, this.listener);
        }
        if (this.communityConfigHelper.isFeaturedMemberEnabled() && userProfile != null && userProfile.isLeader()) {
            if (user.featureType() == 4) {
                addItem(R.string.unfeature_this_member, this.listener);
            } else if (user.featureType() == 0) {
                addItem(R.string.feature_this_member, this.listener);
            }
        }
        if (userProfile != null && userProfile.isCurator()) {
            addItem(R.string.advanced_options_moderation_history, this.listener);
        }
        addStrikeUserItem(zIsEqualsNotNull, user != null && user.isSystem());
        if (userProfile != null && userProfile.isCurator() && !zIsEqualsNotNull) {
            if (!user.hideUserProfile()) {
                addItem(R.string.advanced_options_hide_userprofile, -27392, this.hideUserProfileListener);
            } else {
                addItem(R.string.advanced_options_unhide_userprofile, this.unHideUserProfileListener);
            }
        }
        if (userProfile == null || !userProfile.isLeader() || zIsEqualsNotNull) {
            return;
        }
        if (user.status() == 9) {
            addItem(R.string.advanced_options_unban_user, SupportMenu.CATEGORY_MASK, this.unBanListener);
        } else {
            addItem(R.string.advanced_options_ban_user, SupportMenu.CATEGORY_MASK, this.banListener);
        }
    }

    private void addStrikeUserItem(boolean z, boolean z2) {
        User userProfile;
        if (!this.communityConfigHelper.isChatEnabled() || (userProfile = ((AccountService) this.mNvContext.getService("account")).getUserProfile()) == null || !userProfile.isLeader() || z || z2) {
            return;
        }
        addItem(R.string.advanced_options_strike_member, -27392, this.strikeUserProfileListener);
    }

    /* renamed from: com.narvii.poweruser.AdvancedOptionDialog$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnClickListener {
        AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(final View view) {
            if (AdvancedOptionDialog.this.isShowing()) {
                AdvancedOptionDialog.this.dismiss();
            }
            if (view instanceof FlagItemLayout) {
                new AdvanceUserUtils(AdvancedOptionDialog.this.mNvContext).showBanUserWarningDialog(new Callback<Integer>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.3.1
                    @Override // com.narvii.util.Callback
                    public void call(Integer num) {
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (iIntValue == 0) {
                                AdvancedOptionDialog.this.sendStrike();
                                return;
                            }
                            if (iIntValue != 1) {
                                return;
                            }
                            if (!(AdvancedOptionDialog.this.mObject instanceof User) || !((User) AdvancedOptionDialog.this.mObject).isInfluencer()) {
                                AnonymousClass3.this.showBanUserChoiceDialog((FlagItemLayout) view);
                                return;
                            }
                            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(AdvancedOptionDialog.this.getContext());
                            aCMAlertDialog.setTitle(R.string.push_setting_confirm);
                            aCMAlertDialog.setMessage(R.string.ban_influencer_warning);
                            aCMAlertDialog.addButton(R.string.cancel, null);
                            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.3.1.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view2) {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    AnonymousClass3.this.showBanUserChoiceDialog((FlagItemLayout) view);
                                }
                            }, SupportMenu.CATEGORY_MASK);
                            aCMAlertDialog.show();
                        }
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showBanUserChoiceDialog(FlagItemLayout flagItemLayout) {
            int[] iArr = {R.string.flag_off_topic, R.string.flag_bullying, R.string.flag_sexually_explicit, R.string.flag_inappropriate_request, R.string.flag_violent, R.string.flag_spam, R.string.flag_other};
            if (AdvancedOptionDialog.this.itemEquals(flagItemLayout, R.string.advanced_options_ban_user)) {
                new SingleChoiceDialog.Builder(AdvancedOptionDialog.this.mNvContext).addItems(iArr).setShowIndicator(false).setTitle(AdvancedOptionDialog.this.getContext().getResources().getString(R.string.reason_for_ban)).setTitleColor(AdvancedOptionDialog.this.getContext().getResources().getColor(R.color.color_default)).addButton(R.string.cancel, 0, new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.3.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AdvancedOptionDialog.this.dismiss();
                    }
                }).setSingleChoiceCallBack(new SingleChoiceDialog.SingleChoiceDialogCallBack() { // from class: com.narvii.poweruser.AdvancedOptionDialog.3.2
                    @Override // com.narvii.util.dialog.SingleChoiceDialog.SingleChoiceDialogCallBack
                    public void onItemSelected(SingleChoiceDialog singleChoiceDialog, View view, int i, String str) {
                        singleChoiceDialog.dismiss();
                        int disableUserNoteType = CommunityHelper.getDisableUserNoteType(i);
                        if (AdvancedOptionDialog.this.mObject instanceof User) {
                            AdvancedOptionDialog advancedOptionDialog = AdvancedOptionDialog.this;
                            advancedOptionDialog.banUser((User) advancedOptionDialog.mObject, disableUserNoteType);
                        }
                    }
                }).builder().show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStrike() {
        Intent intent = new Intent(getContext(), (Class<?>) SendStrikeActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("attachObject", JacksonUtils.writeAsString(this.mObject));
        bundle.putInt("attachType", this.mObject.objectType());
        bundle.putInt("launchMode", 1);
        bundle.putBoolean(ChatInputFragment.KEY_AUTO_CHECK, true);
        intent.putExtras(bundle);
        getContext().startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reviewQuiz() {
        Class<BlogResponse> cls = BlogResponse.class;
        NVObject nVObject = this.mObject;
        if (nVObject instanceof Blog) {
            final ProgressDialog progressDialog = new ProgressDialog(this.mNvContext.getContext(), BlogResponse.class);
            progressDialog.show();
            ((ApiService) this.mNvContext.getService("api")).exec(ApiRequest.builder().path("/blog/" + ((Blog) nVObject).id()).param("action", "review").build(), new ApiResponseListener<BlogResponse>(cls) { // from class: com.narvii.poweruser.AdvancedOptionDialog.8
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    if ((AdvancedOptionDialog.this.mNvContext instanceof NVFragment) && ((NVFragment) AdvancedOptionDialog.this.mNvContext).isAdded()) {
                        NVToast.makeText(AdvancedOptionDialog.this.mNvContext.getContext(), str, 1).show();
                        ProgressDialog progressDialog2 = progressDialog;
                        if (progressDialog2 == null || !progressDialog2.isShowing()) {
                            return;
                        }
                        progressDialog.dismiss();
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, BlogResponse blogResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) blogResponse);
                    if ((AdvancedOptionDialog.this.mNvContext instanceof NVFragment) && ((NVFragment) AdvancedOptionDialog.this.mNvContext).isAdded()) {
                        ProgressDialog progressDialog2 = progressDialog;
                        if (progressDialog2 != null && progressDialog2.isShowing()) {
                            progressDialog.dismiss();
                        }
                        Blog blog = blogResponse.blog;
                        ((NotificationCenter) AdvancedOptionDialog.this.mNvContext.getService("notification")).sendNotification(new Notification("update", blog));
                        AdvancedOptionDialog.this.gotoQuizReviewPage(blog);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoQuizReviewPage(Blog blog) {
        Intent intent = FragmentWrapperActivity.intent(QuizReviewListFragment.class);
        intent.putExtra(EntryManager.ENTRY_QUIZZES, JacksonUtils.writeAsString(blog));
        this.mNvContext.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchModerationHistory() {
        String strTitle;
        Intent intent = FragmentWrapperActivity.intent(ModerationHistoryFragment.class);
        intent.putExtra(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, this.mObject.id());
        intent.putExtra(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, this.mObject.objectType());
        NVObject nVObject = this.mObject;
        if (nVObject instanceof User) {
            strTitle = ((User) nVObject).nickname();
        } else if (nVObject instanceof Feed) {
            strTitle = ((Feed) nVObject).title();
        } else {
            strTitle = nVObject instanceof ChatThread ? ((ChatThread) nVObject).title : null;
        }
        intent.putExtra("title", strTitle);
        NVContext nVContext = this.mNvContext;
        if (nVContext instanceof NVFragment) {
            if (((NVFragment) nVContext).isAdded()) {
                this.mNvContext.startActivity(intent);
                return;
            }
            return;
        }
        nVContext.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changUserProfileStatus(final User user, final boolean z) {
        showLeaveNotDialog(new Callback<String>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.9
            @Override // com.narvii.util.Callback
            public void call(String str) {
                ApiRequest.Builder builder = new ApiRequest.Builder();
                builder.https().post();
                builder.path("/user-profile/" + user.id() + "/admin");
                builder.param("adminOpName", Integer.valueOf(z ? 18 : 19));
                if (!TextUtils.isEmpty(str)) {
                    builder.param("adminOpNote", AdvancedOptionDialog.this.getAdminNoteNode(str));
                }
                ApiRequest apiRequestBuild = builder.build();
                ProgressDialog progressDialog = new ProgressDialog(AdvancedOptionDialog.this.getContext());
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.9.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        User user2 = user;
                        if (user2.extensions == null) {
                            user2.extensions = JacksonUtils.createObjectNode();
                        }
                        AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                        user.extensions.put("hideUserProfile", z);
                        ((NotificationCenter) AdvancedOptionDialog.this.mNvContext.getService("notification")).sendNotification(new Notification("update", user));
                        if (AdvancedOptionDialog.this.isShowing()) {
                            AdvancedOptionDialog.this.dismiss();
                        }
                    }
                };
                progressDialog.show();
                ((ApiService) AdvancedOptionDialog.this.mNvContext.getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ObjectNode getAdminNoteNode(String str) {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("content", str);
        return objectNodeCreateObjectNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLeaveNotDialog(final Callback<String> callback) {
        if (isShowing()) {
            dismiss();
        }
        final AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setTitleColor(Color.rgb(0, 206, 125));
        alertDialog.setTitle(R.string.leave_a_note);
        alertDialog.setContentView(R.layout.send_leader_note_layout);
        final EditText editText = (EditText) alertDialog.findViewById(R.id.request_edit);
        alertDialog.addButton(getContext().getString(R.string.cancel), 0, new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SoftKeyboard.hideSoftKeyboard(editText);
                alertDialog.dismiss();
            }
        });
        alertDialog.addButton(getContext().getString(R.string.send), 4, new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(editText.getText().toString());
                }
                alertDialog.dismiss();
            }
        });
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean itemEquals(FlagItemLayout flagItemLayout, int i) {
        return flagItemLayout.getLeftText().equals(getContext().getString(i));
    }

    void submitOfficialCatalog(final Item item) {
        if (isShowing()) {
            dismiss();
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(this.mNvContext.getContext(), android.R.style.Theme.Holo.Light.Dialog));
        builder.setTitle(R.string.catalog_submit_to_official_title);
        final View viewInflate = View.inflate(getContext(), R.layout.catalog_submit_official_dialog, null);
        builder.setView(viewInflate);
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                TextView textView = (TextView) viewInflate.findViewById(R.id.text);
                ProgressDialog progressDialog = new ProgressDialog(AdvancedOptionDialog.this.getContext());
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.13.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        if (AdvancedOptionDialog.this.mNvContext.getContext() != null) {
                            NVToast.makeText(AdvancedOptionDialog.this.mNvContext.getContext(), AdvancedOptionDialog.this.mNvContext.getContext().getString(R.string.submitted), 0).show();
                        }
                    }
                };
                ((ApiService) AdvancedOptionDialog.this.mNvContext.getService("api")).exec(ApiRequest.builder().post().path("/knowledge-base-request").param(AccountNotice.LEVEL_MESSAGE, textView.getText().toString()).param("itemId", item.itemId).build(), progressDialog.dismissListener);
                progressDialog.show();
            }
        });
        builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.show();
        Utils.postDelayed(new Runnable() { // from class: com.narvii.poweruser.AdvancedOptionDialog.14
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard((EditText) viewInflate.findViewById(R.id.text));
            }
        }, 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteComment(final Comment comment) {
        final com.narvii.util.dialog.AlertDialog alertDialog = new com.narvii.util.dialog.AlertDialog(getContext());
        alertDialog.setTitle(R.string.warning);
        alertDialog.setTitleColor(SupportMenu.CATEGORY_MASK);
        alertDialog.setMessage(R.string.delete_comment_message);
        alertDialog.addButton(R.string.cancel, 0, (View.OnClickListener) null);
        alertDialog.addButton(R.string.yes, 8, new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (alertDialog.isShowing()) {
                    alertDialog.dismiss();
                }
                AdvancedOptionDialog.this.showLeaveNotDialog(new Callback<String>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.15.1
                    @Override // com.narvii.util.Callback
                    public void call(String str) {
                        AnonymousClass15 anonymousClass15 = AnonymousClass15.this;
                        AdvancedOptionDialog.this.sendDeleteCommentRequest(comment, str);
                    }
                });
            }
        });
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendDeleteCommentRequest(final Comment comment, String str) {
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path(CommentHelper.getBaseCommentPath(Utils.isGlobalInteractionScope(this.mNvContext), comment) + "/admin");
        builderPath.param("adminOpName", 102);
        if (!TextUtils.isEmpty(str)) {
            builderPath.param("adminOpNote", getAdminNoteNode(str));
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.16
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                if (AdvancedOptionDialog.this.isShowing()) {
                    AdvancedOptionDialog.this.dismiss();
                }
                new CommentHelper(AdvancedOptionDialog.this.mNvContext).sendCommentNotification("delete", comment, false);
                if (((AccountService) AdvancedOptionDialog.this.mNvContext.getService("account")).getUserId().equals(AdvancedOptionDialog.this.mObject.uid())) {
                    return;
                }
                AdvancedOptionDialog.this.showStrikeDialog(comment.objectType());
            }
        };
        progressDialog.show();
        ((ApiService) this.mNvContext.getService("api")).exec(builderPath.build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeUserTitle(User user) {
        if (user == null || user.id() == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) this.mNvContext.getService("api")).exec(ApiRequest.builder().path("/user-profile/" + user.id()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.poweruser.AdvancedOptionDialog.17
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                try {
                    if (AdvancedOptionDialog.this.isShowing()) {
                        AdvancedOptionDialog.this.dismiss();
                    }
                } catch (Exception unused) {
                }
                try {
                    progressDialog.dismiss();
                } catch (Exception unused2) {
                }
                Intent intent = FragmentWrapperActivity.intent(EditUserTitleFragment.class);
                intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(userResponse.user));
                AdvancedOptionDialog.this.mNvContext.getContext().startActivity(intent);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                try {
                    progressDialog.dismiss();
                } catch (Exception unused) {
                }
                NVToast.makeText(AdvancedOptionDialog.this.getContext(), str, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMessageValidForOtherReasons(String str) {
        if (TextUtils.isEmpty(str)) {
            NVToast.makeText(getContext(), R.string.reason_for_ban_not_empty, 1).show();
            return false;
        }
        String[] strArrSplit = str.split(" ");
        if (strArrSplit.length >= 3) {
            int i = 0;
            for (String str2 : strArrSplit) {
                if (!TextUtils.isEmpty(str2) && !TextUtils.equals(str2, " ")) {
                    i++;
                }
                if (i >= 3) {
                    return true;
                }
            }
        }
        NVToast.makeText(getContext(), R.string.reason_for_ban_three_words_required, 1).show();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void banUser(final User user, final int i) {
        final RequestDialog requestDialog = new RequestDialog(getContext());
        requestDialog.setTitleColor(Color.rgb(0, 206, 125));
        requestDialog.setTitle(R.string.community_request_title);
        requestDialog.setEdtHint(new SpannableString(getContext().getString(R.string.reason_for_ban_hint)));
        requestDialog.setCountShow();
        requestDialog.setMaxCount(500);
        requestDialog.addButton(getContext().getString(R.string.cancel), 0, new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SoftKeyboard.hideSoftKeyboard(requestDialog.getRequestEdit());
                requestDialog.dismiss();
            }
        });
        requestDialog.addButton(getContext().getString(R.string.chat_send), 4, new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String requestText = requestDialog.getRequestText();
                if (AdvancedOptionDialog.this.isMessageValidForOtherReasons(requestText)) {
                    if (requestDialog.getRequestText().length() > 500) {
                        NVToast.makeText(AdvancedOptionDialog.this.getContext(), R.string.beyond_limit, 1).show();
                        return;
                    }
                    final ProgressDialog progressDialog = new ProgressDialog(AdvancedOptionDialog.this.getContext());
                    progressDialog.show();
                    SoftKeyboard.hideSoftKeyboard(requestDialog.getRequestEdit());
                    ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode.put("content", requestText);
                    ApiRequest.Builder builderParam = new ApiRequest.Builder().post().path("/user-profile/" + user.uid + "/ban").param("reasonType", Integer.valueOf(i));
                    if (!TextUtils.isEmpty(requestText)) {
                        builderParam.param("note", objectNodeCreateObjectNode);
                    }
                    ((ApiService) AdvancedOptionDialog.this.mNvContext.getService("api")).exec(builderParam.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.poweruser.AdvancedOptionDialog.19.1
                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                            super.onFinish(apiRequest, apiResponse);
                            AnonymousClass19 anonymousClass19 = AnonymousClass19.this;
                            user.status = 9;
                            ((NotificationCenter) AdvancedOptionDialog.this.mNvContext.getService("notification")).sendNotification(new Notification("update", user));
                            requestDialog.dismiss();
                            progressDialog.dismiss();
                        }

                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                            super.onFail(apiRequest, i2, list, str, apiResponse, th);
                            NVToast.makeText(AdvancedOptionDialog.this.getContext(), str, 1).show();
                            requestDialog.dismiss();
                            progressDialog.dismiss();
                        }
                    });
                }
            }
        });
        requestDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unBanUser(final User user) {
        showLeaveNotDialog(new Callback<String>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.20
            @Override // com.narvii.util.Callback
            public void call(String str) {
                ApiService apiService = (ApiService) AdvancedOptionDialog.this.mNvContext.getService("api");
                ProgressDialog progressDialog = new ProgressDialog(AdvancedOptionDialog.this.getContext());
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.20.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        if (AdvancedOptionDialog.this.isShowing()) {
                            AdvancedOptionDialog.this.dismiss();
                        }
                        AnonymousClass20 anonymousClass20 = AnonymousClass20.this;
                        user.status = 0;
                        ((NotificationCenter) AdvancedOptionDialog.this.mNvContext.getService("notification")).sendNotification(new Notification("update", user));
                    }
                };
                progressDialog.show();
                ApiRequest.Builder builderPath = new ApiRequest.Builder().post().path("/user-profile/" + user.uid + "/unban");
                if (!TextUtils.isEmpty(str)) {
                    builderPath.param("note", AdvancedOptionDialog.this.getAdminNoteNode(str));
                }
                apiService.exec(builderPath.build(), progressDialog.dismissListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeObjectStatus(final NVObject nVObject, final boolean z) {
        showLeaveNotDialog(new Callback<String>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.21
            @Override // com.narvii.util.Callback
            public void call(String str) {
                ApiRequest.Builder builder = new ApiRequest.Builder();
                builder.https().post();
                builder.path(nVObject.apiTypeName() + "/" + nVObject.id() + "/admin");
                builder.param("adminOpName", 110);
                builder.param("adminOpValue", Integer.valueOf(z ? 0 : 9));
                if (!TextUtils.isEmpty(str)) {
                    builder.param("adminOpNote", AdvancedOptionDialog.this.getAdminNoteNode(str));
                }
                ApiRequest apiRequestBuild = builder.build();
                ProgressDialog progressDialog = new ProgressDialog(AdvancedOptionDialog.this.getContext());
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.21.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        boolean zIsSystem;
                        AnonymousClass21 anonymousClass21 = AnonymousClass21.this;
                        NVObject nVObject2 = nVObject;
                        if (nVObject2 instanceof Feed) {
                            ((Feed) nVObject2).status = z ? 0 : 9;
                            zIsSystem = ((Feed) nVObject).author.isSystem();
                        } else {
                            if (nVObject2 instanceof Comment) {
                                ((Feed) nVObject2).status = z ? 0 : 9;
                            }
                            zIsSystem = false;
                        }
                        AnonymousClass21 anonymousClass212 = AnonymousClass21.this;
                        NVObject nVObject3 = nVObject;
                        if (nVObject3 instanceof ChatThread) {
                            ((ChatThread) nVObject3).status = z ? 0 : 9;
                        }
                        AnonymousClass21 anonymousClass213 = AnonymousClass21.this;
                        NVObject nVObject4 = nVObject;
                        if (nVObject4 instanceof ChatMessage) {
                            ((ChatMessage) nVObject4)._status = z ? 0 : 9;
                        }
                        AnonymousClass21 anonymousClass214 = AnonymousClass21.this;
                        NVObject nVObject5 = nVObject;
                        if (nVObject5 instanceof SharedFile) {
                            ((SharedFile) nVObject5).status = z ? 0 : 9;
                        }
                        NVObject nVObject6 = nVObject;
                        if (nVObject6 instanceof ChatThread) {
                            NotificationUtils.sendNotificationIncludeGlobal(AdvancedOptionDialog.this.mNvContext, new Notification("update", nVObject6));
                        } else {
                            ((NotificationCenter) AdvancedOptionDialog.this.mNvContext.getService("notification")).sendNotification(new Notification("update", nVObject6));
                        }
                        if (AdvancedOptionDialog.this.isShowing()) {
                            AdvancedOptionDialog.this.dismiss();
                        }
                        AnonymousClass21 anonymousClass215 = AnonymousClass21.this;
                        if (z || ((AccountService) AdvancedOptionDialog.this.mNvContext.getService("account")).getUserId().equals(AdvancedOptionDialog.this.mObject.uid()) || zIsSystem) {
                            return;
                        }
                        AnonymousClass21 anonymousClass216 = AnonymousClass21.this;
                        AdvancedOptionDialog.this.showStrikeDialog(nVObject.objectType());
                    }
                };
                progressDialog.show();
                ((ApiService) AdvancedOptionDialog.this.mNvContext.getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteChatMessage(final ChatMessage chatMessage) {
        final com.narvii.util.dialog.AlertDialog alertDialog = new com.narvii.util.dialog.AlertDialog(getContext());
        alertDialog.setTitle(R.string.warning);
        alertDialog.setTitleColor(SupportMenu.CATEGORY_MASK);
        alertDialog.setMessage(R.string.delete_chat_message);
        alertDialog.addButton(R.string.cancel, 0, (View.OnClickListener) null);
        alertDialog.addButton(R.string.yes, 8, new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (alertDialog.isShowing()) {
                    alertDialog.dismiss();
                }
                AdvancedOptionDialog.this.showLeaveNotDialog(new Callback<String>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.22.1
                    @Override // com.narvii.util.Callback
                    public void call(String str) {
                        AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                        AdvancedOptionDialog.this.sendDeleteChatMessageRequest(chatMessage, str);
                    }
                });
            }
        });
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendDeleteChatMessageRequest(final ChatMessage chatMessage, String str) {
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path("/chat/thread/" + chatMessage.threadId + "/message/" + chatMessage.id() + "/admin");
        builderPath.param("adminOpName", 102);
        if (!TextUtils.isEmpty(str)) {
            builderPath.param("adminOpNote", getAdminNoteNode(str));
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.23
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                if (AdvancedOptionDialog.this.isShowing()) {
                    AdvancedOptionDialog.this.dismiss();
                }
                ((NotificationCenter) AdvancedOptionDialog.this.mNvContext.getService("notification")).sendNotification(new Notification("delete", chatMessage));
                if (((AccountService) AdvancedOptionDialog.this.mNvContext.getService("account")).getUserId().equals(AdvancedOptionDialog.this.mObject.uid())) {
                    return;
                }
                AdvancedOptionDialog.this.showStrikeDialog(chatMessage.objectType());
            }
        };
        progressDialog.show();
        ((ApiService) this.mNvContext.getService("api")).exec(builderPath.build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStrikeDialog(int i) {
        AccountService accountService = (AccountService) this.mNvContext.getService("account");
        boolean zIsChatEnabled = new CommunityConfigHelper(this.mNvContext).isChatEnabled();
        boolean zIsLeader = accountService.getUserProfile().isLeader();
        final com.narvii.util.dialog.AlertDialog alertDialog = new com.narvii.util.dialog.AlertDialog(getContext());
        if (i == 0) {
            alertDialog.setTitle(getContext().getString(R.string.successfully_hidden));
        } else if (i == 7 || i == 3) {
            alertDialog.setTitle(getContext().getString(R.string.successfully_deleted));
        } else {
            alertDialog.setTitle(getContext().getString(R.string.successfully_disable));
        }
        alertDialog.setContentView(R.layout.advanced_messsage_user);
        if (zIsLeader) {
            ((TextView) alertDialog.findViewById(R.id.content)).setText(getContext().getString(R.string.strike_info1));
        }
        alertDialog.findViewById(R.id.btn_strike_user).setVisibility(zIsLeader ? 0 : 8);
        alertDialog.findViewById(R.id.btn_message_user).setVisibility(zIsChatEnabled ? 0 : 8);
        ((Button) alertDialog.findViewById(R.id.btn_strike_user)).setText(getContext().getString(R.string.advanced_options_strike_member));
        ((Button) alertDialog.findViewById(R.id.btn_message_user)).setText(getContext().getString(R.string.send_a_message));
        ((Button) alertDialog.findViewById(R.id.btn_strike_user)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdvancedOptionDialog.this.dismiss();
                alertDialog.dismiss();
                new AdvanceUserUtils(AdvancedOptionDialog.this.mNvContext).showStrikeWarningDialog(new Callback<Integer>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.24.1
                    @Override // com.narvii.util.Callback
                    public void call(Integer num) {
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (iIntValue == 0) {
                                AdvancedOptionDialog advancedOptionDialog = AdvancedOptionDialog.this;
                                advancedOptionDialog.messageUser(advancedOptionDialog.mObject);
                            } else {
                                if (iIntValue != 1) {
                                    return;
                                }
                                AdvancedOptionDialog.this.sendStrike();
                            }
                        }
                    }
                });
            }
        });
        ((Button) alertDialog.findViewById(R.id.btn_message_user)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.25
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
                AdvancedOptionDialog.this.dismiss();
                AdvancedOptionDialog advancedOptionDialog = AdvancedOptionDialog.this;
                advancedOptionDialog.messageUser(advancedOptionDialog.mObject);
            }
        });
        ((Button) alertDialog.findViewById(R.id.btn_done)).setText(R.string.done);
        alertDialog.findViewById(R.id.btn_done).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.AdvancedOptionDialog.26
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (alertDialog.isShowing()) {
                    alertDialog.dismiss();
                }
            }
        });
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void messageUser(NVObject nVObject) {
        RequestChatUserHelper requestChatUserHelper = new RequestChatUserHelper(this.mNvContext);
        NVObject nVObject2 = this.mObject;
        requestChatUserHelper.request(nVObject2, nVObject2.objectType(), null, new Callback<Intent>() { // from class: com.narvii.poweruser.AdvancedOptionDialog.27
            @Override // com.narvii.util.Callback
            public void call(Intent intent) {
                AdvancedOptionDialog.this.mNvContext.startActivity(intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeCategory() {
        if (this.mObject instanceof Blog) {
            if (this.mBlogCateLog == null) {
                ApiRequest apiRequestBuild = new ApiRequest.Builder().path("/blog/" + this.mObject.id()).build();
                final ProgressDialog progressDialog = new ProgressDialog(getContext());
                progressDialog.show();
                ((ApiService) this.mNvContext.getService("api")).exec(apiRequestBuild, new ApiResponseListener<BlogResponse>(BlogResponse.class) { // from class: com.narvii.poweruser.AdvancedOptionDialog.28
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i, list, str, apiResponse, th);
                        progressDialog.dismiss();
                        AdvancedOptionDialog.this.showCategoryPickFragment();
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, BlogResponse blogResponse) throws Exception {
                        super.onFinish(apiRequest, (ApiRequest) blogResponse);
                        AdvancedOptionDialog.this.mBlogCateLog = blogResponse.taggedBlogCategoryList;
                        progressDialog.dismiss();
                        AdvancedOptionDialog.this.showCategoryPickFragment();
                    }
                });
                return;
            }
            showCategoryPickFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCategoryPickFragment() {
        Intent intent = FragmentWrapperActivity.intent(com.narvii.blog.category.ChangeCategoryFragment.class);
        intent.putExtra("blogCategoryList", JacksonUtils.writeAsString(this.mBlogCateLog));
        intent.putExtra("blog", JacksonUtils.writeAsString((Blog) this.mObject));
        intent.putExtra(BlogCategoryPickerFragment.KEY_IS_QUIZ, ((Blog) this.mObject).type == 6);
        this.mNvContext.startActivity(intent);
        if (isShowing()) {
            dismiss();
        }
    }

    public static class Builder {
        AdvancedOptionDialog optionDialog;

        public Builder(NVContext nVContext) {
            this.optionDialog = new AdvancedOptionDialog(nVContext);
        }

        public Builder nvObject(NVObject nVObject) {
            this.optionDialog.mObject = nVObject;
            if ((nVObject instanceof Blog) || (nVObject instanceof Item)) {
                this.optionDialog.setupFeedOptions((Feed) nVObject);
            } else if (nVObject instanceof Comment) {
                this.optionDialog.setupCommentOptions((Comment) nVObject);
            } else if (nVObject instanceof ChatThread) {
                this.optionDialog.setupChatRoomOptions((ChatThread) nVObject);
            } else if (nVObject instanceof ChatMessage) {
                this.optionDialog.setupChatMessageOptions((ChatMessage) nVObject);
            } else if (nVObject instanceof User) {
                this.optionDialog.setupUserProfileOptions((User) nVObject);
            } else if (nVObject instanceof SharedFile) {
                this.optionDialog.setupSharedFileOptions((SharedFile) nVObject);
            }
            return this;
        }

        public Builder attachBlogCateLog(List<BlogCategory> list) {
            this.optionDialog.mBlogCateLog = list;
            return this;
        }

        public Builder addItem(int i, View.OnClickListener onClickListener) {
            this.optionDialog.addItem(i, onClickListener);
            return this;
        }

        public AdvancedOptionDialog build() {
            return this.optionDialog;
        }
    }
}

package com.narvii.chat.dialog;

import android.content.Context;
import android.content.Intent;
import android.support.v4.internal.view.SupportMenu;
import android.view.View;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChannelFlagHelper;
import com.narvii.chat.ChatThreadUserOperationHelper;
import com.narvii.chat.dialog.VVChatUserDialog;
import com.narvii.chat.organizer.ChatOrganizerPickerFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.chat.video.utils.LiveChannelInviteHistoryHelper;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.onlinestatus.UserDialog;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.ACMAlertDialog;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: VVChatUserDialog.kt */
/* loaded from: classes2.dex */
public final class VVChatUserDialog extends UserDialog implements View.OnClickListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VVChatUserDialog.class), "account", "getAccount()Lcom/narvii/account/AccountService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VVChatUserDialog.class), "rtc", "getRtc()Lcom/narvii/chat/rtc/RtcService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VVChatUserDialog.class), "config", "getConfig()Lcom/narvii/config/ConfigService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VVChatUserDialog.class), "leaveCurChatContainer", "getLeaveCurChatContainer()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VVChatUserDialog.class), "leaveCurChat", "getLeaveCurChat()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VVChatUserDialog.class), "speakerActionView", "getSpeakerActionView()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VVChatUserDialog.class), "onHoldContainer", "getOnHoldContainer()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VVChatUserDialog.class), "flagView", "getFlagView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VVChatUserDialog.class), "startChatView", "getStartChatView()Landroid/view/View;"))};
    private final Lazy account$delegate;
    private int channelType;
    private final ChatHelper chatHelper;
    private ChatThread chatThread;
    private final Lazy config$delegate;
    private ChannelUserWrapper curChannelUser;
    private boolean curUserIsGuest;
    private final Lazy flagView$delegate;
    private final Lazy leaveCurChat$delegate;
    private final Lazy leaveCurChatContainer$delegate;
    private final UserDialog.UserDialogClickListener listener;
    private boolean muteVideoWhenBlockUser;
    private boolean needVideoFrameWhenFlag;
    private final NVContext nvContext;
    private final Lazy onHoldContainer$delegate;
    private final Lazy rtc$delegate;
    private final Runnable runnable;
    private final Lazy speakerActionView$delegate;
    private final Lazy startChatView$delegate;
    private String threadId;
    private VVProfileClickListener vvProfileClickListener;
    private final VVChatHelper vvchatHelper;

    /* compiled from: VVChatUserDialog.kt */
    public interface VVProfileClickListener {
        void onStartChat(User user);
    }

    private final View getFlagView() {
        Lazy lazy = this.flagView$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (View) lazy.getValue();
    }

    private final TextView getLeaveCurChat() {
        Lazy lazy = this.leaveCurChat$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (TextView) lazy.getValue();
    }

    private final View getLeaveCurChatContainer() {
        Lazy lazy = this.leaveCurChatContainer$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (View) lazy.getValue();
    }

    private final View getOnHoldContainer() {
        Lazy lazy = this.onHoldContainer$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (View) lazy.getValue();
    }

    private final TextView getSpeakerActionView() {
        Lazy lazy = this.speakerActionView$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (TextView) lazy.getValue();
    }

    private final View getStartChatView() {
        Lazy lazy = this.startChatView$delegate;
        KProperty kProperty = $$delegatedProperties[8];
        return (View) lazy.getValue();
    }

    public final AccountService getAccount() {
        Lazy lazy = this.account$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (AccountService) lazy.getValue();
    }

    public final ConfigService getConfig() {
        Lazy lazy = this.config$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ConfigService) lazy.getValue();
    }

    public final RtcService getRtc() {
        Lazy lazy = this.rtc$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (RtcService) lazy.getValue();
    }

    @Override // com.narvii.onlinestatus.UserDialog
    protected int layoutId() {
        return R.layout.vvchat_user_dialog;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VVChatUserDialog(final NVContext nvContext, final User user) {
        super(nvContext.getContext(), user);
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        this.nvContext = nvContext;
        this.muteVideoWhenBlockUser = true;
        this.needVideoFrameWhenFlag = true;
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        this.chatHelper = new ChatHelper(context);
        this.vvchatHelper = new VVChatHelper(nvContext);
        this.account$delegate = LazyKt__LazyJVMKt.lazy(new Function0<AccountService>() { // from class: com.narvii.chat.dialog.VVChatUserDialog$account$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AccountService invoke() {
                return (AccountService) this.this$0.getService("account");
            }
        });
        this.rtc$delegate = LazyKt__LazyJVMKt.lazy(new Function0<RtcService>() { // from class: com.narvii.chat.dialog.VVChatUserDialog$rtc$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final RtcService invoke() {
                return (RtcService) this.this$0.getService("rtc");
            }
        });
        this.config$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ConfigService>() { // from class: com.narvii.chat.dialog.VVChatUserDialog$config$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ConfigService invoke() {
                return (ConfigService) this.this$0.getService("config");
            }
        });
        this.leaveCurChatContainer$delegate = bind(R.id.leave_chat_container);
        this.leaveCurChat$delegate = bind(R.id.leave_chat);
        this.speakerActionView$delegate = bind(R.id.speaker_action_container);
        this.onHoldContainer$delegate = bind(R.id.on_hold_container);
        this.flagView$delegate = bind(R.id.flag);
        this.startChatView$delegate = bind(R.id.online_user_start_chat);
        this.runnable = new Runnable() { // from class: com.narvii.chat.dialog.VVChatUserDialog$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.updateViews();
            }
        };
        getLeaveCurChat().setOnClickListener(this);
        getSpeakerActionView().setOnClickListener(this);
        this.listener = new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.dialog.VVChatUserDialog$listener$1
            @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
            public final void onClicked(int i, NVObject nVObject) {
                NVContext nVContext = nvContext;
                if (!(nVContext instanceof NVFragment) || ((NVFragment) nVContext).isAdded()) {
                    if (i == 1) {
                        VVChatUserDialog.VVProfileClickListener vVProfileClickListener = this.this$0.vvProfileClickListener;
                        if (vVProfileClickListener != null) {
                            User user2 = ((UserDialog) this.this$0).user;
                            Intrinsics.checkExpressionValueIsNotNull(user2, "this.user");
                            vVProfileClickListener.onStartChat(user2);
                            return;
                        }
                        return;
                    }
                    if (i != 2) {
                        if (i != 3) {
                            return;
                        }
                        this.this$0.onFlagClicked(nvContext);
                    } else {
                        NVContext nVContext2 = nvContext;
                        Intent intent = UserProfileFragment.intent(nVContext2, user);
                        if (intent != null) {
                            intent.putExtra("Source", this.this$0.source);
                        }
                        nVContext2.startActivity(intent);
                    }
                }
            }
        };
    }

    public final Runnable getRunnable() {
        return this.runnable;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VVChatUserDialog(NVContext nvContext, ChannelUserWrapper channelUserWrapper) {
        this(nvContext, channelUserWrapper != null ? ChatHelperKt.getUser(channelUserWrapper) : null);
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        this.curChannelUser = channelUserWrapper;
    }

    public final UserDialog.UserDialogClickListener getListener() {
        return this.listener;
    }

    @Override // com.narvii.onlinestatus.UserDialog
    protected void updateViews() {
        super.updateViews();
        this.source = isScreenRoom() ? "Screening Room" : "VV Chat";
        ViewUtils.visible(getOnHoldContainer(), showOnHold(), true);
        ViewUtils.visible(getFlagView(), !isMyself());
        ViewUtils.visible(getStartChatView(), (isMyself() || ChatHelperKt.isSingleChat(this.chatThread)) ? false : true, true);
        ViewUtils.visible(getLeaveCurChatContainer(), showLeave(), true);
        if (isMyself()) {
            getLeaveCurChat().setText(R.string.leave_this_chat);
            getLeaveCurChat().setTextColor(-11908534);
        } else {
            getLeaveCurChat().setText(R.string.remove_from_chat);
            getLeaveCurChat().setTextColor(-1437166);
        }
        ViewUtils.visible(getSpeakerActionView(), showSpeakerView(), true);
        if (showQuitAsSpeaker()) {
            getSpeakerActionView().setText(R.string.quit_as_speaker);
            getSpeakerActionView().setTextColor(-11908534);
            getSpeakerActionView().setBackgroundResource(R.drawable.selector_text_bg_d4d4d4);
            return;
        }
        if (showRemoveAsSpeaker()) {
            getSpeakerActionView().setText(R.string.remove_as_speaker);
            getSpeakerActionView().setTextColor(-11908534);
            getSpeakerActionView().setBackgroundResource(R.drawable.selector_text_bg_d4d4d4);
        } else if (showInviteAsSpeaker()) {
            User user = this.user;
            Intrinsics.checkExpressionValueIsNotNull(user, "user");
            if (isInvite(user)) {
                getSpeakerActionView().setText(R.string.invited);
                getSpeakerActionView().setTextColor(-11908534);
                getSpeakerActionView().setBackgroundResource(R.drawable.selector_text_bg_d4d4d4);
                getSpeakerActionView().setEnabled(false);
                return;
            }
            getSpeakerActionView().setText(R.string.invite_as_speaker);
            getSpeakerActionView().setTextColor((int) 4294967295L);
            getSpeakerActionView().setBackgroundResource(R.drawable.selector_text_bg_5ed700);
            getSpeakerActionView().setEnabled(true);
        }
    }

    @Override // com.narvii.onlinestatus.UserDialog, com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        if (this.chatThread == null) {
            return;
        }
        super.show();
    }

    private final boolean hostVisible() {
        return isHost() || (isCoHost() && !curUserIsHost());
    }

    private final boolean showOnHold() {
        return hostVisible() && !isMyself();
    }

    private final boolean showSpeakerView() {
        return this.curChannelUser != null && (showQuitAsSpeaker() || showInviteAsSpeaker() || showRemoveAsSpeaker());
    }

    private final boolean showQuitAsSpeaker() {
        return isMyself() && isSpeaker();
    }

    private final boolean showInviteAsSpeaker() {
        return ((!isHost() && !isCoHost()) || isMyself() || curUserIsSpeaker()) ? false : true;
    }

    private final boolean showRemoveAsSpeaker() {
        return !isMyself() && !isSingleChat() && curUserIsSpeaker() && (hostVisible() || isCurator());
    }

    private final boolean showLeave() {
        return !this.curUserIsGuest && ((isMyself() && !this.chatHelper.isGuest(this.chatThread)) || (isOpenChat() && hasAccessRemove()));
    }

    private final boolean isOpenChat() {
        return isPublicChat() || isGroupChat();
    }

    private final boolean hasAccessRemove() {
        return isHost() || (isCoHost() && !curUserIsHostOrCoHost()) || (isCurator() && !curUserIsHost());
    }

    private final boolean isScreenRoom() {
        return this.channelType == 5;
    }

    private final boolean isMyself() {
        return this.chatHelper.isMyself(getUserId());
    }

    private final boolean isHost() {
        return this.chatHelper.isHost(this.chatThread);
    }

    private final boolean isCoHost() {
        return this.chatHelper.isCoHost(this.chatThread);
    }

    private final boolean isSpeaker() {
        return this.chatHelper.isSpeaker(this.chatThread);
    }

    private final boolean isCurator() {
        User userProfile = getAccount().getUserProfile();
        if (userProfile != null) {
            return userProfile.isCurator();
        }
        return false;
    }

    private final boolean isPublicChat() {
        return ChatHelperKt.isPublicChat(this.chatThread);
    }

    private final boolean isGroupChat() {
        return ChatHelperKt.isGroupChat(this.chatThread);
    }

    private final boolean isSingleChat() {
        return ChatHelperKt.isSingleChat(this.chatThread);
    }

    private final boolean curUserIsHost() {
        ChatHelper chatHelper = this.chatHelper;
        ChatThread chatThread = this.chatThread;
        User user = this.user;
        return chatHelper.isHost(chatThread, user != null ? user.uid : null);
    }

    private final boolean curUserIsCoHost() {
        ChatHelper chatHelper = this.chatHelper;
        ChatThread chatThread = this.chatThread;
        User user = this.user;
        return chatHelper.isCoHost(chatThread, user != null ? user.uid : null);
    }

    private final boolean curUserIsHostOrCoHost() {
        ChatHelper chatHelper = this.chatHelper;
        ChatThread chatThread = this.chatThread;
        User user = this.user;
        return chatHelper.isHostOrCoHost(chatThread, user != null ? user.uid : null);
    }

    private final boolean curUserIsSpeaker() {
        return ChatHelperKt.isSpeaker(this.curChannelUser);
    }

    private final String getUserId() {
        User user;
        String str;
        ChannelUserWrapper channelUserWrapper = this.curChannelUser;
        if (channelUserWrapper != null && (user = ChatHelperKt.getUser(channelUserWrapper)) != null && (str = user.uid) != null) {
            return str;
        }
        User user2 = this.user;
        if (user2 != null) {
            return user2.uid;
        }
        return null;
    }

    private final boolean curUserIsVideoPlayer() {
        return ChatHelperKt.isVideoPlayer(this.curChannelUser) && isScreenRoom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isThreadFansOnly() {
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            return chatThread.isFansOnly();
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        NVContext nVContext = this.nvContext;
        if (!(nVContext instanceof NVFragment) || ((NVFragment) nVContext).isAdded()) {
            Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
            if (numValueOf != null && numValueOf.intValue() == R.id.leave_chat) {
                if (isMyself()) {
                    LogEvent.clickWildcardBuilder(this, "LeaveChat").send();
                    if ((isPublicChat() || isGroupChat()) && isHost()) {
                        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                        aCMAlertDialog.setTitle(R.string.trans_organizer_hint_dialog_title);
                        aCMAlertDialog.setMessage(R.string.trans_organizer_hint_dialog_message);
                        aCMAlertDialog.setVerticalButtons();
                        aCMAlertDialog.setDismissByClickOutside();
                        aCMAlertDialog.addButton(R.string.trans_organizer, new View.OnClickListener() { // from class: com.narvii.chat.dialog.VVChatUserDialog$onClick$$inlined$apply$lambda$1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (this.isThreadFansOnly()) {
                                    ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(aCMAlertDialog.getContext());
                                    aCMAlertDialog2.setMessage(R.string.not_allow_transfrom_fans_only_chat);
                                    aCMAlertDialog2.addButton(R.string.got_it, null);
                                    aCMAlertDialog2.show();
                                    return;
                                }
                                Intent intent = FragmentWrapperActivity.intent(ChatOrganizerPickerFragment.class);
                                intent.putExtra("thread", JacksonUtils.writeAsString(this.chatThread));
                                this.nvContext.startActivity(intent);
                            }
                        });
                        aCMAlertDialog.addButton(R.string.delete_the_chat, new View.OnClickListener() { // from class: com.narvii.chat.dialog.VVChatUserDialog$onClick$$inlined$apply$lambda$2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                this.this$0.showLeaveChatConfirmDialog();
                            }
                        }, SupportMenu.CATEGORY_MASK);
                        aCMAlertDialog.addButton(R.string.cancel, null);
                        aCMAlertDialog.show();
                    } else {
                        showLeaveChatConfirmDialog();
                    }
                } else {
                    LogEvent.clickWildcardBuilder(this, "RemoveFromChat").send();
                    removeFromChat();
                }
                dismiss();
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == R.id.speaker_action_container) {
                if (showQuitAsSpeaker()) {
                    LogEvent.clickWildcardBuilder(this, "QuitAsSpeaker").send();
                    quitAsSpeaker();
                } else if (showInviteAsSpeaker()) {
                    LogEvent.clickWildcardBuilder(this, "InviteAsSpeaker").send();
                    inviteAsSpeaker();
                } else if (showRemoveAsSpeaker()) {
                    LogEvent.clickWildcardBuilder(this, "RemoveAsSpeaker").send();
                    removeAsSpeaker();
                }
                dismiss();
            }
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Utils.handler.removeCallbacks(this.runnable);
        super.dismiss();
    }

    @Override // com.narvii.onlinestatus.UserDialog
    public void onFlagClicked(NVContext nvContext) {
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        if (this.curChannelUser != null) {
            ChannelFlagHelper channelFlagHelper = new ChannelFlagHelper(nvContext);
            int communityId = getConfig().getCommunityId();
            User user = this.user;
            int i = this.channelType;
            String str = this.threadId;
            ChannelUserWrapper channelUserWrapper = this.curChannelUser;
            channelFlagHelper.flagUserInChannel(communityId, user, i, str, channelUserWrapper != null ? channelUserWrapper.channelUid : 0, this.needVideoFrameWhenFlag, true, this.muteVideoWhenBlockUser);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void leaveChat() {
        sendLeaveRequest();
    }

    private final void quitAsSpeaker() {
        VVChatHelper.quitAsPresenter$default(this.vvchatHelper, this.channelType, this.chatThread, this.curChannelUser, null, 8, null);
    }

    private final void inviteAsSpeaker() {
        new ChatThreadUserOperationHelper(this, this.chatThread).inviteAsSpeaker(this.user.id(), new Callback<Boolean>() { // from class: com.narvii.chat.dialog.VVChatUserDialog.inviteAsSpeaker.1
            @Override // com.narvii.util.Callback
            public final void call(Boolean it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                if (it.booleanValue()) {
                    Utils.postDelayed(VVChatUserDialog.this.getRunnable(), 180000);
                }
            }
        });
    }

    private final void removeAsSpeaker() {
        showRemoveAsSpeakerConfirmDialog(new Callback<Object>() { // from class: com.narvii.chat.dialog.VVChatUserDialog.removeAsSpeaker.1
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                VVChatUserDialog.this.sendRemoveAsSpeakerRequest();
            }
        });
    }

    private final void sendLeaveRequest() {
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            sendLeaveChatRequest(chatThread, getAccount().getUserId());
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    private final void removeFromChat() {
        if (isPublicChat() || isGroupChat()) {
            showRemoveUserConfirmDialog(new Callback<Boolean>() { // from class: com.narvii.chat.dialog.VVChatUserDialog.removeFromChat.1
                @Override // com.narvii.util.Callback
                public final void call(Boolean it) {
                    VVChatUserDialog vVChatUserDialog = VVChatUserDialog.this;
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    vVChatUserDialog.sendRemoveUserRequest(it.booleanValue());
                }
            });
        } else {
            sendRemoveUserRequest(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showLeaveChatConfirmDialog() {
        int i;
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        if (isHost() && !isSingleChat()) {
            aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, (int) 4290493371L);
            aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.chat.dialog.VVChatUserDialog$showLeaveChatConfirmDialog$$inlined$apply$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.this$0.leaveChat();
                }
            }, SupportMenu.CATEGORY_MASK);
            i = R.string.delete_chat_hint;
        } else if (curUserIsVideoPlayer()) {
            aCMAlertDialog.addButton(R.string.no, (View.OnClickListener) null, (int) 4290493371L);
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.dialog.VVChatUserDialog$showLeaveChatConfirmDialog$$inlined$apply$lambda$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.this$0.leaveChat();
                }
            });
            i = R.string.leave_chat_stop_play_video_hint;
        } else {
            aCMAlertDialog.addButton(R.string.no, (View.OnClickListener) null, (int) 4290493371L);
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.dialog.VVChatUserDialog$showLeaveChatConfirmDialog$$inlined$apply$lambda$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.this$0.leaveChat();
                }
            }, SupportMenu.CATEGORY_MASK);
            i = R.string.leave_channel_note_info;
        }
        aCMAlertDialog.setMessage(i);
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRemoveUserRequest(boolean z) {
        new ChatThreadUserOperationHelper(this.nvContext, this.chatThread).sendDeleteUserRequest(this.user.uid(), ChatHelperKt.isPublicChat(this.chatThread), z, new Callback<Object>() { // from class: com.narvii.chat.dialog.VVChatUserDialog.sendRemoveUserRequest.1
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                UserDialog.UserDialogClickListener userDialogClickListener;
                if (!(obj instanceof Boolean)) {
                    obj = null;
                }
                if (!Intrinsics.areEqual(obj, (Object) true) || (userDialogClickListener = ((UserDialog) VVChatUserDialog.this).clickListener) == null) {
                    return;
                }
                userDialogClickListener.onClicked(7, null);
            }
        });
    }

    private final void showRemoveUserConfirmDialog(final Callback<Boolean> callback) {
        new ChatThreadUserOperationHelper(this.nvContext, this.chatThread).showRemoveFromChatConfirmDialog(curUserIsHost(), curUserIsVideoPlayer(), new Callback<Boolean>() { // from class: com.narvii.chat.dialog.VVChatUserDialog.showRemoveUserConfirmDialog.1
            @Override // com.narvii.util.Callback
            public final void call(Boolean bool) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(bool);
                }
            }
        });
    }

    private final void sendLeaveChatRequest(ChatThread chatThread, String str) {
        new ChatThreadUserOperationHelper(this.nvContext, this.chatThread).sendLeaveThreadRequest(chatThread, str, new Callback<Boolean>() { // from class: com.narvii.chat.dialog.VVChatUserDialog.sendLeaveChatRequest.1
            @Override // com.narvii.util.Callback
            public final void call(Boolean bool) {
                UserDialog.UserDialogClickListener userDialogClickListener;
                if (Intrinsics.areEqual((Object) bool, (Object) true) && (userDialogClickListener = ((UserDialog) VVChatUserDialog.this).clickListener) != null) {
                    userDialogClickListener.onClicked(7, null);
                }
                VVChatUserDialog.this.getRtc().stopPresenting();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRemoveAsSpeakerRequest() {
        ChannelUser channelUser;
        RtcService rtc = getRtc();
        ChannelUserWrapper channelUserWrapper = this.curChannelUser;
        rtc.removeAsSpeaker((channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) ? null : channelUser.uid());
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void showRemoveAsSpeakerConfirmDialog(final com.narvii.util.Callback<java.lang.Object> r7) {
        /*
            r6 = this;
            com.narvii.widget.ACMAlertDialog r0 = new com.narvii.widget.ACMAlertDialog
            android.content.Context r1 = r6.getContext()
            r0.<init>(r1)
            boolean r1 = r6.curUserIsVideoPlayer()
            r2 = 0
            r3 = 2131693242(0x7f0f0eba, float:1.9015607E38)
            if (r1 == 0) goto L14
            goto L42
        L14:
            boolean r1 = r6.isPublicChat()
            if (r1 == 0) goto L3f
            boolean r1 = r6.isHost()
            if (r1 != 0) goto L2c
            boolean r1 = r6.isCoHost()
            if (r1 != 0) goto L2c
            boolean r1 = r6.isCurator()
            if (r1 == 0) goto L3f
        L2c:
            com.narvii.chat.util.ChatHelper r1 = r6.chatHelper
            com.narvii.model.ChatThread r4 = r6.chatThread
            com.narvii.model.User r5 = r6.user
            if (r5 == 0) goto L37
            java.lang.String r5 = r5.uid
            goto L38
        L37:
            r5 = r2
        L38:
            boolean r1 = r1.isSpeakerHasOtherOriganizer(r4, r5)
            if (r1 != 0) goto L3f
            goto L42
        L3f:
            r3 = 2131693241(0x7f0f0eb9, float:1.9015605E38)
        L42:
            r0.setMessage(r3)
            r1 = 2131692585(0x7f0f0c29, float:1.9014274E38)
            r3 = 4290493371(0xffbbbbbb, double:2.1197853783E-314)
            int r4 = (int) r3
            r0.addButton(r1, r2, r4)
            r1 = 2131693983(0x7f0f119f, float:1.901711E38)
            com.narvii.chat.dialog.VVChatUserDialog$showRemoveAsSpeakerConfirmDialog$$inlined$apply$lambda$1 r2 = new com.narvii.chat.dialog.VVChatUserDialog$showRemoveAsSpeakerConfirmDialog$$inlined$apply$lambda$1
            r2.<init>()
            r0.addButton(r1, r2)
            r0.show()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.dialog.VVChatUserDialog.showRemoveAsSpeakerConfirmDialog(com.narvii.util.Callback):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void showQuitAsSpeakerConfirmDialog(final com.narvii.util.Callback<java.lang.Object> r7) {
        /*
            r6 = this;
            com.narvii.widget.ACMAlertDialog r0 = new com.narvii.widget.ACMAlertDialog
            android.content.Context r1 = r6.getContext()
            r0.<init>(r1)
            boolean r1 = r6.curUserIsVideoPlayer()
            r2 = 0
            r3 = 2131693155(0x7f0f0e63, float:1.901543E38)
            if (r1 == 0) goto L14
            goto L3c
        L14:
            boolean r1 = r6.isPublicChat()
            if (r1 == 0) goto L39
            boolean r1 = r6.isHost()
            if (r1 != 0) goto L26
            boolean r1 = r6.isCoHost()
            if (r1 == 0) goto L39
        L26:
            com.narvii.chat.util.ChatHelper r1 = r6.chatHelper
            com.narvii.model.ChatThread r4 = r6.chatThread
            com.narvii.model.User r5 = r6.user
            if (r5 == 0) goto L31
            java.lang.String r5 = r5.uid
            goto L32
        L31:
            r5 = r2
        L32:
            boolean r1 = r1.isSpeakerHasOtherOriganizer(r4, r5)
            if (r1 != 0) goto L39
            goto L3c
        L39:
            r3 = 2131693154(0x7f0f0e62, float:1.9015428E38)
        L3c:
            r0.setMessage(r3)
            r1 = 2131692585(0x7f0f0c29, float:1.9014274E38)
            r3 = 4290493371(0xffbbbbbb, double:2.1197853783E-314)
            int r4 = (int) r3
            r0.addButton(r1, r2, r4)
            r1 = 2131693983(0x7f0f119f, float:1.901711E38)
            com.narvii.chat.dialog.VVChatUserDialog$showQuitAsSpeakerConfirmDialog$$inlined$apply$lambda$1 r2 = new com.narvii.chat.dialog.VVChatUserDialog$showQuitAsSpeakerConfirmDialog$$inlined$apply$lambda$1
            r2.<init>()
            r0.addButton(r1, r2)
            r0.show()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.dialog.VVChatUserDialog.showQuitAsSpeakerConfirmDialog(com.narvii.util.Callback):void");
    }

    public final boolean isInvite(User user) {
        Intrinsics.checkParameterIsNotNull(user, "user");
        LiveChannelInviteHistoryHelper companion = LiveChannelInviteHistoryHelper.Companion.getInstance();
        ChatThread chatThread = this.chatThread;
        return companion.isInvitedAsSpeaker(chatThread != null ? chatThread.id() : null, user.uid());
    }

    private final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.dialog.VVChatUserDialog.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return VVChatUserDialog.this.findViewById(i);
            }
        });
    }

    /* compiled from: VVChatUserDialog.kt */
    public static final class Builder {
        private final VVChatUserDialog dialog;

        public final VVChatUserDialog getDialog() {
            return this.dialog;
        }

        public Builder(NVContext ctx, User user) {
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(user, "user");
            this.dialog = new VVChatUserDialog(ctx, user);
        }

        public Builder(NVContext ctx, ChannelUserWrapper channelUserWrapper) {
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.dialog = new VVChatUserDialog(ctx, channelUserWrapper);
        }

        public final Builder configUserDialog(String str, int i, ChatThread chatThread) {
            this.dialog.threadId = str;
            this.dialog.channelType = i;
            this.dialog.chatThread = chatThread;
            return this;
        }

        public final Builder muteVideoWhenBlockUser(boolean z) {
            this.dialog.muteVideoWhenBlockUser = z;
            return this;
        }

        public final Builder needVideoFrameWhenFlag(boolean z) {
            this.dialog.needVideoFrameWhenFlag = z;
            return this;
        }

        public final Builder curUserIsGuest(boolean z) {
            this.dialog.curUserIsGuest = z;
            return this;
        }

        public final Builder clickListener(VVProfileClickListener listener) {
            Intrinsics.checkParameterIsNotNull(listener, "listener");
            this.dialog.vvProfileClickListener = listener;
            return this;
        }

        public final VVChatUserDialog build() {
            this.dialog.updateViews();
            VVChatUserDialog vVChatUserDialog = this.dialog;
            vVChatUserDialog.setOnClickListener(vVChatUserDialog.getListener());
            return this.dialog;
        }
    }
}

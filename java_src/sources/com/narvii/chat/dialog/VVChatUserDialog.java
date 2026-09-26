package com.narvii.chat.dialog;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.core.internal.view.SupportMenu;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChannelFlagHelper;
import com.narvii.chat.ChatThreadUserOperationHelper;
import com.narvii.chat.organizer.ChatOrganizerPickerFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.chat.video.utils.LiveChannelInviteHistoryHelper;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.livelayer.LiveLayerService;
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
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.q;

/* JADX INFO: loaded from: classes.dex */
public final class VVChatUserDialog extends UserDialog implements View.OnClickListener {

    @NotNull
    private final w7.m account$delegate;
    private int channelType;

    @NotNull
    private final ChatHelper chatHelper;

    @Nullable
    private ChatThread chatThread;

    @NotNull
    private final w7.m config$delegate;

    @Nullable
    private ChannelUserWrapper curChannelUser;
    private boolean curUserIsGuest;

    @NotNull
    private final w7.m flagView$delegate;

    @NotNull
    private final w7.m leaveCurChat$delegate;

    @NotNull
    private final w7.m leaveCurChatContainer$delegate;

    @NotNull
    private final UserDialog.UserDialogClickListener listener;
    private boolean muteVideoWhenBlockUser;
    private boolean needVideoFrameWhenFlag;

    @NotNull
    private final NVContext nvContext;

    @NotNull
    private final w7.m onHoldContainer$delegate;

    @NotNull
    private final w7.m rtc$delegate;

    @NotNull
    private final Runnable runnable;

    @NotNull
    private final w7.m speakerActionView$delegate;

    @NotNull
    private final w7.m startChatView$delegate;

    @Nullable
    private String threadId;

    @Nullable
    private VVProfileClickListener vvProfileClickListener;

    @NotNull
    private final VVChatHelper vvchatHelper;

    public static final class Builder {

        @NotNull
        private final VVChatUserDialog dialog;

        public Builder(@NotNull NVContext ctx, @NotNull User user) {
            t.j(ctx, "ctx");
            t.j(user, "user");
            this.dialog = new VVChatUserDialog(ctx, user);
        }

        @NotNull
        public final VVChatUserDialog getDialog() {
            return this.dialog;
        }

        @NotNull
        public final VVChatUserDialog build() {
            this.dialog.updateViews();
            VVChatUserDialog vVChatUserDialog = this.dialog;
            vVChatUserDialog.setOnClickListener(vVChatUserDialog.getListener());
            return this.dialog;
        }

        @NotNull
        public final Builder clickListener(@NotNull VVProfileClickListener listener) {
            t.j(listener, "listener");
            this.dialog.vvProfileClickListener = listener;
            return this;
        }

        @NotNull
        public final Builder configUserDialog(@Nullable String str, int i10, @Nullable ChatThread chatThread) {
            this.dialog.threadId = str;
            this.dialog.channelType = i10;
            this.dialog.chatThread = chatThread;
            return this;
        }

        @NotNull
        public final Builder curUserIsGuest(boolean z6) {
            this.dialog.curUserIsGuest = z6;
            return this;
        }

        @NotNull
        public final Builder muteVideoWhenBlockUser(boolean z6) {
            this.dialog.muteVideoWhenBlockUser = z6;
            return this;
        }

        @NotNull
        public final Builder needVideoFrameWhenFlag(boolean z6) {
            this.dialog.needVideoFrameWhenFlag = z6;
            return this;
        }

        public Builder(@NotNull NVContext ctx, @Nullable ChannelUserWrapper channelUserWrapper) {
            t.j(ctx, "ctx");
            this.dialog = new VVChatUserDialog(ctx, channelUserWrapper);
        }
    }

    public interface VVProfileClickListener {
        void onStartChat(@NotNull User user);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.chat.dialog.VVChatUserDialog$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        public final View invoke() {
            return VVChatUserDialog.this.findViewById(this.$res);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VVChatUserDialog(@NotNull final NVContext nvContext, @Nullable final User user) {
        super(nvContext.getContext(), user);
        t.j(nvContext, "nvContext");
        this.nvContext = nvContext;
        this.muteVideoWhenBlockUser = true;
        this.needVideoFrameWhenFlag = true;
        Context context = getContext();
        t.i(context, "getContext(...)");
        this.chatHelper = new ChatHelper(context);
        this.vvchatHelper = new VVChatHelper(nvContext);
        this.account$delegate = w7.o.a(new VVChatUserDialog$account$2(this));
        this.rtc$delegate = w7.o.a(new VVChatUserDialog$rtc$2(this));
        this.config$delegate = w7.o.a(new VVChatUserDialog$config$2(this));
        this.leaveCurChatContainer$delegate = bind(R.id.leave_chat_container);
        this.leaveCurChat$delegate = bind(R.id.leave_chat);
        this.speakerActionView$delegate = bind(R.id.speaker_action_container);
        this.onHoldContainer$delegate = bind(R.id.on_hold_container);
        this.flagView$delegate = bind(R.id.flag);
        this.startChatView$delegate = bind(R.id.online_user_start_chat);
        this.runnable = new Runnable() { // from class: com.narvii.chat.dialog.j
            @Override // java.lang.Runnable
            public final void run() {
                VVChatUserDialog.runnable$lambda$0(this.f1903a);
            }
        };
        getLeaveCurChat().setOnClickListener(this);
        getSpeakerActionView().setOnClickListener(this);
        this.listener = new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.dialog.k
            @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
            public final void onClicked(int i10, NVObject nVObject) {
                VVChatUserDialog.listener$lambda$2(nvContext, user, this, i10, nVObject);
            }
        };
    }

    private final boolean isScreenRoom() {
        return this.channelType == 5;
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @NotNull
    public final UserDialog.UserDialogClickListener getListener() {
        return this.listener;
    }

    @NotNull
    public final Runnable getRunnable() {
        return this.runnable;
    }

    @Override // com.narvii.onlinestatus.UserDialog
    protected int layoutId() {
        return R.layout.vvchat_user_dialog;
    }

    private final <T extends View> w7.m<T> bind(@IdRes int i10) {
        return w7.o.b(q.NONE, new AnonymousClass1(i10));
    }

    private final boolean curUserIsCoHost() {
        ChatHelper chatHelper = this.chatHelper;
        ChatThread chatThread = this.chatThread;
        User user = this.user;
        return chatHelper.isCoHost(chatThread, user != null ? user.uid : null);
    }

    private final boolean curUserIsHost() {
        ChatHelper chatHelper = this.chatHelper;
        ChatThread chatThread = this.chatThread;
        User user = this.user;
        return chatHelper.isHost(chatThread, user != null ? user.uid : null);
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

    private final boolean curUserIsVideoPlayer() {
        return ChatHelperKt.isVideoPlayer(this.curChannelUser) && isScreenRoom();
    }

    private final View getFlagView() {
        return (View) this.flagView$delegate.getValue();
    }

    private final TextView getLeaveCurChat() {
        return (TextView) this.leaveCurChat$delegate.getValue();
    }

    private final View getLeaveCurChatContainer() {
        return (View) this.leaveCurChatContainer$delegate.getValue();
    }

    private final View getOnHoldContainer() {
        return (View) this.onHoldContainer$delegate.getValue();
    }

    private final TextView getSpeakerActionView() {
        return (TextView) this.speakerActionView$delegate.getValue();
    }

    private final View getStartChatView() {
        return (View) this.startChatView$delegate.getValue();
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

    private final void inviteAsSpeaker() {
        new ChatThreadUserOperationHelper(this, this.chatThread).inviteAsSpeaker(this.user.id(), new Callback() { // from class: com.narvii.chat.dialog.a
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                VVChatUserDialog.inviteAsSpeaker$lambda$8(this.f1891a, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void inviteAsSpeaker$lambda$8(VVChatUserDialog this$0, Boolean bool) {
        t.j(this$0, "this$0");
        t.g(bool);
        if (bool.booleanValue()) {
            Utils.postDelayed(this$0.runnable, LiveLayerService.REFRESH_INTERVAL);
        }
    }

    private final boolean isCoHost() {
        return this.chatHelper.isCoHost(this.chatThread);
    }

    private final boolean isGroupChat() {
        return ChatHelperKt.isGroupChat(this.chatThread);
    }

    private final boolean isHost() {
        return this.chatHelper.isHost(this.chatThread);
    }

    private final boolean isMyself() {
        return this.chatHelper.isMyself(getUserId());
    }

    private final boolean isPublicChat() {
        return ChatHelperKt.isPublicChat(this.chatThread);
    }

    private final boolean isSingleChat() {
        return ChatHelperKt.isSingleChat(this.chatThread);
    }

    private final boolean isSpeaker() {
        return this.chatHelper.isSpeaker(this.chatThread);
    }

    private final boolean isThreadFansOnly() {
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            return chatThread.isFansOnly();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void listener$lambda$2(NVContext nvContext, User user, VVChatUserDialog this$0, int i10, NVObject nVObject) {
        t.j(nvContext, "$nvContext");
        t.j(this$0, "this$0");
        if (!(nvContext instanceof NVFragment) || ((NVFragment) nvContext).isAdded()) {
            if (i10 == 1) {
                VVProfileClickListener vVProfileClickListener = this$0.vvProfileClickListener;
                if (vVProfileClickListener != null) {
                    User user2 = this$0.user;
                    t.i(user2, "user");
                    vVProfileClickListener.onStartChat(user2);
                    return;
                }
                return;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                this$0.onFlagClicked(nvContext);
            } else {
                Intent intent = UserProfileFragment.intent(nvContext, user);
                if (intent != null) {
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, this$0.source);
                }
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nvContext, intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClick$lambda$6$lambda$4(VVChatUserDialog this$0, ACMAlertDialog this_apply, View view) {
        t.j(this$0, "this$0");
        t.j(this_apply, "$this_apply");
        if (!this$0.isThreadFansOnly()) {
            Intent intent = FragmentWrapperActivity.intent(ChatOrganizerPickerFragment.class);
            intent.putExtra("thread", JacksonUtils.writeAsString(this$0.chatThread));
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this$0.nvContext, intent);
        } else {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this_apply.getContext());
            aCMAlertDialog.setMessage(R.string.not_allow_transfrom_fans_only_chat);
            aCMAlertDialog.addButton(R.string.got_it, null);
            aCMAlertDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClick$lambda$6$lambda$5(VVChatUserDialog this$0, View view) {
        t.j(this$0, "this$0");
        this$0.showLeaveChatConfirmDialog();
    }

    private final void quitAsSpeaker() {
        VVChatHelper.quitAsPresenter$default(this.vvchatHelper, this.channelType, this.chatThread, this.curChannelUser, null, 8, null);
    }

    private final void removeAsSpeaker() {
        showRemoveAsSpeakerConfirmDialog(new Callback() { // from class: com.narvii.chat.dialog.o
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                VVChatUserDialog.removeAsSpeaker$lambda$9(this.f1910a, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeAsSpeaker$lambda$9(VVChatUserDialog this$0, Object obj) {
        t.j(this$0, "this$0");
        this$0.sendRemoveAsSpeakerRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeFromChat$lambda$10(VVChatUserDialog this$0, Boolean bool) {
        t.j(this$0, "this$0");
        t.g(bool);
        this$0.sendRemoveUserRequest(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runnable$lambda$0(VVChatUserDialog this$0) {
        t.j(this$0, "this$0");
        this$0.updateViews();
    }

    private final void sendLeaveChatRequest(ChatThread chatThread, String str) {
        new ChatThreadUserOperationHelper(this.nvContext, this.chatThread).sendLeaveThreadRequest(chatThread, str, new Callback() { // from class: com.narvii.chat.dialog.b
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                VVChatUserDialog.sendLeaveChatRequest$lambda$17(this.f1892a, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendLeaveChatRequest$lambda$17(VVChatUserDialog this$0, Boolean bool) {
        UserDialog.UserDialogClickListener userDialogClickListener;
        t.j(this$0, "this$0");
        if (t.e(bool, Boolean.TRUE) && (userDialogClickListener = this$0.clickListener) != null) {
            userDialogClickListener.onClicked(7, null);
        }
        this$0.getRtc().stopPresenting();
    }

    private final void sendLeaveRequest() {
        ChatThread chatThread = this.chatThread;
        t.g(chatThread);
        sendLeaveChatRequest(chatThread, getAccount().getUserId());
    }

    private final void sendRemoveUserRequest(boolean z6) {
        new ChatThreadUserOperationHelper(this.nvContext, this.chatThread).sendDeleteUserRequest(this.user.uid(), ChatHelperKt.isPublicChat(this.chatThread), z6, new Callback() { // from class: com.narvii.chat.dialog.h
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                VVChatUserDialog.sendRemoveUserRequest$lambda$15(this.f1900a, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendRemoveUserRequest$lambda$15(VVChatUserDialog this$0, Object obj) {
        UserDialog.UserDialogClickListener userDialogClickListener;
        t.j(this$0, "this$0");
        if (!t.e(obj instanceof Boolean ? (Boolean) obj : null, Boolean.TRUE) || (userDialogClickListener = this$0.clickListener) == null) {
            return;
        }
        userDialogClickListener.onClicked(7, null);
    }

    private final boolean showLeave() {
        return !this.curUserIsGuest && ((isMyself() && !this.chatHelper.isGuest(this.chatThread)) || (isOpenChat() && hasAccessRemove()));
    }

    private final void showLeaveChatConfirmDialog() {
        int i10;
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        if (isHost() && !isSingleChat()) {
            aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -4473925);
            aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.chat.dialog.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VVChatUserDialog.showLeaveChatConfirmDialog$lambda$14$lambda$11(this.f1907a, view);
                }
            }, SupportMenu.CATEGORY_MASK);
            i10 = R.string.delete_chat_hint;
        } else if (curUserIsVideoPlayer()) {
            aCMAlertDialog.addButton(R.string.no, (View.OnClickListener) null, -4473925);
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.dialog.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VVChatUserDialog.showLeaveChatConfirmDialog$lambda$14$lambda$12(this.f1908a, view);
                }
            });
            i10 = R.string.leave_chat_stop_play_video_hint;
        } else {
            aCMAlertDialog.addButton(R.string.no, (View.OnClickListener) null, -4473925);
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.dialog.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VVChatUserDialog.showLeaveChatConfirmDialog$lambda$14$lambda$13(this.f1909a, view);
                }
            }, SupportMenu.CATEGORY_MASK);
            i10 = R.string.leave_channel_note_info;
        }
        aCMAlertDialog.setMessage(i10);
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLeaveChatConfirmDialog$lambda$14$lambda$11(VVChatUserDialog this$0, View view) {
        t.j(this$0, "this$0");
        this$0.leaveChat();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLeaveChatConfirmDialog$lambda$14$lambda$12(VVChatUserDialog this$0, View view) {
        t.j(this$0, "this$0");
        this$0.leaveChat();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLeaveChatConfirmDialog$lambda$14$lambda$13(VVChatUserDialog this$0, View view) {
        t.j(this$0, "this$0");
        this$0.leaveChat();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0039  */
    private final void showQuitAsSpeakerConfirmDialog(final Callback<Object> callback) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        boolean zCurUserIsVideoPlayer = curUserIsVideoPlayer();
        int i10 = R.string.quit_as_speaker_stop_play_video_hint;
        if (!zCurUserIsVideoPlayer) {
            if (isPublicChat() && (isHost() || isCoHost())) {
                ChatHelper chatHelper = this.chatHelper;
                ChatThread chatThread = this.chatThread;
                User user = this.user;
                if (chatHelper.isSpeakerHasOtherOriganizer(chatThread, user != null ? user.uid : null)) {
                    i10 = R.string.quit_as_speaker_hint;
                }
            } else {
                i10 = R.string.quit_as_speaker_hint;
            }
        }
        aCMAlertDialog.setMessage(i10);
        aCMAlertDialog.addButton(R.string.no, (View.OnClickListener) null, -4473925);
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.dialog.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatUserDialog.showQuitAsSpeakerConfirmDialog$lambda$21$lambda$20(aCMAlertDialog, callback, view);
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showQuitAsSpeakerConfirmDialog$lambda$21$lambda$20(ACMAlertDialog this_apply, Callback callback, View view) {
        t.j(this_apply, "$this_apply");
        this_apply.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003f  */
    private final void showRemoveAsSpeakerConfirmDialog(final Callback<Object> callback) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        boolean zCurUserIsVideoPlayer = curUserIsVideoPlayer();
        int i10 = R.string.remove_as_speaker_stop_play_video_hint;
        if (!zCurUserIsVideoPlayer) {
            if (isPublicChat() && (isHost() || isCoHost() || isCurator())) {
                ChatHelper chatHelper = this.chatHelper;
                ChatThread chatThread = this.chatThread;
                User user = this.user;
                if (chatHelper.isSpeakerHasOtherOriganizer(chatThread, user != null ? user.uid : null)) {
                    i10 = R.string.remove_as_speaker_hint;
                }
            } else {
                i10 = R.string.remove_as_speaker_hint;
            }
        }
        aCMAlertDialog.setMessage(i10);
        aCMAlertDialog.addButton(R.string.no, (View.OnClickListener) null, -4473925);
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.dialog.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVChatUserDialog.showRemoveAsSpeakerConfirmDialog$lambda$19$lambda$18(aCMAlertDialog, callback, view);
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRemoveAsSpeakerConfirmDialog$lambda$19$lambda$18(ACMAlertDialog this_apply, Callback callback, View view) {
        t.j(this_apply, "$this_apply");
        this_apply.dismiss();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    private final void showRemoveUserConfirmDialog(final Callback<Boolean> callback) {
        new ChatThreadUserOperationHelper(this.nvContext, this.chatThread).showRemoveFromChatConfirmDialog(curUserIsHost(), curUserIsVideoPlayer(), new Callback() { // from class: com.narvii.chat.dialog.f
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                VVChatUserDialog.showRemoveUserConfirmDialog$lambda$16(callback, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRemoveUserConfirmDialog$lambda$16(Callback callback, Boolean bool) {
        if (callback != null) {
            callback.call(bool);
        }
    }

    private final boolean showSpeakerView() {
        return this.curChannelUser != null && (showQuitAsSpeaker() || showInviteAsSpeaker() || showRemoveAsSpeaker());
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Utils.handler.removeCallbacks(this.runnable);
        super.dismiss();
    }

    @NotNull
    public final AccountService getAccount() {
        Object value = this.account$delegate.getValue();
        t.i(value, "getValue(...)");
        return (AccountService) value;
    }

    @NotNull
    public final ConfigService getConfig() {
        Object value = this.config$delegate.getValue();
        t.i(value, "getValue(...)");
        return (ConfigService) value;
    }

    @NotNull
    public final RtcService getRtc() {
        Object value = this.rtc$delegate.getValue();
        t.i(value, "getValue(...)");
        return (RtcService) value;
    }

    public final boolean isInvite(@NotNull User user) {
        t.j(user, "user");
        LiveChannelInviteHistoryHelper companion = LiveChannelInviteHistoryHelper.Companion.getInstance();
        ChatThread chatThread = this.chatThread;
        return companion.isInvitedAsSpeaker(chatThread != null ? chatThread.id() : null, user.uid());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        NVContext nVContext = this.nvContext;
        if (!(nVContext instanceof NVFragment) || ((NVFragment) nVContext).isAdded()) {
            Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
            if (numValueOf == null || numValueOf.intValue() != R.id.leave_chat) {
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
                    return;
                }
                return;
            }
            if (isMyself()) {
                LogEvent.clickWildcardBuilder(this, "LeaveChat").send();
                if ((isPublicChat() || isGroupChat()) && isHost()) {
                    final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                    aCMAlertDialog.setTitle(R.string.trans_organizer_hint_dialog_title);
                    aCMAlertDialog.setMessage(R.string.trans_organizer_hint_dialog_message);
                    aCMAlertDialog.setVerticalButtons();
                    aCMAlertDialog.setDismissByClickOutside();
                    aCMAlertDialog.addButton(R.string.trans_organizer, new View.OnClickListener() { // from class: com.narvii.chat.dialog.c
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            VVChatUserDialog.onClick$lambda$6$lambda$4(this.f1893a, aCMAlertDialog, view2);
                        }
                    });
                    aCMAlertDialog.addButton(R.string.delete_the_chat, new View.OnClickListener() { // from class: com.narvii.chat.dialog.d
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            VVChatUserDialog.onClick$lambda$6$lambda$5(this.f1895a, view2);
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
        }
    }

    @Override // com.narvii.onlinestatus.UserDialog
    public void onFlagClicked(@NotNull NVContext nvContext) {
        t.j(nvContext, "nvContext");
        if (this.curChannelUser != null) {
            ChannelFlagHelper channelFlagHelper = new ChannelFlagHelper(nvContext);
            int communityId = getConfig().getCommunityId();
            User user = this.user;
            int i10 = this.channelType;
            String str = this.threadId;
            ChannelUserWrapper channelUserWrapper = this.curChannelUser;
            channelFlagHelper.flagUserInChannel(communityId, user, i10, str, channelUserWrapper != null ? channelUserWrapper.channelUid : 0, this.needVideoFrameWhenFlag, true, this.muteVideoWhenBlockUser);
        }
    }

    @Override // com.narvii.onlinestatus.UserDialog, com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        if (this.chatThread == null) {
            return;
        }
        super.show();
    }

    private final boolean hasAccessRemove() {
        if (!isHost() && ((!isCoHost() || curUserIsHostOrCoHost()) && (!isCurator() || curUserIsHost()))) {
            return false;
        }
        return true;
    }

    private final boolean hostVisible() {
        if (!isHost() && (!isCoHost() || curUserIsHost())) {
            return false;
        }
        return true;
    }

    private final boolean isCurator() {
        User userProfile = getAccount().getUserProfile();
        if (userProfile != null) {
            return userProfile.isCurator();
        }
        return false;
    }

    private final boolean isOpenChat() {
        if (!isPublicChat() && !isGroupChat()) {
            return false;
        }
        return true;
    }

    private final void leaveChat() {
        sendLeaveRequest();
    }

    private final void removeFromChat() {
        if (!isPublicChat() && !isGroupChat()) {
            sendRemoveUserRequest(false);
        } else {
            showRemoveUserConfirmDialog(new Callback() { // from class: com.narvii.chat.dialog.g
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    VVChatUserDialog.removeFromChat$lambda$10(this.f1899a, (Boolean) obj);
                }
            });
        }
    }

    private final void sendRemoveAsSpeakerRequest() {
        String strUid;
        ChannelUser channelUser;
        RtcService rtc = getRtc();
        ChannelUserWrapper channelUserWrapper = this.curChannelUser;
        if (channelUserWrapper != null && (channelUser = channelUserWrapper.channelUser) != null) {
            strUid = channelUser.uid();
        } else {
            strUid = null;
        }
        rtc.removeAsSpeaker(strUid);
    }

    private final boolean showInviteAsSpeaker() {
        if ((isHost() || isCoHost()) && !isMyself() && !curUserIsSpeaker()) {
            return true;
        }
        return false;
    }

    private final boolean showOnHold() {
        if (hostVisible() && !isMyself()) {
            return true;
        }
        return false;
    }

    private final boolean showQuitAsSpeaker() {
        if (isMyself() && isSpeaker()) {
            return true;
        }
        return false;
    }

    private final boolean showRemoveAsSpeaker() {
        if (!isMyself() && !isSingleChat() && curUserIsSpeaker() && (hostVisible() || isCurator())) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.onlinestatus.UserDialog
    protected void updateViews() {
        String str;
        boolean z6;
        super.updateViews();
        if (isScreenRoom()) {
            str = "Screening Room";
        } else {
            str = "VV Chat";
        }
        this.source = str;
        ViewUtils.visible(getOnHoldContainer(), showOnHold(), true);
        ViewUtils.visible(getFlagView(), !isMyself());
        View startChatView = getStartChatView();
        if (!isMyself() && !ChatHelperKt.isSingleChat(this.chatThread)) {
            z6 = true;
        } else {
            z6 = false;
        }
        ViewUtils.visible(startChatView, z6, true);
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
            t.i(user, "user");
            if (isInvite(user)) {
                getSpeakerActionView().setText(R.string.invited);
                getSpeakerActionView().setTextColor(-11908534);
                getSpeakerActionView().setBackgroundResource(R.drawable.selector_text_bg_d4d4d4);
                getSpeakerActionView().setEnabled(false);
                return;
            }
            getSpeakerActionView().setText(R.string.invite_as_speaker);
            getSpeakerActionView().setTextColor(-1);
            getSpeakerActionView().setBackgroundResource(R.drawable.selector_text_bg_5ed700);
            getSpeakerActionView().setEnabled(true);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VVChatUserDialog(@NotNull NVContext nvContext, @Nullable ChannelUserWrapper channelUserWrapper) {
        this(nvContext, channelUserWrapper != null ? ChatHelperKt.getUser(channelUserWrapper) : null);
        t.j(nvContext, "nvContext");
        this.curChannelUser = channelUserWrapper;
    }
}

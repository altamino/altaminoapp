package com.narvii.chat.video.fragments;

import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.call.CallStatusChangeListener;
import com.narvii.chat.dialog.VVChatUserDialog;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.input.ChatThreadCheckFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.screenroom.widgets.SRLiveUserLayout;
import com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView;
import com.narvii.chat.setting.helper.ChatWaitingListService;
import com.narvii.chat.setting.helper.ChatWaitingListServiceKt;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.PresenterItemClickListener;
import com.narvii.chat.video.layout.LiveCallingLayout;
import com.narvii.chat.video.overlay.ChannelInviteMemberListFragment;
import com.narvii.chat.video.utils.VVChatInviteHelper;
import com.narvii.chat.video.view.VoiceCallHelper;
import com.narvii.config.ConfigService;
import com.narvii.logging.LogEvent;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.AlertDialog;
import com.safedk.android.utils.Logger;
import java.util.Collection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class LiveCallFragment extends LiveChannelFragment implements CallStatusChangeListener, LiveCallingLayout.EnterConversationAnimationListener, LiveCallingLayout.CallCancelClickListener, PresenterItemClickListener, ChatThreadCheckFragment.LiveChatCheckData {
    private View callCompetitorView;
    private VoiceCallHelper callHelper;
    protected CallScreenService callScreenService;
    protected LiveCallingLayout callingLayout;
    protected ChatHelper chatHelper;
    private SRLiveUserLayout liveUserLayout;
    private AlertDialog retryPrivateCallDialog;
    private VVChatInviteHelper vvChatInviteHelper;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected SRLiveUserLayout getLiveUserLayout() {
        return this.liveUserLayout;
    }

    @Override // com.narvii.chat.video.layout.LiveCallingLayout.CallCancelClickListener
    public void onCancelClicked() {
        onCancelPrivateCall(true);
    }

    protected void onCancelPrivateCall(boolean z6) {
        leaveCurrentChannel(null, false);
        if (z6) {
            this.vvChatHelper.sendCallCancelMessage(this.rtcService.getMainSigChannel(), this.rtcService.isPrivateMainChannelFullBefore());
        }
        delayCloseLiveChannelRoom();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0039  */
    @Override // com.narvii.chat.video.PresenterItemClickListener
    public void onPresenterItemClicked(View view, ChannelUserWrapper channelUserWrapper, boolean z6, int i10) {
        String str;
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        ChatThread thread = getThread();
        if (mainSigChannel != null && thread != null) {
            String userId = ((AccountService) getService("account")).getUserId();
            if (userId == null) {
                str = SearchPrefsHelper.PREFS_KEY_OTHERS;
            } else if (Utils.isEquals(thread.uid, userId)) {
                str = "host";
            } else if (thread.isCoHost(userId)) {
                str = "co-host";
            } else if (thread.joined()) {
                str = "member";
            } else {
                str = SearchPrefsHelper.PREFS_KEY_OTHERS;
            }
            LogEvent.clickWildcardBuilder(this, "SpeakerArea").extraParam("joinRole", Integer.valueOf(mainSigChannel.joinRole)).extraParam("chatRole", str).send();
        }
        if (checkCommunityAvailability(channelUserWrapper, z6)) {
            if (i10 == 1) {
                this.rtcService.toggleLocalVideo();
            } else if (i10 == 2) {
                this.rtcService.flipCamera();
            } else {
                onPresenterItemClicked(channelUserWrapper, z6);
            }
        }
    }

    private boolean checkCommunityAvailability(final ChannelUserWrapper channelUserWrapper, final boolean z6) {
        return true ^ new GlobalChatHelper(this).tryJoinCommunity(((ConfigService) getService("config")).getCommunityId(), true, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.video.fragments.LiveCallFragment.4
            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i10) {
                return false;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            @Nullable
            public ChatThread followingChatToJoin() {
                return LiveCallFragment.this.getThread();
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return LiveCallFragment.this.channelType;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                LiveCallFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i10, boolean z10) {
                if (z10) {
                    LiveCallFragment.this.onPresenterItemClicked(channelUserWrapper, z6);
                }
            }
        });
    }

    private void delayCloseLiveChannelRoom() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.video.fragments.LiveCallFragment.3
            @Override // java.lang.Runnable
            public void run() {
                if (LiveCallFragment.this.isFinishing()) {
                    return;
                }
                LiveCallFragment.this.closeCurrentLiveChannelRoom();
            }
        }, 1500L);
    }

    private void dismissRetryPrivateCallDialog() {
        AlertDialog alertDialog = this.retryPrivateCallDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.retryPrivateCallDialog.dismiss();
    }

    private boolean isChannelFull(SignallingChannel signallingChannel) {
        return (signallingChannel != null && ((float) this.callHelper.getPresenterCount(signallingChannel.userList)) == 2.0f) || this.rtcService.isPrivateMainChannelFullBefore();
    }

    private void openWaitingList() {
        ((ChatWaitingListService) getService("chatWaitingList")).show(getThread());
    }

    private void showRetryPrivateCallDialog() {
        AlertDialog alertDialog = this.retryPrivateCallDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            this.retryPrivateCallDialog = this.vvChatHelper.showPrivateCallRetryDialog(new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.LiveCallFragment.2
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool != null) {
                        if (bool.booleanValue()) {
                            LiveCallFragment.this.joinLiveChannel();
                        } else {
                            LiveCallFragment.this.onCancelPrivateCall(false);
                        }
                    }
                }
            });
        }
    }

    private void updateLayout() {
        updateCallLayout(this.chatHelper.getPrivateChatTargetUer(getThread()), this.rtcService.isPrivateMainChannelFullBefore() ? 2 : this.callScreenService.getCurStatus(), isCreator());
    }

    private void updateLiveUserLayout() {
        SRLiveUserLayout sRLiveUserLayout = this.liveUserLayout;
        ChatThread chatThread = this.chatThread;
        ViewUtils.show(sRLiveUserLayout, (chatThread == null || chatThread.singleChat()) ? false : true);
    }

    protected void changeCallCompetitorViewVisibility(boolean z6) {
        if (this.callCompetitorView == null || SignallingChannel.isVideoType(this.channelType)) {
            return;
        }
        this.callCompetitorView.setVisibility(z6 ? 0 : 8);
    }

    @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
    public SignallingChannel getSignallingChannel() {
        return this.rtcService.getMappedSignallingChannel(getThreadId());
    }

    @Override // com.narvii.chat.video.layout.LiveCallingLayout.EnterConversationAnimationListener
    public void onAnimationFinished() {
        this.callingLayout.setVisibility(8);
        changeCallCompetitorViewVisibility(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPresenterItemClicked$1(Boolean bool) {
        openWaitingList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        openParticipants();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        VVChatInviteHelper vVChatInviteHelper = this.vvChatInviteHelper;
        if (vVChatInviteHelper != null) {
            vVChatInviteHelper.handleAddMemberOnActivityResult(i10, i11, intent);
        }
    }

    @Override // com.narvii.chat.call.CallStatusChangeListener
    public void onCallStatusChanged(int i10) {
        if (!isFinishing() && isAdded()) {
            boolean zIsChannelFull = isChannelFull(this.rtcService.getMainSigChannel());
            this.callingLayout.updateStatus(i10);
            if (!zIsChannelFull && i10 != 2) {
                if (i10 == 8) {
                    this.vvChatHelper.sendCallNoAnswerMessage(this.rtcService.getMainSigChannel());
                    leaveCurrentChannel(null, false);
                    showRetryPrivateCallDialog();
                    return;
                } else if (i10 == 7) {
                    this.callingLayout.disableCancelButton();
                    leaveCurrentChannel(null, false);
                    delayCloseLiveChannelRoom();
                    return;
                } else {
                    if (i10 == 10 || i10 == 3) {
                        leaveCurrentChannel(null, false);
                        delayCloseLiveChannelRoom();
                        return;
                    }
                    return;
                }
            }
            updateCallLayout(this.chatHelper.getPrivateChatTargetUer(getThread()), i10, isCreator());
            dismissRetryPrivateCallDialog();
            this.callingLayout.updateStatus(2);
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(@NotNull SignallingChannel signallingChannel, int i10) {
        super.onChannelForceQuit(signallingChannel, i10);
        if (isPrivateCall()) {
            this.callScreenService.updateStatus(6);
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelStatusChanged(@NotNull SignallingChannel signallingChannel) {
        super.onChannelStatusChanged(signallingChannel);
        if (isPrivateCall()) {
            this.callScreenService.configCallScreenService(getIntParam("__communityId"), getThreadId());
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Collection<? extends ChannelUser> collection, @NotNull Collection<? extends ChannelUser> collection2, @Nullable SparseArray<ChannelUserWrapper> sparseArray) {
        super.onChannelUserListChanged(signallingChannel, collection, collection2, sparseArray);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CallScreenService callScreenService = (CallScreenService) getService("callScreen");
        this.callScreenService = callScreenService;
        callScreenService.addCallScreenStatusChangeListener(getThreadId(), this);
        this.callHelper = new VoiceCallHelper(getContext());
        this.chatHelper = new ChatHelper(getContext());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.callScreenService.removeCallScreenStatusChangeListener(getThreadId(), this);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.MyChannelUserStatusChangeListener
    public void onMyChannelUserStatusChanged(int i10, @NotNull SignallingChannel signallingChannel, @Nullable ChannelUser channelUser) {
        super.onMyChannelUserStatusChanged(i10, signallingChannel, channelUser);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        updateLayout();
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected void onThreadChanged(ChatThread chatThread) {
        super.onThreadChanged(chatThread);
        updateLiveUserLayout();
        updateLayout();
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @androidx.annotation.Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        LiveCallingLayout liveCallingLayout = (LiveCallingLayout) view.findViewById(R.id.call_layout);
        this.callingLayout = liveCallingLayout;
        liveCallingLayout.setCallCancelClickListener(this);
        SRLiveUserLayout sRLiveUserLayout = (SRLiveUserLayout) view.findViewById(R.id.live_user_container);
        this.liveUserLayout = sRLiveUserLayout;
        sRLiveUserLayout.setLandscape(false);
        this.callingLayout.setEnterConversationAnimationListener(this);
        ViewGroup viewGroup = (ViewGroup) this.callingLayout.getParent();
        if (viewGroup != null) {
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt != null && Utils.isEqualsNotNull(childAt.getTag(), "callCompetitor")) {
                    this.callCompetitorView = childAt;
                    break;
                }
            }
        }
        this.liveUserLayout.setItemClickListener(new SRLiveUserRecyclerView.ParticipantItemClickListener() { // from class: com.narvii.chat.video.fragments.LiveCallFragment.1
            @Override // com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView.ParticipantItemClickListener
            public void onInviteButtonClicked() {
                LiveCallFragment liveCallFragment = LiveCallFragment.this;
                liveCallFragment.vvChatInviteHelper = new VVChatInviteHelper(liveCallFragment, liveCallFragment.chatThread, liveCallFragment.channelType);
                LiveCallFragment.this.vvChatInviteHelper.onInviteButtonClicked();
            }

            @Override // com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView.ParticipantItemClickListener
            public void onParticipantItemClicked(ChannelUserWrapper channelUserWrapper) {
                LiveCallFragment.this.onPresenterItemClicked(channelUserWrapper, false);
            }
        });
        this.liveUserLayout.setOnUserCountClickListener(new SRLiveUserLayout.OnUserCountClickListener() { // from class: com.narvii.chat.video.fragments.a
            @Override // com.narvii.chat.screenroom.widgets.SRLiveUserLayout.OnUserCountClickListener
            public final void onClick(View view2) {
                this.f2123a.lambda$onViewCreated$0(view2);
            }
        });
        this.liveUserLayout.setChatThread(this.chatThread);
        updateLiveUserLayout();
    }

    protected void updateCallLayout(User user, int i10, boolean z6) {
        if (!isPrivateCall()) {
            this.callingLayout.setVisibility(8);
            changeCallCompetitorViewVisibility(true);
            return;
        }
        if (isCreator()) {
            this.callingLayout.updateViews(user, i10);
            if (i10 == 2) {
                if (z6 && this.callingLayout.getVisibility() == 0) {
                    this.callingLayout.enterConversation();
                } else {
                    this.callingLayout.setVisibility(8);
                    changeCallCompetitorViewVisibility(true);
                }
            } else {
                this.callingLayout.setVisibility(0);
                changeCallCompetitorViewVisibility(false);
            }
        } else {
            this.callingLayout.setVisibility(8);
            changeCallCompetitorViewVisibility(true);
        }
        if (i10 == 8 && getBooleanParam(VVChatMainFragment.KEY_IS_RELAUNCH)) {
            showRetryPrivateCallDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPresenterItemClicked(ChannelUserWrapper channelUserWrapper, boolean z6) {
        if (channelUserWrapper != null) {
            VVChatUserDialog.Builder builder = new VVChatUserDialog.Builder(this, channelUserWrapper);
            builder.configUserDialog(getThreadId(), this.channelType, getThread());
            builder.clickListener(this.VVProfileClickListener).needVideoFrameWhenFlag(false);
            builder.build().show();
            return;
        }
        if (!z6) {
            SignallingChannel signallingChannel = getSignallingChannel();
            ChatThreadCheckFragment chatThreadCheckFragment = ChatThreadCheckFragment.getInstance(this, this, null);
            if (chatThreadCheckFragment == null || signallingChannel == null) {
                return;
            }
            if (ChatWaitingListServiceKt.isCurrentUserInWaitingList(this, signallingChannel.userWaitList)) {
                if (chatThreadCheckFragment.checkCommunityAvailability(signallingChannel.channelType, new Callback() { // from class: com.narvii.chat.video.fragments.b
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f2124a.lambda$onPresenterItemClicked$1((Boolean) obj);
                    }
                })) {
                    openWaitingList();
                    return;
                }
                return;
            }
            chatThreadCheckFragment.requestToJoinOrSpeak(signallingChannel);
            return;
        }
        if (this.chatHelper.isHostOrCoHost(getThread()) || !(getThread() == null || getThread().type == 2)) {
            Intent intent = FragmentWrapperActivity.intent(ChannelInviteMemberListFragment.class);
            intent.putExtra("channel_type", getIntParam("channel_type"));
            intent.putExtra("thread", JacksonUtils.writeAsString(getThread()));
            intent.putExtra("id", getThreadId());
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
    }
}

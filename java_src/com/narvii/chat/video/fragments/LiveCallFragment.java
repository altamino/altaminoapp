package com.narvii.chat.video.fragments;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
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
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.AlertDialog;
import java.util.Collection;

/* loaded from: classes2.dex */
public abstract class LiveCallFragment extends LiveChannelFragment implements CallStatusChangeListener, LiveCallingLayout.EnterConversationAnimationListener, LiveCallingLayout.CallCancelClickListener, PresenterItemClickListener, ChatThreadCheckFragment.LiveChatCheckData {
    private View callCompetitorView;
    private VoiceCallHelper callHelper;
    protected CallScreenService callScreenService;
    protected LiveCallingLayout callingLayout;
    protected ChatHelper chatHelper;
    private SRLiveUserLayout liveUserLayout;
    private AlertDialog retryPrivateCallDialog;
    private VVChatInviteHelper vvChatInviteHelper;

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.callScreenService = (CallScreenService) getService("callScreen");
        this.callScreenService.addCallScreenStatusChangeListener(getThreadId(), this);
        this.callHelper = new VoiceCallHelper(getContext());
        this.chatHelper = new ChatHelper(getContext());
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.callScreenService.removeCallScreenStatusChangeListener(getThreadId(), this);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.callingLayout = (LiveCallingLayout) view.findViewById(R.id.call_layout);
        this.callingLayout.setCallCancelClickListener(this);
        this.liveUserLayout = (SRLiveUserLayout) view.findViewById(R.id.live_user_container);
        int i = 0;
        this.liveUserLayout.setLandscape(false);
        this.callingLayout.setEnterConversationAnimationListener(this);
        ViewGroup viewGroup = (ViewGroup) this.callingLayout.getParent();
        if (viewGroup != null) {
            while (true) {
                if (i < viewGroup.getChildCount()) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt != null && Utils.isEqualsNotNull(childAt.getTag(), "callCompetitor")) {
                        this.callCompetitorView = childAt;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
        }
        this.liveUserLayout.setItemClickListener(new SRLiveUserRecyclerView.ParticipantItemClickListener() { // from class: com.narvii.chat.video.fragments.LiveCallFragment.1
            @Override // com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView.ParticipantItemClickListener
            public void onParticipantItemClicked(ChannelUserWrapper channelUserWrapper) {
                LiveCallFragment.this.onPresenterItemClicked(channelUserWrapper, false);
            }

            @Override // com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView.ParticipantItemClickListener
            public void onInviteButtonClicked() {
                LiveCallFragment liveCallFragment = LiveCallFragment.this;
                liveCallFragment.vvChatInviteHelper = new VVChatInviteHelper(liveCallFragment, liveCallFragment.chatThread, liveCallFragment.channelType);
                LiveCallFragment.this.vvChatInviteHelper.onInviteButtonClicked();
            }
        });
        this.liveUserLayout.setOnUserCountClickListener(new SRLiveUserLayout.OnUserCountClickListener() { // from class: com.narvii.chat.video.fragments.-$$Lambda$LiveCallFragment$zret9aoYIkoQW_i8kCfDd-ZAMIQ
            @Override // com.narvii.chat.screenroom.widgets.SRLiveUserLayout.OnUserCountClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$0$LiveCallFragment(view2);
            }
        });
        this.liveUserLayout.setChatThread(this.chatThread);
        updateLiveUserLayout();
    }

    public /* synthetic */ void lambda$onViewCreated$0$LiveCallFragment(View view) {
        openParticipants();
    }

    private void updateLiveUserLayout() {
        SRLiveUserLayout sRLiveUserLayout = this.liveUserLayout;
        ChatThread chatThread = this.chatThread;
        ViewUtils.show(sRLiveUserLayout, (chatThread == null || chatThread.singleChat()) ? false : true);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected SRLiveUserLayout getLiveUserLayout() {
        return this.liveUserLayout;
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected void onThreadChanged(ChatThread chatThread) throws Resources.NotFoundException {
        super.onThreadChanged(chatThread);
        updateLiveUserLayout();
        updateLayout();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        VVChatInviteHelper vVChatInviteHelper = this.vvChatInviteHelper;
        if (vVChatInviteHelper != null) {
            vVChatInviteHelper.handleAddMemberOnActivityResult(i, i2, intent);
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() throws Resources.NotFoundException {
        super.onResume();
        updateLayout();
    }

    private void updateLayout() throws Resources.NotFoundException {
        updateCallLayout(this.chatHelper.getPrivateChatTargetUer(getThread()), this.rtcService.isPrivateMainChannelFullBefore() ? 2 : this.callScreenService.getCurStatus(), isCreator());
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(SignallingChannel signallingChannel, int i) {
        super.onChannelForceQuit(signallingChannel, i);
        if (isPrivateCall()) {
            this.callScreenService.updateStatus(6);
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelStatusChanged(SignallingChannel signallingChannel) {
        super.onChannelStatusChanged(signallingChannel);
        if (isPrivateCall()) {
            this.callScreenService.configCallScreenService(getIntParam("__communityId"), getThreadId());
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.MyChannelUserStatusChangeListener
    public void onMyChannelUserStatusChanged(int i, SignallingChannel signallingChannel, ChannelUser channelUser) {
        super.onMyChannelUserStatusChanged(i, signallingChannel, channelUser);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(SignallingChannel signallingChannel, Collection<? extends ChannelUser> collection, Collection<? extends ChannelUser> collection2, SparseArray<ChannelUserWrapper> sparseArray) {
        super.onChannelUserListChanged(signallingChannel, collection, collection2, sparseArray);
    }

    @Override // com.narvii.chat.call.CallStatusChangeListener
    public void onCallStatusChanged(int i) throws Resources.NotFoundException {
        if (isFinishing() || !isAdded()) {
            return;
        }
        boolean zIsChannelFull = isChannelFull(this.rtcService.getMainSigChannel());
        this.callingLayout.updateStatus(i);
        if (zIsChannelFull || i == 2) {
            updateCallLayout(this.chatHelper.getPrivateChatTargetUer(getThread()), i, isCreator());
            dismissRetryPrivateCallDialog();
            this.callingLayout.updateStatus(2);
            return;
        }
        if (i == 8) {
            this.vvChatHelper.sendCallNoAnswerMessage(this.rtcService.getMainSigChannel());
            leaveCurrentChannel(null, false);
            showRetryPrivateCallDialog();
        } else if (i == 7) {
            this.callingLayout.disableCancelButton();
            leaveCurrentChannel(null, false);
            delayCloseLiveChannelRoom();
        } else if (i == 10 || i == 3) {
            leaveCurrentChannel(null, false);
            delayCloseLiveChannelRoom();
        }
    }

    @Override // com.narvii.chat.video.layout.LiveCallingLayout.CallCancelClickListener
    public void onCancelClicked() {
        onCancelPrivateCall(true);
    }

    protected void onCancelPrivateCall(boolean z) {
        leaveCurrentChannel(null, false);
        if (z) {
            this.vvChatHelper.sendCallCancelMessage(this.rtcService.getMainSigChannel(), this.rtcService.isPrivateMainChannelFullBefore());
        }
        delayCloseLiveChannelRoom();
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

    protected void updateCallLayout(User user, int i, boolean z) throws Resources.NotFoundException {
        if (!isPrivateCall()) {
            this.callingLayout.setVisibility(8);
            changeCallCompetitorViewVisibility(true);
            return;
        }
        if (isCreator()) {
            this.callingLayout.updateViews(user, i);
            if (i == 2) {
                if (z && this.callingLayout.getVisibility() == 0) {
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
        if (i == 8 && getBooleanParam(VVChatMainFragment.KEY_IS_RELAUNCH)) {
            showRetryPrivateCallDialog();
        }
    }

    @Override // com.narvii.chat.video.layout.LiveCallingLayout.EnterConversationAnimationListener
    public void onAnimationFinished() {
        this.callingLayout.setVisibility(8);
        changeCallCompetitorViewVisibility(true);
    }

    protected void changeCallCompetitorViewVisibility(boolean z) {
        if (this.callCompetitorView == null || SignallingChannel.isVideoType(this.channelType)) {
            return;
        }
        this.callCompetitorView.setVisibility(z ? 0 : 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    @Override // com.narvii.chat.video.PresenterItemClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPresenterItemClicked(android.view.View r4, com.narvii.chat.rtc.ChannelUserWrapper r5, boolean r6, int r7) {
        /*
            r3 = this;
            com.narvii.chat.rtc.RtcService r4 = r3.rtcService
            com.narvii.chat.signalling.SignallingChannel r4 = r4.getMainSigChannel()
            com.narvii.model.ChatThread r0 = r3.getThread()
            if (r4 == 0) goto L56
            if (r0 == 0) goto L56
            java.lang.String r1 = "account"
            java.lang.Object r1 = r3.getService(r1)
            com.narvii.account.AccountService r1 = (com.narvii.account.AccountService) r1
            java.lang.String r1 = r1.getUserId()
            if (r1 == 0) goto L39
            java.lang.String r2 = r0.uid
            boolean r2 = com.narvii.util.Utils.isEquals(r2, r1)
            if (r2 == 0) goto L27
            java.lang.String r0 = "host"
            goto L3b
        L27:
            boolean r1 = r0.isCoHost(r1)
            if (r1 == 0) goto L30
            java.lang.String r0 = "co-host"
            goto L3b
        L30:
            boolean r0 = r0.joined()
            if (r0 == 0) goto L39
            java.lang.String r0 = "member"
            goto L3b
        L39:
            java.lang.String r0 = "others"
        L3b:
            java.lang.String r1 = "SpeakerArea"
            com.narvii.logging.LogEvent$Builder r1 = com.narvii.logging.LogEvent.clickWildcardBuilder(r3, r1)
            int r4 = r4.joinRole
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.lang.String r2 = "joinRole"
            com.narvii.logging.LogEvent$Builder r4 = r1.extraParam(r2, r4)
            java.lang.String r1 = "chatRole"
            com.narvii.logging.LogEvent$Builder r4 = r4.extraParam(r1, r0)
            r4.send()
        L56:
            boolean r4 = r3.checkCommunityAvailability(r5, r6)
            if (r4 != 0) goto L5d
            return
        L5d:
            r4 = 1
            if (r7 != r4) goto L66
            com.narvii.chat.rtc.RtcService r4 = r3.rtcService
            r4.toggleLocalVideo()
            goto L72
        L66:
            r4 = 2
            if (r7 != r4) goto L6f
            com.narvii.chat.rtc.RtcService r4 = r3.rtcService
            r4.flipCamera()
            goto L72
        L6f:
            r3.onPresenterItemClicked(r5, r6)
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.video.fragments.LiveCallFragment.onPresenterItemClicked(android.view.View, com.narvii.chat.rtc.ChannelUserWrapper, boolean, int):void");
    }

    @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
    public SignallingChannel getSignallingChannel() {
        return this.rtcService.getMappedSignallingChannel(getThreadId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPresenterItemClicked(ChannelUserWrapper channelUserWrapper, boolean z) {
        if (channelUserWrapper != null) {
            VVChatUserDialog.Builder builder = new VVChatUserDialog.Builder(this, channelUserWrapper);
            builder.configUserDialog(getThreadId(), this.channelType, getThread());
            builder.clickListener(this.VVProfileClickListener).needVideoFrameWhenFlag(false);
            builder.build().show();
            return;
        }
        if (!z) {
            SignallingChannel signallingChannel = getSignallingChannel();
            ChatThreadCheckFragment chatThreadCheckFragment = ChatThreadCheckFragment.getInstance(this, this, null);
            if (chatThreadCheckFragment == null || signallingChannel == null) {
                return;
            }
            if (ChatWaitingListServiceKt.isCurrentUserInWaitingList(this, signallingChannel.userWaitList)) {
                if (chatThreadCheckFragment.checkCommunityAvailability(signallingChannel.channelType, new Callback() { // from class: com.narvii.chat.video.fragments.-$$Lambda$LiveCallFragment$yPdw8rUo9HXBbJANElJ9Ov0I2lQ
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f$0.lambda$onPresenterItemClicked$1$LiveCallFragment((Boolean) obj);
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
            startActivity(intent);
        }
    }

    public /* synthetic */ void lambda$onPresenterItemClicked$1$LiveCallFragment(Boolean bool) {
        openWaitingList();
    }

    private void openWaitingList() {
        ((ChatWaitingListService) getService("chatWaitingList")).show(getThread());
    }

    private boolean checkCommunityAvailability(final ChannelUserWrapper channelUserWrapper, final boolean z) {
        return true ^ new GlobalChatHelper(this).tryJoinCommunity(((ConfigService) getService("config")).getCommunityId(), true, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.video.fragments.LiveCallFragment.4
            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i) {
                return false;
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
            public ChatThread followingChatToJoin() {
                return LiveCallFragment.this.getThread();
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i, boolean z2) {
                if (z2) {
                    LiveCallFragment.this.onPresenterItemClicked(channelUserWrapper, z);
                }
            }
        });
    }
}

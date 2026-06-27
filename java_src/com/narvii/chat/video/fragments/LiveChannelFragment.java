package com.narvii.chat.video.fragments;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.dialog.VVChatUserDialog;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.widgets.SRLiveUserLayout;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.ILiveChannelCollapseChangeListener;
import com.narvii.chat.video.events.ChannelUserWrapperUpdateListener;
import com.narvii.chat.video.events.LiveChannelChangeListener;
import com.narvii.chat.video.events.LocalMuteUserListChangeListener;
import com.narvii.chat.video.events.MyChannelUserStatusChangeListener;
import com.narvii.chat.video.layout.RtcBaseLayout;
import com.narvii.chat.video.layout.VVContentLayout;
import com.narvii.chat.video.overlay.ParticipantsListFragment;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionUtils;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class LiveChannelFragment extends NVFragment implements LiveChannelChangeListener, LocalMuteUserListChangeListener, ChannelUserWrapperUpdateListener, MyChannelUserStatusChangeListener, VVContentLayout.VVContentCollapseListener {
    protected AccountService accountService;
    protected int channelType;
    protected ChatThread chatThread;
    ILiveChannelCollapseChangeListener collapseChangeListener;
    protected boolean isContentCollapsed;
    protected boolean isCreator;
    private View liveMiniContent;
    protected VVContentLayout liveNormalContent;
    private View miniIndicator;
    private View miniIndicatorRoot;
    protected RtcService rtcService;
    protected VVChatHelper vvChatHelper;
    View.OnClickListener collapseListener = new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.LiveChannelFragment.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(LiveChannelFragment.this.liveMiniContent, "alpha", 0.0f, 1.0f);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(LiveChannelFragment.this.liveNormalContent, "translationY", 0.0f, r1.getHeight() * (-1));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.chat.video.fragments.LiveChannelFragment.2.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    LiveChannelFragment.this.showLiveContent(true);
                    LiveChannelFragment.this.notifyCollapseStatusChange(2);
                    LiveChannelFragment.this.sendLog(ActSemantic.collapse);
                }
            });
            animatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat);
            animatorSet.setDuration(200L);
            animatorSet.start();
        }
    };
    View.OnClickListener expandContentListener = new View.OnClickListener() { // from class: com.narvii.chat.video.fragments.LiveChannelFragment.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiveChannelFragment.this.expandContent(true);
        }
    };
    VVChatUserDialog.VVProfileClickListener VVProfileClickListener = new VVChatUserDialog.VVProfileClickListener() { // from class: com.narvii.chat.video.fragments.-$$Lambda$LiveChannelFragment$3FBkK5Ik6aW-CdJc7kcBNx1m10Q
        @Override // com.narvii.chat.dialog.VVChatUserDialog.VVProfileClickListener
        public final void onStartChat(User user) {
            this.f$0.lambda$new$0$LiveChannelFragment(user);
        }
    };
    RtcBaseLayout.UserClickedListener userClickedListener = new RtcBaseLayout.UserClickedListener() { // from class: com.narvii.chat.video.fragments.LiveChannelFragment.5
        @Override // com.narvii.chat.video.layout.RtcBaseLayout.UserClickedListener
        public void onUserClicked(ChannelUserWrapper channelUserWrapper, String str) {
            ChannelUser channelUser = channelUserWrapper.channelUser;
            if ((channelUser == null ? null : channelUser.userProfile) == null) {
                return;
            }
            VVChatUserDialog.Builder builder = new VVChatUserDialog.Builder(LiveChannelFragment.this, channelUserWrapper);
            String stringParam = LiveChannelFragment.this.getStringParam("id");
            LiveChannelFragment liveChannelFragment = LiveChannelFragment.this;
            builder.configUserDialog(stringParam, liveChannelFragment.channelType, liveChannelFragment.getThread());
            builder.clickListener(LiveChannelFragment.this.VVProfileClickListener).needVideoFrameWhenFlag(LiveChannelFragment.this.channelType != 5);
            builder.build().show();
        }
    };

    protected abstract SRLiveUserLayout getLiveUserLayout();

    protected int getNormalContentHeight() {
        return 0;
    }

    public abstract boolean isMappedLiveChannel(int i);

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    protected int liveContentId() {
        return R.id.vv_live_content;
    }

    public boolean onBackPressed() {
        return false;
    }

    protected void onLiveContentForceRemoved() {
    }

    protected boolean supportCollapse() {
        return true;
    }

    public void setCollapseChangeListener(ILiveChannelCollapseChangeListener iLiveChannelCollapseChangeListener) {
        this.collapseChangeListener = iLiveChannelCollapseChangeListener;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.rtcService = (RtcService) getService("rtc");
        this.accountService = (AccountService) getService("account");
        this.chatThread = getThread();
        this.vvChatHelper = new VVChatHelper(this);
        this.isCreator = getBooleanParam(VVChatMainFragment.KEY_IS_CREATOR);
        this.channelType = getIntParam("channel_type");
        this.rtcService.liveExtraBundle = getArguments();
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("Source", getStringParam("Source"));
            chatInviteFragment.setArguments(bundle2);
            getChildFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commit();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (view instanceof ViewGroup) {
            this.liveNormalContent = (VVContentLayout) view.findViewById(liveContentId());
            if (this.liveNormalContent != null) {
                configCollapse();
                this.liveNormalContent.setCollapseListener(this);
            }
            ViewGroup viewGroup = (ViewGroup) view;
            this.liveMiniContent = LayoutInflater.from(getContext()).inflate(R.layout.layout_mini_content, viewGroup, false);
            View view2 = this.liveMiniContent;
            if (view2 != null) {
                ViewGroup viewGroup2 = (ViewGroup) view2.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(this.liveMiniContent);
                }
                this.liveMiniContent.setOnClickListener(this.expandContentListener);
                viewGroup.addView(this.liveMiniContent, 0);
                this.liveMiniContent.setVisibility(8);
            }
            FragmentManager childFragmentManager = getChildFragmentManager();
            if (childFragmentManager.findFragmentByTag("mini_content") == null) {
                MiniVVContentFragment miniVVContentFragment = new MiniVVContentFragment();
                Bundle bundle2 = new Bundle();
                bundle2.putString("id", getThreadId());
                miniVVContentFragment.setArguments(bundle2);
                childFragmentManager.beginTransaction().add(R.id.mini_content, miniVVContentFragment, "mini_content").commit();
            }
            this.miniIndicatorRoot = view.findViewById(R.id.mini_indicator_root);
            this.miniIndicator = view.findViewById(R.id.mini_indicator);
            View view3 = this.miniIndicator;
            if (view3 != null) {
                view3.setOnClickListener(this.collapseListener);
            }
            updateMiniIndicatorView();
        }
        this.isContentCollapsed = this.rtcService.isInMiniStatus();
        VVContentLayout vVContentLayout = this.liveNormalContent;
        if (vVContentLayout != null) {
            vVContentLayout.setVisibility(this.rtcService.isInMiniStatus() ? 8 : 0);
        }
        View view4 = this.liveMiniContent;
        if (view4 != null) {
            view4.setVisibility(this.rtcService.isInMiniStatus() ? 0 : 8);
        }
        notifyCollapseStatusChange(this.rtcService.isInMiniStatus() ? 2 : 1);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        Utils.post(new Runnable() { // from class: com.narvii.chat.video.fragments.LiveChannelFragment.1
            @Override // java.lang.Runnable
            public void run() {
                if (LiveChannelFragment.this.isAdded()) {
                    LiveChannelFragment.this.dispatchInitData();
                }
            }
        });
        addLiveChannelRelatedListener(getThreadId());
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        removeChannelRelatedListener(getThreadId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expandContent(final boolean z) {
        if (this.rtcService.isAllMuted() && this.rtcService.getRtcManager() != null) {
            this.rtcService.setIsAllMuted(false);
            this.rtcService.getRtcManager().muteAllRemoteStream(false);
            this.rtcService.removeAllLocalMuteUsers();
        }
        if (this.liveNormalContent == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.liveMiniContent, "alpha", 1.0f, 0.0f);
        VVContentLayout vVContentLayout = this.liveNormalContent;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(vVContentLayout, "translationY", vVContentLayout.getTranslationY(), 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.chat.video.fragments.LiveChannelFragment.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                LiveChannelFragment.this.liveNormalContent.setVisibility(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                LiveChannelFragment.this.showLiveContent(false);
                LiveChannelFragment.this.notifyCollapseStatusChange(1);
                if (z) {
                    LiveChannelFragment.this.sendLog(ActSemantic.expand);
                }
            }
        });
        animatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat);
        animatorSet.setDuration(200L);
        animatorSet.start();
    }

    @Override // com.narvii.chat.video.layout.VVContentLayout.VVContentCollapseListener
    public void onExpanded() {
        showLiveContent(false);
        notifyCollapseStatusChange(1);
        sendLog(ActSemantic.expand);
    }

    @Override // com.narvii.chat.video.layout.VVContentLayout.VVContentCollapseListener
    public void onCollapsePercentChange(float f) {
        View view = this.liveMiniContent;
        if (view != null) {
            if (f > 0.1f) {
                view.setVisibility(0);
            }
            this.liveMiniContent.setAlpha(f);
        }
    }

    @Override // com.narvii.chat.video.layout.VVContentLayout.VVContentCollapseListener
    public void onVVContentCollapsed() {
        showLiveContent(true);
        View view = this.liveMiniContent;
        if (view != null) {
            view.setAlpha(1.0f);
        }
        notifyCollapseStatusChange(2);
        sendLog(ActSemantic.collapse);
    }

    protected void notifyCollapseStatusChange(int i) {
        ILiveChannelCollapseChangeListener iLiveChannelCollapseChangeListener = this.collapseChangeListener;
        if (iLiveChannelCollapseChangeListener != null) {
            iLiveChannelCollapseChangeListener.onLiveContentStatusChanged(i);
        }
        this.rtcService.setIsInMiniStatus(i == 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLog(ActSemantic actSemantic) {
        LogEvent.clickBuilder(this, actSemantic).area("ChatArea").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLiveContent(boolean z) {
        View view = this.liveMiniContent;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
        VVContentLayout vVContentLayout = this.liveNormalContent;
        if (vVContentLayout != null) {
            vVContentLayout.setVisibility(z ? 8 : 0);
        }
        this.isContentCollapsed = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchInitData() {
        if (this.rtcService.getMainSigChannel() == null) {
            return;
        }
        onChannelUserListChanged(this.rtcService.getMainSigChannel(), Collections.emptyList(), this.rtcService.getMainChannelChannelUserList(), this.rtcService.getMainChannelFilteredUserWrapperList());
        onLocalMuteUserListChanged(this.rtcService.getMainSigChannel(), this.rtcService.getLocalMutedUserList());
    }

    public String getThreadId() {
        return getStringParam("id");
    }

    public ChatThread getThread() {
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            return chatThread;
        }
        if (getParentFragment() instanceof VVChatMainFragment) {
            return ((VVChatMainFragment) getParentFragment()).getThread();
        }
        return (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
    }

    protected boolean isCreator() {
        return this.isCreator || this.rtcService.isCreator();
    }

    protected boolean isPrivateCall() {
        return this.vvChatHelper.isPrivateCall(getThread(), this.channelType);
    }

    public /* synthetic */ void lambda$new$0$LiveChannelFragment(User user) {
        if (((AccountService) getService("account")).hasAccount()) {
            ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getChildFragmentManager().findFragmentByTag("chatInvite");
            if (chatInviteFragment == null || !chatInviteFragment.isAdded()) {
                return;
            }
            chatInviteFragment.startChat(user.uid());
            return;
        }
        Intent intent = new Intent("chat");
        intent.putExtra("uid", user.uid());
        ensureLogin(intent);
    }

    protected void onThreadChanged(ChatThread chatThread) {
        this.chatThread = chatThread;
        configCollapse();
        updateMiniIndicatorView();
        SRLiveUserLayout liveUserLayout = getLiveUserLayout();
        if (liveUserLayout != null) {
            liveUserLayout.setChatThread(chatThread);
        }
    }

    protected void configCollapse() {
        if (this.liveNormalContent == null) {
            return;
        }
        ChatThread chatThread = this.chatThread;
        this.liveNormalContent.setSupportCollapse(!(chatThread != null && chatThread.type == 0) && supportCollapse());
    }

    protected void updateMiniIndicatorView() {
        if (this.miniIndicatorRoot == null) {
            return;
        }
        ChatThread chatThread = this.chatThread;
        this.miniIndicatorRoot.setVisibility((!supportCollapse() || (chatThread != null && chatThread.type == 0)) ? 8 : 0);
    }

    public void onChannelStatusChanged(SignallingChannel signallingChannel) {
        SRLiveUserLayout liveUserLayout;
        if (isAdded() && (liveUserLayout = getLiveUserLayout()) != null) {
            liveUserLayout.onChannelStatusChanged();
        }
    }

    public void onChannelUserListChanged(SignallingChannel signallingChannel, Collection<? extends ChannelUser> collection, Collection<? extends ChannelUser> collection2, SparseArray<ChannelUserWrapper> sparseArray) {
        if (isAdded()) {
            if (isCreator() && SignallingChannel.isLegalChannelType(this.channelType)) {
                signallingChannel.channelType = this.channelType;
            }
            SRLiveUserLayout liveUserLayout = getLiveUserLayout();
            if (liveUserLayout != null) {
                liveUserLayout.notifyUserWrapperListChanged(signallingChannel, sparseArray, this.rtcService.getMainChannelUserWrapperList().size());
            }
        }
    }

    public void onChannelForceQuit(SignallingChannel signallingChannel, int i) {
        if (!isAdded()) {
        }
    }

    @Override // com.narvii.chat.video.events.LocalMuteUserListChangeListener
    public void onLocalMuteUserListChanged(SignallingChannel signallingChannel, Set<String> set) {
        SRLiveUserLayout liveUserLayout;
        if (isAdded() && (liveUserLayout = getLiveUserLayout()) != null) {
            liveUserLayout.updateLayout();
        }
    }

    @Override // com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        SRLiveUserLayout liveUserLayout;
        if (isAdded() && (liveUserLayout = getLiveUserLayout()) != null) {
            liveUserLayout.updateChannelUserWrapper(channelUserWrapper);
        }
    }

    public void onMyChannelUserStatusChanged(int i, SignallingChannel signallingChannel, ChannelUser channelUser) {
        if (isAdded() && channelUser != null && channelUser.channelUid == signallingChannel.channelUid && channelUser.joinRole == 1) {
            int i2 = signallingChannel.channelType;
            if ((i2 == 1 || i2 == 5) && this.liveMiniContent != null) {
                expandContent(false);
            }
        }
    }

    private void addLiveChannelRelatedListener(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.rtcService.addLiveChannelChangeListener(str, this);
        this.rtcService.addMyChannelUserStatusChangeListener(str, this);
        this.rtcService.addChannelUserWrapperUpdateListener(str, this);
        this.rtcService.addLocalMuteUserListChangeListener(str, this);
    }

    private void removeChannelRelatedListener(String str) {
        RtcService rtcService;
        if (TextUtils.isEmpty(str) || (rtcService = this.rtcService) == null) {
            return;
        }
        rtcService.removeLiveChannelChangeListener(str, this);
        this.rtcService.removeMyChannelUserStatusChangeListener(str, this);
        this.rtcService.removeChannelUserWrapperUpdateListener(str, this);
        this.rtcService.removeLocalMuteUserListChangeListener(str, this);
    }

    protected void joinLiveChannel() {
        if (getParentFragment() instanceof VVChatMainFragment) {
            ((VVChatMainFragment) getParentFragment()).joinLiveChannel();
        }
    }

    protected void leaveCurrentChannel(String str, boolean z) {
        this.isCreator = false;
        if (getParentFragment() instanceof VVChatMainFragment) {
            ((VVChatMainFragment) getParentFragment()).leaveCurrentLiveChannel(str, z);
        }
    }

    protected void closeCurrentLiveChannelRoom() {
        if (getParentFragment() instanceof VVChatMainFragment) {
            ((VVChatMainFragment) getParentFragment()).removeLiveContentFragment();
        }
    }

    protected boolean isMeOrganizer() {
        return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), getThread() == null ? null : getThread().uid());
    }

    protected void requestToBePresenter() {
        boolean zHasSelfPermission;
        if (SignallingChannel.isCameraPermissionRequestType(this.channelType)) {
            zHasSelfPermission = PermissionUtils.hasSelfPermission(getContext(), "android.permission.RECORD_AUDIO", "android.permission.CAMERA");
        } else {
            zHasSelfPermission = this.channelType == 1 ? PermissionUtils.hasSelfPermission(getContext(), "android.permission.RECORD_AUDIO") : true;
        }
        if (zHasSelfPermission) {
            this.vvChatHelper.requestToBePresenter(getThread());
        } else {
            NVPermission.builder(this).permissions(SignallingChannel.isCameraPermissionRequestType(this.channelType) ? new String[]{"android.permission.RECORD_AUDIO", "android.permission.CAMERA"} : new String[]{"android.permission.RECORD_AUDIO"}).permissionListener(this).requestCode(304).request();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        super.onPermissionGranted(i);
        if (i == 304) {
            this.vvChatHelper.requestToBePresenter(getThread());
        }
    }

    protected void openParticipants() {
        openParticipantsListFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openParticipantsListFragment() {
        Intent intent = FragmentWrapperActivity.intent(ParticipantsListFragment.class);
        intent.putExtra(ParticipantsListFragment.KEY_CHANNEL_TYPE, this.channelType);
        intent.putExtra("thread", JacksonUtils.writeAsString(getThread()));
        intent.putExtra("id", getThreadId());
        startActivity(intent);
    }

    public boolean checkCommunityAvailability() {
        return !new GlobalChatHelper(this).tryJoinCommunity(((ConfigService) getService("config")).getCommunityId(), false, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.video.fragments.LiveChannelFragment.6
            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public ChatThread followingChatToJoin() {
                return null;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return 1;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i) {
                return false;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                LiveChannelFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i, boolean z) {
                if (z) {
                    LiveChannelFragment liveChannelFragment = LiveChannelFragment.this;
                    SignallingChannel mappedSignallingChannel = liveChannelFragment.rtcService.getMappedSignallingChannel(liveChannelFragment.getThreadId());
                    if (mappedSignallingChannel == null || mappedSignallingChannel.joinRole != 3) {
                        return;
                    }
                    LiveChannelFragment liveChannelFragment2 = LiveChannelFragment.this;
                    liveChannelFragment2.rtcService.updateJoinRole(i, liveChannelFragment2.getThreadId(), 2, new Callback() { // from class: com.narvii.chat.video.fragments.LiveChannelFragment.6.1
                        @Override // com.narvii.util.Callback
                        public void call(Object obj) {
                            LiveChannelFragment.this.openParticipantsListFragment();
                        }
                    });
                }
            }
        });
    }

    protected int getContentHeight() {
        return this.isContentCollapsed ? getMiniContentHeight() : getNormalContentHeight();
    }

    protected int getMiniContentHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.rtc_mini_content_height);
    }
}

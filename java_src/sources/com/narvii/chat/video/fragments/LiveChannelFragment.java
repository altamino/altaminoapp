package com.narvii.chat.video.fragments;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionUtils;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
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
            VVContentLayout vVContentLayout = LiveChannelFragment.this.liveNormalContent;
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(vVContentLayout, "translationY", 0.0f, vVContentLayout.getHeight() * (-1));
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
    VVChatUserDialog.VVProfileClickListener VVProfileClickListener = new VVChatUserDialog.VVProfileClickListener() { // from class: com.narvii.chat.video.fragments.c
        @Override // com.narvii.chat.dialog.VVChatUserDialog.VVProfileClickListener
        public final void onStartChat(User user) {
            this.f2125a.lambda$new$0(user);
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

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    protected abstract SRLiveUserLayout getLiveUserLayout();

    protected int getNormalContentHeight() {
        return 0;
    }

    public abstract boolean isMappedLiveChannel(int i10);

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    protected void leaveCurrentChannel(String str, boolean z6) {
        this.isCreator = false;
        if (getParentFragment() instanceof VVChatMainFragment) {
            ((VVChatMainFragment) getParentFragment()).leaveCurrentLiveChannel(str, z6);
        }
    }

    protected int liveContentId() {
        return R.id.vv_live_content;
    }

    public boolean onBackPressed() {
        return false;
    }

    @Override // com.narvii.chat.video.layout.VVContentLayout.VVContentCollapseListener
    public void onExpanded() {
        showLiveContent(false);
        notifyCollapseStatusChange(1);
        sendLog(ActSemantic.expand);
    }

    protected void onLiveContentForceRemoved() {
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

    public void setCollapseChangeListener(ILiveChannelCollapseChangeListener iLiveChannelCollapseChangeListener) {
        this.collapseChangeListener = iLiveChannelCollapseChangeListener;
    }

    protected boolean supportCollapse() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchInitData() {
        if (this.rtcService.getMainSigChannel() == null) {
            return;
        }
        onChannelUserListChanged(this.rtcService.getMainSigChannel(), Collections.emptyList(), this.rtcService.getMainChannelChannelUserList(), this.rtcService.getMainChannelFilteredUserWrapperList());
        onLocalMuteUserListChanged(this.rtcService.getMainSigChannel(), this.rtcService.getLocalMutedUserList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expandContent(final boolean z6) {
        if (this.rtcService.isAllMuted() && this.rtcService.getRtcManager() != null) {
            this.rtcService.muteAllRemoteUsers(false);
            this.rtcService.setIsAllMuted(false);
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
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                LiveChannelFragment.this.showLiveContent(false);
                LiveChannelFragment.this.notifyCollapseStatusChange(1);
                if (z6) {
                    LiveChannelFragment.this.sendLog(ActSemantic.expand);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                LiveChannelFragment.this.liveNormalContent.setVisibility(0);
            }
        });
        animatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat);
        animatorSet.setDuration(200L);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(User user) {
        if (!((AccountService) getService("account")).hasAccount()) {
            Intent intent = new Intent("chat");
            intent.putExtra("uid", user.uid());
            ensureLogin(intent);
        } else {
            ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getChildFragmentManager().m0("chatInvite");
            if (chatInviteFragment == null || !chatInviteFragment.isAdded()) {
                return;
            }
            chatInviteFragment.startChat(user.uid());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openParticipantsListFragment() {
        Intent intent = FragmentWrapperActivity.intent(ParticipantsListFragment.class);
        intent.putExtra(ParticipantsListFragment.KEY_CHANNEL_TYPE, this.channelType);
        intent.putExtra("thread", JacksonUtils.writeAsString(getThread()));
        intent.putExtra("id", getThreadId());
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLiveContent(boolean z6) {
        View view = this.liveMiniContent;
        if (view != null) {
            view.setVisibility(z6 ? 0 : 8);
        }
        VVContentLayout vVContentLayout = this.liveNormalContent;
        if (vVContentLayout != null) {
            vVContentLayout.setVisibility(z6 ? 8 : 0);
        }
        this.isContentCollapsed = z6;
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
            public boolean onPreJoinCommunity(int i10) {
                return false;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                LiveChannelFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i10, boolean z6) {
                if (z6) {
                    LiveChannelFragment liveChannelFragment = LiveChannelFragment.this;
                    SignallingChannel mappedSignallingChannel = liveChannelFragment.rtcService.getMappedSignallingChannel(liveChannelFragment.getThreadId());
                    if (mappedSignallingChannel == null || mappedSignallingChannel.joinRole != 3) {
                        return;
                    }
                    LiveChannelFragment liveChannelFragment2 = LiveChannelFragment.this;
                    liveChannelFragment2.rtcService.updateJoinRole(i10, liveChannelFragment2.getThreadId(), 2, new Callback() { // from class: com.narvii.chat.video.fragments.LiveChannelFragment.6.1
                        @Override // com.narvii.util.Callback
                        public void call(Object obj) {
                            LiveChannelFragment.this.openParticipantsListFragment();
                        }
                    });
                }
            }
        });
    }

    protected void configCollapse() {
        VVContentLayout vVContentLayout = this.liveNormalContent;
        if (vVContentLayout == null) {
            return;
        }
        ChatThread chatThread = this.chatThread;
        boolean z6 = false;
        if (!(chatThread != null && chatThread.type == 0) && supportCollapse()) {
            z6 = true;
        }
        vVContentLayout.setSupportCollapse(z6);
    }

    protected int getContentHeight() {
        return this.isContentCollapsed ? getMiniContentHeight() : getNormalContentHeight();
    }

    public ChatThread getThread() {
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            return chatThread;
        }
        return getParentFragment() instanceof VVChatMainFragment ? ((VVChatMainFragment) getParentFragment()).getThread() : (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
    }

    public String getThreadId() {
        return getStringParam("id");
    }

    protected boolean isCreator() {
        return this.isCreator || this.rtcService.isCreator();
    }

    protected boolean isMeOrganizer() {
        return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), getThread() == null ? null : getThread().uid());
    }

    protected boolean isPrivateCall() {
        return this.vvChatHelper.isPrivateCall(getThread(), this.channelType);
    }

    protected void notifyCollapseStatusChange(int i10) {
        ILiveChannelCollapseChangeListener iLiveChannelCollapseChangeListener = this.collapseChangeListener;
        if (iLiveChannelCollapseChangeListener != null) {
            iLiveChannelCollapseChangeListener.onLiveContentStatusChanged(i10);
        }
        this.rtcService.setIsInMiniStatus(i10 == 2);
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

    @CallSuper
    protected void onThreadChanged(ChatThread chatThread) {
        this.chatThread = chatThread;
        configCollapse();
        updateMiniIndicatorView();
        SRLiveUserLayout liveUserLayout = getLiveUserLayout();
        if (liveUserLayout != null) {
            liveUserLayout.setChatThread(chatThread);
        }
    }

    protected void requestToBePresenter() {
        boolean zHasSelfPermission;
        if (!SignallingChannel.isCameraPermissionRequestType(this.channelType)) {
            if (this.channelType == 1) {
                zHasSelfPermission = PermissionUtils.hasSelfPermission(getContext(), "android.permission.RECORD_AUDIO");
            }
            this.vvChatHelper.requestToBePresenter(getThread());
        }
        zHasSelfPermission = PermissionUtils.hasSelfPermission(getContext(), "android.permission.RECORD_AUDIO", "android.permission.CAMERA");
        if (!zHasSelfPermission) {
            NVPermission.builder(this).permissions(SignallingChannel.isCameraPermissionRequestType(this.channelType) ? new String[]{"android.permission.RECORD_AUDIO", "android.permission.CAMERA"} : new String[]{"android.permission.RECORD_AUDIO"}).permissionListener(this).requestCode(304).request();
            return;
        }
        this.vvChatHelper.requestToBePresenter(getThread());
    }

    protected void updateMiniIndicatorView() {
        View view = this.miniIndicatorRoot;
        if (view == null) {
            return;
        }
        ChatThread chatThread = this.chatThread;
        view.setVisibility((!supportCollapse() || (chatThread != null && chatThread.type == 0)) ? 8 : 0);
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
        if (!TextUtils.isEmpty(str) && (rtcService = this.rtcService) != null) {
            rtcService.removeLiveChannelChangeListener(str, this);
            this.rtcService.removeMyChannelUserStatusChangeListener(str, this);
            this.rtcService.removeChannelUserWrapperUpdateListener(str, this);
            this.rtcService.removeLocalMuteUserListChangeListener(str, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLog(ActSemantic actSemantic) {
        LogEvent.clickBuilder(this, actSemantic).area("ChatArea").send();
    }

    protected void closeCurrentLiveChannelRoom() {
        if (getParentFragment() instanceof VVChatMainFragment) {
            ((VVChatMainFragment) getParentFragment()).removeLiveContentFragment();
        }
    }

    protected int getMiniContentHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.rtc_mini_content_height);
    }

    protected void joinLiveChannel() {
        if (getParentFragment() instanceof VVChatMainFragment) {
            ((VVChatMainFragment) getParentFragment()).joinLiveChannel();
        }
    }

    public void onChannelForceQuit(@NotNull SignallingChannel signallingChannel, int i10) {
        isAdded();
    }

    public void onChannelStatusChanged(@NotNull SignallingChannel signallingChannel) {
        SRLiveUserLayout liveUserLayout;
        if (isAdded() && (liveUserLayout = getLiveUserLayout()) != null) {
            liveUserLayout.onChannelStatusChanged();
        }
    }

    public void onChannelUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Collection<? extends ChannelUser> collection, @NotNull Collection<? extends ChannelUser> collection2, @Nullable SparseArray<ChannelUserWrapper> sparseArray) {
        if (!isAdded()) {
            return;
        }
        if (isCreator() && SignallingChannel.isLegalChannelType(this.channelType)) {
            signallingChannel.channelType = this.channelType;
        }
        SRLiveUserLayout liveUserLayout = getLiveUserLayout();
        if (liveUserLayout != null) {
            liveUserLayout.notifyUserWrapperListChanged(signallingChannel, sparseArray, this.rtcService.getMainChannelUserWrapperList().size());
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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
            bundle2.putString(ExternalPostPreviewFragment.SOURCE, getStringParam(ExternalPostPreviewFragment.SOURCE));
            chatInviteFragment.setArguments(bundle2);
            getChildFragmentManager().q().e(chatInviteFragment, "chatInvite").j();
        }
    }

    @Override // com.narvii.chat.video.events.LocalMuteUserListChangeListener
    public void onLocalMuteUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Set<String> set) {
        SRLiveUserLayout liveUserLayout;
        if (isAdded() && (liveUserLayout = getLiveUserLayout()) != null) {
            liveUserLayout.updateLayout();
        }
    }

    public void onMyChannelUserStatusChanged(int i10, @NotNull SignallingChannel signallingChannel, @Nullable ChannelUser channelUser) {
        if (isAdded() && channelUser != null && channelUser.channelUid == signallingChannel.channelUid && channelUser.joinRole == 1) {
            int i11 = signallingChannel.channelType;
            if ((i11 == 1 || i11 == 5) && this.liveMiniContent != null) {
                expandContent(false);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        removeChannelRelatedListener(getThreadId());
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
        super.onPermissionGranted(i10);
        if (i10 == 304) {
            this.vvChatHelper.requestToBePresenter(getThread());
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(@NotNull SignallingChannel signallingChannel, @NotNull ChannelUserWrapper channelUserWrapper) {
        SRLiveUserLayout liveUserLayout;
        if (isAdded() && (liveUserLayout = getLiveUserLayout()) != null) {
            liveUserLayout.updateChannelUserWrapper(channelUserWrapper);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @androidx.annotation.Nullable Bundle bundle) {
        int i10;
        int i11;
        super.onViewCreated(view, bundle);
        int i12 = 8;
        if (view instanceof ViewGroup) {
            VVContentLayout vVContentLayout = (VVContentLayout) view.findViewById(liveContentId());
            this.liveNormalContent = vVContentLayout;
            if (vVContentLayout != null) {
                configCollapse();
                this.liveNormalContent.setCollapseListener(this);
            }
            ViewGroup viewGroup = (ViewGroup) view;
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_mini_content, viewGroup, false);
            this.liveMiniContent = viewInflate;
            if (viewInflate != null) {
                ViewGroup viewGroup2 = (ViewGroup) viewInflate.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(this.liveMiniContent);
                }
                this.liveMiniContent.setOnClickListener(this.expandContentListener);
                viewGroup.addView(this.liveMiniContent, 0);
                this.liveMiniContent.setVisibility(8);
            }
            FragmentManager childFragmentManager = getChildFragmentManager();
            if (childFragmentManager.m0("mini_content") == null) {
                MiniVVContentFragment miniVVContentFragment = new MiniVVContentFragment();
                Bundle bundle2 = new Bundle();
                bundle2.putString("id", getThreadId());
                miniVVContentFragment.setArguments(bundle2);
                childFragmentManager.q().c(R.id.mini_content, miniVVContentFragment, "mini_content").j();
            }
            this.miniIndicatorRoot = view.findViewById(R.id.mini_indicator_root);
            View viewFindViewById = view.findViewById(R.id.mini_indicator);
            this.miniIndicator = viewFindViewById;
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(this.collapseListener);
            }
            updateMiniIndicatorView();
        }
        this.isContentCollapsed = this.rtcService.isInMiniStatus();
        VVContentLayout vVContentLayout2 = this.liveNormalContent;
        if (vVContentLayout2 != null) {
            if (this.rtcService.isInMiniStatus()) {
                i11 = 8;
            } else {
                i11 = 0;
            }
            vVContentLayout2.setVisibility(i11);
        }
        View view2 = this.liveMiniContent;
        if (view2 != null) {
            if (this.rtcService.isInMiniStatus()) {
                i12 = 0;
            }
            view2.setVisibility(i12);
        }
        if (this.rtcService.isInMiniStatus()) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        notifyCollapseStatusChange(i10);
    }

    protected void openParticipants() {
        openParticipantsListFragment();
    }
}

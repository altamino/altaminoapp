package com.narvii.chat.video.fragments;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.DrawerActivity;
import com.narvii.chat.ChatActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.dialog.VVChatUserDialog;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.ReputationEarningComposite;
import com.narvii.chat.screenroom.SRHostStatusListener;
import com.narvii.chat.screenroom.SRPermissionActionChangeListener;
import com.narvii.chat.screenroom.SRRoleChangeListener;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.screenroom.VideoButtonClickListener;
import com.narvii.chat.screenroom.overlay.SROverlayTabFragment;
import com.narvii.chat.screenroom.playlist.PlaylistFragment;
import com.narvii.chat.screenroom.utils.ScreenRoomHelper;
import com.narvii.chat.screenroom.widgets.GLVideoView;
import com.narvii.chat.screenroom.widgets.SRLiveUserLayout;
import com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView;
import com.narvii.chat.screenroom.widgets.SRVideoController;
import com.narvii.chat.screenroom.widgets.ScreenRoomMainLayout;
import com.narvii.chat.screenroom.widgets.VideoPlayView;
import com.narvii.chat.screenroom.widgets.VideoWatchOverlayLayout;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.utils.VVChatInviteHelper;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatThread;
import com.narvii.util.Callback;
import com.narvii.util.RequestOrientationListener;
import com.narvii.util.ScreenRotateHelper;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.video.ui.UserStatusData;

/* loaded from: classes2.dex */
public class ScreenRoomFragment extends LiveChannelFragment implements SRRoleChangeListener, SRPermissionActionChangeListener, VideoButtonClickListener, SRHostStatusListener, RequestOrientationListener {
    public static final String PLAYLIST_FRAGMENT_TAG = "playlist";
    private VVChatInviteHelper chatInviteHelper;
    private boolean hasRepGuideDialogShown;
    boolean isScreenRoomHost;
    boolean isScreenRoomRoleSet;
    SoftKeyboard.KeyboardObserver keyboardObserver;
    boolean mLandScape;
    Integer repEarningVisibility;
    ReputationEarningComposite reputationComposite;
    Dialog reputationGuideDialog;
    private ScreenRoomMainLayout screenRoomContainer;
    private ScreenRoomHelper screenRoomHelper;
    private ScreenRoomService screenRoomService;
    ScreenRotateHelper screenRotateHelper;
    private View spinner;
    private SRLiveUserRecyclerView.ParticipantItemClickListener srItemClickListener = new SRLiveUserRecyclerView.ParticipantItemClickListener() { // from class: com.narvii.chat.video.fragments.ScreenRoomFragment.6
        @Override // com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView.ParticipantItemClickListener
        public void onParticipantItemClicked(ChannelUserWrapper channelUserWrapper) {
            if (ScreenRoomFragment.this.checkCommunityAvailability() && channelUserWrapper != null) {
                ChannelUser channelUser = channelUserWrapper.channelUser;
                boolean z = channelUser != null && channelUser.isHost;
                VVChatUserDialog.Builder builder = new VVChatUserDialog.Builder(ScreenRoomFragment.this, channelUserWrapper);
                String threadId = ScreenRoomFragment.this.getThreadId();
                ScreenRoomFragment screenRoomFragment = ScreenRoomFragment.this;
                builder.configUserDialog(threadId, screenRoomFragment.channelType, screenRoomFragment.chatThread);
                builder.clickListener(ScreenRoomFragment.this.VVProfileClickListener).muteVideoWhenBlockUser(!z);
                builder.build().show();
            }
        }

        @Override // com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView.ParticipantItemClickListener
        public void onInviteButtonClicked() {
            ScreenRoomFragment screenRoomFragment = ScreenRoomFragment.this;
            screenRoomFragment.chatInviteHelper = new VVChatInviteHelper(screenRoomFragment, screenRoomFragment.getThread(), ScreenRoomFragment.this.channelType);
            ScreenRoomFragment.this.chatInviteHelper.onInviteButtonClicked();
        }
    };
    private SROverlayTabFragment srOverlayTabFragment;
    private SRVideoController videoController;
    VideoWatchOverlayLayout videoWatchOverlayLayout;

    /* JADX INFO: Access modifiers changed from: private */
    public void showReputationGuide() {
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    public boolean isMappedLiveChannel(int i) {
        return i == 5;
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected int liveContentId() {
        return R.id.activing_container;
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(SignallingChannel signallingChannel, int i) {
    }

    @Override // com.narvii.chat.screenroom.SRHostStatusListener
    public void onHostVideoProgress(float f) {
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.screenRoomService = (ScreenRoomService) getService("screenRoom");
        this.screenRoomHelper = new ScreenRoomHelper(this);
        this.screenRotateHelper = new ScreenRotateHelper(getContext(), this);
        if (!getBooleanParam(VVChatMainFragment.KEY_IS_RELAUNCH)) {
            new ScreenRoomHelper(this);
        }
        if (bundle != null) {
            this.isScreenRoomRoleSet = bundle.getBoolean("isScreenRoomRoleSet");
        }
        RtcService rtcService = this.rtcService;
        this.isScreenRoomRoleSet = rtcService.isScreenRoomRoleSet;
        this.isScreenRoomHost = rtcService.isScreenRoomHost();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.rtc_screen_room_main_layout, viewGroup, false);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.screenRotateHelper.start();
        Utils.post(new Runnable() { // from class: com.narvii.chat.video.fragments.ScreenRoomFragment.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                GLVideoView glVideoView;
                if (!ScreenRoomFragment.this.isAdded() || (glVideoView = ScreenRoomFragment.this.screenRoomService.getGlVideoView()) == null || ScreenRoomFragment.this.getView() == null) {
                    return;
                }
                VideoPlayView videoPlayView = (VideoPlayView) ScreenRoomFragment.this.getView().findViewById(R.id.video_player_view);
                videoPlayView.setGlVideoView(glVideoView, !Utils.isLandscape(ScreenRoomFragment.this.getContext()));
                videoPlayView.onBuffering(ScreenRoomFragment.this.screenRoomService.isBuffering());
                videoPlayView.onUserSeeked(ScreenRoomFragment.this.screenRoomService.isCurrentUserSeeked());
                ScreenRoomFragment.this.screenRoomService.notifyVideoPlayChanged();
                if (ScreenRoomFragment.this.videoController != null) {
                    ScreenRoomFragment.this.videoController.updateProgress();
                }
            }
        });
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        this.screenRotateHelper.stop();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isScreenRoomRoleSet", this.isScreenRoomRoleSet);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected void notifyCollapseStatusChange(int i) {
        super.notifyCollapseStatusChange(i);
        ScreenRotateHelper screenRotateHelper = this.screenRotateHelper;
        if (screenRotateHelper != null) {
            screenRotateHelper.setMonitorEnabled(i != 2);
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Throwable {
        super.onViewCreated(view, bundle);
        this.screenRoomContainer = (ScreenRoomMainLayout) view.findViewById(R.id.rtc_screen_room_layout);
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            onThreadChanged(chatThread);
        }
        this.keyboardObserver = SoftKeyboard.observeKeyboard(getView(), new Callback<Boolean>() { // from class: com.narvii.chat.video.fragments.ScreenRoomFragment.2
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                ScreenRoomFragment.this.screenRoomContainer.setKeyboardVisible(bool.booleanValue());
            }
        });
        this.screenRoomContainer.setChatPanelLayout(view.getRootView() != null ? (ViewGroup) view.getRootView().findViewById(R.id.panel_layout) : null);
        this.screenRoomContainer.setUpVideoPlayListener(this.screenRoomService);
        this.screenRoomContainer.setLiveUserItemClickListener(this.srItemClickListener);
        this.screenRoomContainer.liveUserContainer.setOnUserCountClickListener(new SRLiveUserLayout.OnUserCountClickListener() { // from class: com.narvii.chat.video.fragments.ScreenRoomFragment.3
            @Override // com.narvii.chat.screenroom.widgets.SRLiveUserLayout.OnUserCountClickListener
            public void onClick(View view2) {
                ScreenRoomFragment.this.openParticipants();
            }
        });
        this.screenRoomContainer.setVideoButtonClickListener(this);
        this.screenRoomContainer.findViewById(R.id.sr_loading).setVisibility(isCreator() ? 8 : 0);
        RtcService rtcService = this.rtcService;
        if (rtcService.isScreenRoomRoleSet) {
            this.screenRoomContainer.setupRoomRole(rtcService.isScreenRoomHost() ? 1 : 0);
        }
        if (this.screenRoomService.getGlVideoView() == null) {
            GLVideoView gLVideoView = (GLVideoView) LayoutInflater.from(getActivity().getApplicationContext()).inflate(R.layout.sr_gl_video_layout, (ViewGroup) getView().findViewById(R.id.gl_video_container), false);
            gLVideoView.setOnVideoSizeChangeListener(this.screenRoomService);
            this.screenRoomService.setGlVideoView(gLVideoView);
        }
        this.videoController = (SRVideoController) getView().findViewById(R.id.video_controller);
        this.videoController.setPlayActionListener(this.screenRoomService);
        this.videoController.setOnSeekPositionChangedListener(this.screenRoomService);
        this.videoController.show();
        ((SRVideoController) getView().findViewById(R.id.viewer_video_controller)).setVideoButtonClickListener(this);
        this.videoWatchOverlayLayout = (VideoWatchOverlayLayout) getView().findViewById(R.id.viewer_overlay_layout);
        this.videoWatchOverlayLayout.onPlayListChanged(this.screenRoomService.getPlayList());
        this.videoWatchOverlayLayout.onHostAudioOnlyChanged(this.screenRoomService.isCurrentPlayAudioOnly());
        this.screenRoomService.addPlayListChangeListenter(this.videoWatchOverlayLayout);
        this.screenRoomService.addSRHostLoadingListener(this.videoWatchOverlayLayout);
        this.screenRoomService.addSRHostAudioOnlyListener(this.videoWatchOverlayLayout);
        View viewFindViewById = getView().findViewById(R.id.reputation_composite);
        if (((ConfigService) getService("config")).getCommunityId() != 0) {
            initReputationSystem(view);
        } else if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        this.screenRoomService.addSRPermissionListener(this);
        this.screenRoomService.addSRHostStatusListener(this);
        this.rtcService.addSRRoleChangeListener(this);
    }

    private void initReputationSystem(View view) {
        View viewFindViewById = view.findViewById(R.id.reputation_composite);
        if ((this.rtcService.isScreenRoomHost() || getBooleanParam(VVChatMainFragment.KEY_IS_CREATOR)) && this.rtcService.getMainChannelChatThread() != null && this.rtcService.getMainChannelChatThread().type != 0) {
            viewFindViewById.setVisibility(8);
            this.reputationComposite = new ReputationEarningComposite(viewFindViewById, this, this.rtcService.getMainChannelChatThread());
            this.rtcService.resetReputationComposite(this.reputationComposite);
        } else {
            viewFindViewById.setVisibility(8);
        }
        this.repEarningVisibility = Integer.valueOf(viewFindViewById.getVisibility());
    }

    @Override // com.narvii.chat.screenroom.SRPermissionActionChangeListener
    public void onThreadActionChanged(int i) {
        if (isFinishing()) {
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected boolean supportCollapse() {
        return (!this.isScreenRoomRoleSet || this.isScreenRoomHost || this.mLandScape) ? false : true;
    }

    @Override // com.narvii.chat.screenroom.SRRoleChangeListener
    public void onScreenRoomRoleChange(boolean z) {
        this.isScreenRoomRoleSet = true;
        this.isScreenRoomHost = z;
        ScreenRoomMainLayout screenRoomMainLayout = this.screenRoomContainer;
        if (screenRoomMainLayout != null) {
            screenRoomMainLayout.setupRoomRole(z ? 1 : 0);
        }
        configCollapse();
        if (this.srOverlayTabFragment != null) {
            this.srOverlayTabFragment.setScrollCheckListener((SRVideoController) getView().findViewById(this.isScreenRoomHost ? R.id.video_controller : R.id.viewer_video_controller));
            this.srOverlayTabFragment.setAvMainLayout(getView().findViewById(R.id.rtc_screen_room_scroll_intercept));
        }
        if (z) {
            return;
        }
        ((SRVideoController) getView().findViewById(R.id.viewer_video_controller)).showAndAutoHide();
    }

    @Override // com.narvii.chat.screenroom.SRHostStatusListener
    public void onHostMutedChanged(boolean z) {
        ScreenRoomMainLayout screenRoomMainLayout = this.screenRoomContainer;
        if (screenRoomMainLayout != null) {
            screenRoomMainLayout.updateHosMuteStatus(z);
        }
    }

    @Override // com.narvii.chat.screenroom.SRHostStatusListener
    public void onHostMicIndicatorLevelChanged(float f) {
        if (this.screenRoomService.isSrHostMuted()) {
            return;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        if (f < 0.0f) {
            f = 0.0f;
        }
        int i = (int) (f * 256.0f);
        ScreenRoomMainLayout screenRoomMainLayout = this.screenRoomContainer;
        if (screenRoomMainLayout != null) {
            screenRoomMainLayout.updateHostVolumeLevel(UserStatusData.getVolumeLevel(i));
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected SRLiveUserLayout getLiveUserLayout() {
        return this.screenRoomContainer.liveUserContainer;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.screenRoomService.removeSRPermissionListener(this);
        this.screenRoomService.removeSRHostStatusListener(this);
        this.rtcService.removeSRRoleChangeListener(this);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        SoftKeyboard.KeyboardObserver keyboardObserver = this.keyboardObserver;
        if (keyboardObserver != null) {
            keyboardObserver.dispose();
        }
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onConfigurationChanged(configuration);
        this.mLandScape = configuration.orientation == 2;
        this.screenRoomContainer.setLandscape(this.mLandScape);
        configCollapse();
        View viewFindViewById = getView().findViewById(R.id.reputation_composite);
        int communityId = ((ConfigService) getService("config")).getCommunityId();
        if (this.mLandScape || communityId == 0 || this.repEarningVisibility != null) {
            viewFindViewById.setVisibility(8);
        }
        if (!this.mLandScape) {
            updateViewTranslationX(0);
        }
        int statusBarHeight = StatusBarUtils.STATUS_BAR_ENABLE ? 0 : Utils.getStatusBarHeight(getContext());
        if (this.mLandScape) {
            this.screenRoomContainer.getLayoutParams().height = Utils.getScreenHeight(getContext()) - statusBarHeight;
        } else {
            this.screenRoomContainer.getLayoutParams().height = -1;
        }
        ViewUtils.show(getView(), R.id.channel_overlay, this.mLandScape);
        if (this.mLandScape && (getActivity() instanceof DrawerActivity)) {
            ((DrawerActivity) getActivity()).closeDrawersDirectly();
        }
        if (this.mLandScape) {
            this.srOverlayTabFragment = new SROverlayTabFragment();
            this.srOverlayTabFragment.setScrollCheckListener((SRVideoController) getView().findViewById(this.isScreenRoomHost ? R.id.video_controller : R.id.viewer_video_controller));
            this.srOverlayTabFragment.setAvMainLayout(getView().findViewById(R.id.rtc_screen_room_scroll_intercept));
            getChildFragmentManager().beginTransaction().replace(R.id.channel_overlay, this.srOverlayTabFragment, "srOverlayTab").commitAllowingStateLoss();
            this.srOverlayTabFragment.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.narvii.chat.video.fragments.ScreenRoomFragment.4
                @Override // android.support.v4.view.ViewPager.OnPageChangeListener
                public void onPageScrollStateChanged(int i) {
                }

                @Override // android.support.v4.view.ViewPager.OnPageChangeListener
                public void onPageScrolled(int i, float f, int i2) {
                    ScreenRoomFragment screenRoomFragment = ScreenRoomFragment.this;
                    screenRoomFragment.updateViewTranslationX(screenRoomFragment.getMainItemTranslationX(i, i2));
                }

                @Override // android.support.v4.view.ViewPager.OnPageChangeListener
                public void onPageSelected(int i) {
                    ScreenRoomFragment screenRoomFragment = ScreenRoomFragment.this;
                    screenRoomFragment.updateViewTranslationX(screenRoomFragment.getMainItemTranslationX(i, 0));
                }
            });
            return;
        }
        if (this.srOverlayTabFragment != null) {
            getChildFragmentManager().beginTransaction().remove(this.srOverlayTabFragment).commitAllowingStateLoss();
            this.srOverlayTabFragment = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMainItemTranslationX(int i, int i2) {
        ViewPager viewPager;
        SROverlayTabFragment sROverlayTabFragment = this.srOverlayTabFragment;
        if (sROverlayTabFragment == null || (viewPager = sROverlayTabFragment.getViewPager()) == null) {
            return 0;
        }
        if (Utils.isRtl() && viewPager.getAdapter() != null) {
            i = (viewPager.getAdapter().getCount() - i) - 1;
        }
        int width = viewPager.getWidth();
        return Utils.isRtl() ? (width * i) - i2 : -((width * i) + i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewTranslationX(int i) {
        View viewFindViewById = getView().getRootView().findViewById(R.id.chat_input_frame);
        if (viewFindViewById != null) {
            viewFindViewById.setTranslationX(i);
        }
        this.screenRoomContainer.liveUserContainer.setTranslationX(i);
    }

    @Override // com.narvii.chat.screenroom.VideoButtonClickListener
    public void openPlaylist() {
        ChatFragment chatFragment = getChatFragment();
        if (chatFragment != null) {
            FragmentManager childFragmentManager = chatFragment.getChildFragmentManager();
            if (childFragmentManager.findFragmentByTag(PLAYLIST_FRAGMENT_TAG) == null) {
                PlaylistFragment playlistFragment = new PlaylistFragment();
                playlistFragment.registerPlaylistDismissListener(new PlaylistFragment.PlaylistDismissListener() { // from class: com.narvii.chat.video.fragments.ScreenRoomFragment.5
                    @Override // com.narvii.chat.screenroom.playlist.PlaylistFragment.PlaylistDismissListener
                    public void onDismiss() {
                        ScreenRoomFragment.this.showReputationGuide();
                    }
                });
                childFragmentManager.beginTransaction().setCustomAnimations(R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out).add(R.id.screen_room_playlist, playlistFragment, PLAYLIST_FRAGMENT_TAG).commitAllowingStateLoss();
            }
        }
    }

    private ChatFragment getChatFragment() {
        if (getActivity() instanceof ChatActivity) {
            Fragment rootFragment = ((ChatActivity) getActivity()).getRootFragment();
            if (rootFragment instanceof ChatFragment) {
                ChatFragment chatFragment = (ChatFragment) rootFragment;
                if (!chatFragment.isDestoryed() && !chatFragment.isFinishing()) {
                    return chatFragment;
                }
            }
        }
        return null;
    }

    @Override // com.narvii.chat.screenroom.VideoButtonClickListener, com.narvii.util.RequestOrientationListener
    public void requestOrientation(int i) {
        if (getActivity() == null || !getActivity().hasWindowFocus()) {
            return;
        }
        getActivity().setRequestedOrientation(i);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        VVChatInviteHelper vVChatInviteHelper = this.chatInviteHelper;
        if (vVChatInviteHelper != null) {
            vVChatInviteHelper.handleAddMemberOnActivityResult(i, i2, intent);
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected void onThreadChanged(ChatThread chatThread) {
        super.onThreadChanged(chatThread);
        ScreenRoomMainLayout screenRoomMainLayout = this.screenRoomContainer;
        if (screenRoomMainLayout != null) {
            screenRoomMainLayout.onThreadChanged(chatThread);
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        UserStatusData userStatusData;
        VideoWatchOverlayLayout videoWatchOverlayLayout;
        super.onUserWrapperStatusChanged(signallingChannel, channelUserWrapper);
        if (!this.rtcService.isScreenRoomHost() || (userStatusData = channelUserWrapper.userStatus) == null || (videoWatchOverlayLayout = this.videoWatchOverlayLayout) == null) {
            return;
        }
        videoWatchOverlayLayout.onHostBadConnection(userStatusData.isBadNetwork());
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    public boolean onBackPressed() {
        Fragment fragmentFindFragmentByTag;
        ChatFragment chatFragment = getChatFragment();
        if (chatFragment == null || (fragmentFindFragmentByTag = chatFragment.getChildFragmentManager().findFragmentByTag(PLAYLIST_FRAGMENT_TAG)) == null || !(fragmentFindFragmentByTag instanceof PlaylistFragment)) {
            return false;
        }
        ((PlaylistFragment) fragmentFindFragmentByTag).dismiss();
        return true;
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected int getNormalContentHeight() throws Resources.NotFoundException {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.live_sr_video_height);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin_h);
        int dimensionPixelSize4 = getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin);
        int dimensionPixelSize5 = getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin_bottom);
        int dimensionPixelSize6 = getResources().getDimensionPixelSize(R.dimen.live_mini_indicator_height);
        int dimensionPixelSize7 = dimensionPixelSize + dimensionPixelSize2 + dimensionPixelSize3 + dimensionPixelSize4 + dimensionPixelSize5 + getResources().getDimensionPixelSize(R.dimen.live_chat_indicator_padding);
        if (this.isScreenRoomHost) {
            dimensionPixelSize6 = 0;
        }
        return dimensionPixelSize7 + dimensionPixelSize6;
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected void onLiveContentForceRemoved() {
        Fragment fragmentFindFragmentByTag;
        ChatFragment chatFragment = getChatFragment();
        if (chatFragment != null && (fragmentFindFragmentByTag = chatFragment.getChildFragmentManager().findFragmentByTag(PLAYLIST_FRAGMENT_TAG)) != null && (fragmentFindFragmentByTag instanceof PlaylistFragment)) {
            ((PlaylistFragment) fragmentFindFragmentByTag).removeSelfAndBg();
        }
        Dialog dialog = this.reputationGuideDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
    }
}

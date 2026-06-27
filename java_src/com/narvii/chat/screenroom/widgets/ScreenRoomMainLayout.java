package com.narvii.chat.screenroom.widgets;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.GravityCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.screenroom.VideoButtonClickListener;
import com.narvii.chat.screenroom.widgets.SRLiveUserLayout;
import com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView;
import com.narvii.model.ChatThread;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.RoundFrameLayout;

/* loaded from: classes2.dex */
public class ScreenRoomMainLayout extends FrameLayout {
    private View activingContainer;
    View channelOverlay;
    ViewGroup chatPanelLayout;
    public VideoWatchView hostItem;
    private RoundFrameLayout hostItemContainer;
    boolean isKeyboardVisible;
    private boolean isLandscape;
    SRLiveUserRecyclerView.ParticipantItemClickListener itemClickListener;
    public SRLiveUserLayout liveUserContainer;
    View loading;
    public View miniIndicatorView;
    public View repEarningCompositeView;
    private boolean roleSet;
    private int roomPermissionType;
    private int roomRole;
    private View seekBarContainer;
    private View seekBarPlaceHolder;
    private ChatThread thread;
    SRVideoController videoController;
    private VideoPlayView videoPlayView;
    SRVideoController viewerVideoController;

    public ScreenRoomMainLayout(Context context) {
        this(context, null);
    }

    public ScreenRoomMainLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.roomRole = 0;
    }

    @Override // android.view.View
    protected void onFinishInflate() throws Resources.NotFoundException {
        super.onFinishInflate();
        this.hostItem = (VideoWatchView) findViewById(R.id.video_watch_view);
        this.repEarningCompositeView = findViewById(R.id.reputation_composite);
        this.videoPlayView = (VideoPlayView) findViewById(R.id.video_player_view);
        this.activingContainer = findViewById(R.id.activing_container);
        this.hostItemContainer = (RoundFrameLayout) findViewById(R.id.host_item_container);
        this.videoController = (SRVideoController) findViewById(R.id.video_controller);
        this.seekBarPlaceHolder = this.videoController.findViewById(R.id.volume_seek_bar_placeholder);
        this.seekBarContainer = findViewById(R.id.volume_seek_bar_container);
        this.videoController.setVolumeWrapper(this.seekBarContainer.findViewById(R.id.volume_controller_wrapper));
        this.viewerVideoController = (SRVideoController) findViewById(R.id.viewer_video_controller);
        this.liveUserContainer = (SRLiveUserLayout) findViewById(R.id.live_user_container);
        this.liveUserContainer.setItemClickListener(this.itemClickListener);
        this.liveUserContainer.setHostUpdateListener(new SRLiveUserLayout.HostUpdateListener() { // from class: com.narvii.chat.screenroom.widgets.-$$Lambda$ScreenRoomMainLayout$5wCIJIXtEE0lEowuxMk4UkymaKE
            @Override // com.narvii.chat.screenroom.widgets.SRLiveUserLayout.HostUpdateListener
            public final void onHostUpdated(ChannelUserWrapper channelUserWrapper) {
                this.f$0.lambda$onFinishInflate$0$ScreenRoomMainLayout(channelUserWrapper);
            }
        });
        this.miniIndicatorView = findViewById(R.id.mini_indicator_root);
        this.loading = findViewById(R.id.sr_loading);
        this.channelOverlay = findViewById(R.id.channel_overlay);
        setLandscape(this.isLandscape);
    }

    public /* synthetic */ void lambda$onFinishInflate$0$ScreenRoomMainLayout(ChannelUserWrapper channelUserWrapper) {
        this.hostItem.updateView(channelUserWrapper);
    }

    public void setLiveUserItemClickListener(SRLiveUserRecyclerView.ParticipantItemClickListener participantItemClickListener) {
        this.itemClickListener = participantItemClickListener;
        SRLiveUserLayout sRLiveUserLayout = this.liveUserContainer;
        if (sRLiveUserLayout != null) {
            sRLiveUserLayout.setItemClickListener(participantItemClickListener);
        }
    }

    public void setKeyboardVisible(boolean z) {
        this.isKeyboardVisible = z;
        requestLayout();
    }

    public void setChatPanelLayout(ViewGroup viewGroup) {
        this.chatPanelLayout = viewGroup;
    }

    public void setVideoButtonClickListener(VideoButtonClickListener videoButtonClickListener) {
        this.videoController.setVideoButtonClickListener(videoButtonClickListener);
        this.videoPlayView.setVideoButtonClickListener(videoButtonClickListener);
    }

    public void setUpVideoPlayListener(ScreenRoomService screenRoomService) {
        screenRoomService.addVideoPlayListener(this.videoPlayView);
        screenRoomService.addVideoPlayListener(this.videoController);
    }

    public VideoPlayView getVideoPlayView() {
        return this.videoPlayView;
    }

    public void setLandscape(boolean z) throws Resources.NotFoundException {
        this.isLandscape = z;
        if (z) {
            ViewGroup.LayoutParams layoutParams = this.activingContainer.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            this.activingContainer.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.videoPlayView.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = -1;
            layoutParams2.setMargins(0, 0, 0, 0);
            this.videoPlayView.setLayoutParams(layoutParams2);
            this.videoPlayView.setShouldClip(false);
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.hostItemContainer.getLayoutParams();
            layoutParams3.width = -1;
            layoutParams3.height = -1;
            layoutParams3.setMargins(0, 0, 0, 0);
            this.hostItemContainer.setLayoutParams(layoutParams3);
            this.hostItemContainer.setShouldClip(false);
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.liveUserContainer.getLayoutParams();
            layoutParams4.topMargin = Utils.getStatusBarHeight(getContext());
            layoutParams4.bottomMargin = getContext().getResources().getDimensionPixelSize(R.dimen.sr_menu_height);
            layoutParams4.rightMargin = Utils.dpToPxInt(getContext(), 6.0f);
            layoutParams4.leftMargin = Utils.dpToPxInt(getContext(), 6.0f);
            layoutParams4.width = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height);
            layoutParams4.gravity = GravityCompat.END;
            layoutParams4.height = -1;
            this.liveUserContainer.setLayoutParams(layoutParams4);
            FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) this.repEarningCompositeView.getLayoutParams();
            int iDpToPxInt = Utils.dpToPxInt(getContext(), 12.0f) + getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height);
            if (Utils.isRtl()) {
                layoutParams5.rightMargin = 0;
                layoutParams5.leftMargin = iDpToPxInt;
            } else {
                layoutParams5.rightMargin = iDpToPxInt;
                layoutParams5.leftMargin = 0;
            }
            layoutParams5.bottomMargin = getContext().getResources().getDimensionPixelSize(R.dimen.sr_menu_height);
            layoutParams5.gravity = 8388693;
            this.repEarningCompositeView.setLayoutParams(layoutParams5);
            this.repEarningCompositeView.setVisibility(8);
            updateMiniIndicatorView();
        } else {
            ViewGroup.LayoutParams layoutParams6 = this.activingContainer.getLayoutParams();
            layoutParams6.width = -1;
            layoutParams6.height = -2;
            this.activingContainer.setLayoutParams(layoutParams6);
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin);
            int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin_h);
            int dimensionPixelSize3 = (dimensionPixelSize * 2) + getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height);
            FrameLayout.LayoutParams layoutParams7 = (FrameLayout.LayoutParams) this.videoPlayView.getLayoutParams();
            layoutParams7.width = -1;
            layoutParams7.height = getContext().getResources().getDimensionPixelSize(R.dimen.video_player_height);
            layoutParams7.setMargins(0, dimensionPixelSize3, 0, dimensionPixelSize2);
            this.videoPlayView.setLayoutParams(layoutParams7);
            this.videoPlayView.setShouldClip(true);
            FrameLayout.LayoutParams layoutParams8 = (FrameLayout.LayoutParams) this.hostItemContainer.getLayoutParams();
            layoutParams8.width = -1;
            layoutParams8.height = getContext().getResources().getDimensionPixelSize(R.dimen.video_player_height);
            layoutParams8.setMargins(0, dimensionPixelSize3, 0, dimensionPixelSize2);
            this.hostItemContainer.setLayoutParams(layoutParams8);
            this.hostItemContainer.setShouldClip(true);
            FrameLayout.LayoutParams layoutParams9 = (FrameLayout.LayoutParams) this.liveUserContainer.getLayoutParams();
            layoutParams9.topMargin = dimensionPixelSize;
            layoutParams9.bottomMargin = dimensionPixelSize;
            layoutParams9.width = -1;
            layoutParams9.height = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height);
            this.liveUserContainer.setLayoutParams(layoutParams9);
            FrameLayout.LayoutParams layoutParams10 = (FrameLayout.LayoutParams) this.repEarningCompositeView.getLayoutParams();
            layoutParams10.topMargin = getContext().getResources().getDimensionPixelSize(R.dimen.video_player_height) + dimensionPixelSize3 + dimensionPixelSize2;
            layoutParams10.rightMargin = getContext().getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin);
            layoutParams10.leftMargin = getContext().getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin);
            layoutParams10.gravity = GravityCompat.END;
            this.repEarningCompositeView.setLayoutParams(layoutParams10);
            this.repEarningCompositeView.setVisibility(8);
            FrameLayout.LayoutParams layoutParams11 = (FrameLayout.LayoutParams) this.miniIndicatorView.getLayoutParams();
            layoutParams11.topMargin = dimensionPixelSize3 + getContext().getResources().getDimensionPixelSize(R.dimen.video_player_height) + dimensionPixelSize2;
            layoutParams11.rightMargin = getContext().getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin);
            layoutParams11.leftMargin = getContext().getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin);
            layoutParams11.gravity = GravityCompat.END;
            this.miniIndicatorView.setLayoutParams(layoutParams11);
            updateMiniIndicatorView();
            this.videoController.updateStatusBar(true);
            this.viewerVideoController.updateStatusBar(true);
        }
        this.videoController.setLandScape(z);
        this.viewerVideoController.setLandScape(z);
        this.liveUserContainer.setLandscape(z);
    }

    public void onThreadChanged(ChatThread chatThread) {
        this.thread = chatThread;
    }

    public void configScreenRoomLayout(boolean z, int i) throws Resources.NotFoundException {
        setupRoomRole(z ? 1 : 0);
        setupRoomPermission(i);
    }

    public void setupRoomRole(int i) {
        this.roleSet = true;
        this.roomRole = i;
        this.liveUserContainer.setVisibility(0);
        updateMiniIndicatorView();
        this.loading.setVisibility(8);
        this.seekBarContainer.setVisibility(i == 1 ? 0 : 8);
        this.videoPlayView.setVisibility(i == 1 ? 0 : 8);
        this.hostItemContainer.setVisibility(i == 1 ? 8 : 0);
    }

    private void updateMiniIndicatorView() {
        if (this.miniIndicatorView == null) {
            return;
        }
        ChatThread chatThread = this.thread;
        this.miniIndicatorView.setVisibility((this.roomRole == 1 || (chatThread != null && chatThread.type == 0) || this.isLandscape) ? 8 : 0);
    }

    public void setupRoomPermission(int i) throws Resources.NotFoundException {
        if (this.roomPermissionType == i) {
            return;
        }
        this.roomPermissionType = i;
        this.liveUserContainer.setVisibility(this.roleSet ? 0 : 4);
        this.videoController.updateViews();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.seekBarPlaceHolder != null && this.seekBarContainer != null) {
            int[] iArr = new int[2];
            getLocationInWindow(iArr);
            int[] iArr2 = new int[2];
            this.seekBarPlaceHolder.getLocationInWindow(iArr2);
            int i5 = iArr2[0] - iArr[0];
            int i6 = iArr2[1] - iArr[1];
            this.seekBarContainer.layout(i5, i6, this.seekBarPlaceHolder.getWidth() + i5, this.seekBarPlaceHolder.getHeight() + i6);
        }
        if (this.isLandscape) {
            int keyboardHeight = AndroidBug5497Workaround.getKeyboardHeight((Activity) getContext());
            if (this.isKeyboardVisible) {
                if (keyboardHeight == 0 && (getParent() instanceof View)) {
                    keyboardHeight = getHeight() - ((View) getParent()).getHeight();
                }
                ViewUtils.setMarginBottom(this.channelOverlay, Math.max(0, keyboardHeight));
                return;
            }
            ViewGroup viewGroup = this.chatPanelLayout;
            if (viewGroup != null && viewGroup.isShown() && !isAllPanelHidden()) {
                ViewUtils.setMarginBottom(this.channelOverlay, this.chatPanelLayout.getHeight());
            } else {
                ViewUtils.setMarginBottom(this.channelOverlay, 0);
            }
        }
    }

    private boolean isAllPanelHidden() {
        if (this.chatPanelLayout == null) {
            return false;
        }
        for (int i = 0; i < this.chatPanelLayout.getChildCount(); i++) {
            if (this.chatPanelLayout.getChildAt(i).getVisibility() == 0) {
                return false;
            }
        }
        return true;
    }

    public void updateHosMuteStatus(boolean z) {
        SRLiveUserLayout sRLiveUserLayout = this.liveUserContainer;
        if (sRLiveUserLayout != null) {
            sRLiveUserLayout.updateHostItem();
        }
    }

    public void updateHostVolumeLevel(int i) {
        this.liveUserContainer.updateHostVolume(i);
    }
}

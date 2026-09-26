package com.narvii.chat.screenroom.widgets;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import com.narvii.amino.master.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.screenroom.VideoButtonClickListener;
import com.narvii.model.ChatThread;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.RoundFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
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

    public ScreenRoomMainLayout(@NonNull Context context) {
        this(context, null);
    }

    public VideoPlayView getVideoPlayView() {
        return this.videoPlayView;
    }

    public void onThreadChanged(ChatThread chatThread) {
        this.thread = chatThread;
    }

    public void setChatPanelLayout(ViewGroup viewGroup) {
        this.chatPanelLayout = viewGroup;
    }

    public void setupRoomRole(int i10) {
        this.roleSet = true;
        this.roomRole = i10;
        this.liveUserContainer.setVisibility(0);
        updateMiniIndicatorView();
        this.loading.setVisibility(8);
        this.seekBarContainer.setVisibility(i10 == 1 ? 0 : 8);
        this.videoPlayView.setVisibility(i10 == 1 ? 0 : 8);
        this.hostItemContainer.setVisibility(i10 == 1 ? 8 : 0);
    }

    public ScreenRoomMainLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.roomRole = 0;
    }

    private boolean isAllPanelHidden() {
        if (this.chatPanelLayout == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.chatPanelLayout.getChildCount(); i10++) {
            if (this.chatPanelLayout.getChildAt(i10).getVisibility() == 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishInflate$0(ChannelUserWrapper channelUserWrapper) {
        this.hostItem.updateView(channelUserWrapper);
    }

    private void updateMiniIndicatorView() {
        View view = this.miniIndicatorView;
        if (view == null) {
            return;
        }
        ChatThread chatThread = this.thread;
        view.setVisibility((this.roomRole == 1 || (chatThread != null && chatThread.type == 0) || this.isLandscape) ? 8 : 0);
    }

    public void setKeyboardVisible(boolean z6) {
        this.isKeyboardVisible = z6;
        requestLayout();
    }

    public void setLandscape(boolean z6) {
        this.isLandscape = z6;
        if (z6) {
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
        this.videoController.setLandScape(z6);
        this.viewerVideoController.setLandScape(z6);
        this.liveUserContainer.setLandscape(z6);
    }

    public void setLiveUserItemClickListener(SRLiveUserRecyclerView.ParticipantItemClickListener participantItemClickListener) {
        this.itemClickListener = participantItemClickListener;
        SRLiveUserLayout sRLiveUserLayout = this.liveUserContainer;
        if (sRLiveUserLayout != null) {
            sRLiveUserLayout.setItemClickListener(participantItemClickListener);
        }
    }

    public void setUpVideoPlayListener(ScreenRoomService screenRoomService) {
        screenRoomService.addVideoPlayListener(this.videoPlayView);
        screenRoomService.addVideoPlayListener(this.videoController);
    }

    public void setVideoButtonClickListener(VideoButtonClickListener videoButtonClickListener) {
        this.videoController.setVideoButtonClickListener(videoButtonClickListener);
        this.videoPlayView.setVideoButtonClickListener(videoButtonClickListener);
    }

    public void setupRoomPermission(int i10) {
        if (this.roomPermissionType == i10) {
            return;
        }
        this.roomPermissionType = i10;
        this.liveUserContainer.setVisibility(this.roleSet ? 0 : 4);
        this.videoController.updateViews();
    }

    public void updateHosMuteStatus(boolean z6) {
        SRLiveUserLayout sRLiveUserLayout = this.liveUserContainer;
        if (sRLiveUserLayout != null) {
            sRLiveUserLayout.updateHostItem();
        }
    }

    public void updateHostVolumeLevel(int i10) {
        this.liveUserContainer.updateHostVolume(i10);
    }

    public void configScreenRoomLayout(boolean z6, int i10) {
        setupRoomRole(z6 ? 1 : 0);
        setupRoomPermission(i10);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.hostItem = (VideoWatchView) findViewById(R.id.video_watch_view);
        this.repEarningCompositeView = findViewById(R.id.reputation_composite);
        this.videoPlayView = (VideoPlayView) findViewById(R.id.video_player_view);
        this.activingContainer = findViewById(R.id.activing_container);
        this.hostItemContainer = (RoundFrameLayout) findViewById(R.id.host_item_container);
        SRVideoController sRVideoController = (SRVideoController) findViewById(R.id.video_controller);
        this.videoController = sRVideoController;
        this.seekBarPlaceHolder = sRVideoController.findViewById(R.id.volume_seek_bar_placeholder);
        View viewFindViewById = findViewById(R.id.volume_seek_bar_container);
        this.seekBarContainer = viewFindViewById;
        this.videoController.setVolumeWrapper(viewFindViewById.findViewById(R.id.volume_controller_wrapper));
        this.viewerVideoController = (SRVideoController) findViewById(R.id.viewer_video_controller);
        SRLiveUserLayout sRLiveUserLayout = (SRLiveUserLayout) findViewById(R.id.live_user_container);
        this.liveUserContainer = sRLiveUserLayout;
        sRLiveUserLayout.setItemClickListener(this.itemClickListener);
        this.liveUserContainer.setHostUpdateListener(new SRLiveUserLayout.HostUpdateListener() { // from class: com.narvii.chat.screenroom.widgets.c
            @Override // com.narvii.chat.screenroom.widgets.SRLiveUserLayout.HostUpdateListener
            public final void onHostUpdated(ChannelUserWrapper channelUserWrapper) {
                this.f2043a.lambda$onFinishInflate$0(channelUserWrapper);
            }
        });
        this.miniIndicatorView = findViewById(R.id.mini_indicator_root);
        this.loading = findViewById(R.id.sr_loading);
        this.channelOverlay = findViewById(R.id.channel_overlay);
        setLandscape(this.isLandscape);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (this.seekBarPlaceHolder != null && this.seekBarContainer != null) {
            int[] iArr = new int[2];
            getLocationInWindow(iArr);
            int[] iArr2 = new int[2];
            this.seekBarPlaceHolder.getLocationInWindow(iArr2);
            int i14 = iArr2[0] - iArr[0];
            int i15 = iArr2[1] - iArr[1];
            this.seekBarContainer.layout(i14, i15, this.seekBarPlaceHolder.getWidth() + i14, this.seekBarPlaceHolder.getHeight() + i15);
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
}

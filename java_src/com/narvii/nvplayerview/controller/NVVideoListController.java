package com.narvii.nvplayerview.controller;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.IVideoController;
import com.narvii.widget.EasyButton;
import com.narvii.widget.FullHitFrameLayout;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinningView;

/* loaded from: classes3.dex */
public class NVVideoListController implements IVideoController, View.OnClickListener {
    private static boolean mute = true;
    protected NVContext mContext;
    protected LinearLayout mErrorView;
    protected SpinningView mLoadingView;
    protected INVPlayer mPlayer;
    protected NVVideoView mVideoView;
    protected NVImageView videoPlayButton;
    protected EasyButton volumeBtn;
    protected FullHitFrameLayout volumeContainer;

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void closeVoice() {
        IVideoController.CC.$default$closeVoice(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void destroy() {
        IVideoController.CC.$default$destroy(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ int getProgress() {
        return IVideoController.CC.$default$getProgress(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void onOrientationChanged(int i) {
        IVideoController.CC.$default$onOrientationChanged(this, i);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void onPressBack() {
        IVideoController.CC.$default$onPressBack(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void onRenderedFirstFrame() {
        IVideoController.CC.$default$onRenderedFirstFrame(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void openVoice() {
        IVideoController.CC.$default$openVoice(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void pause() {
        IVideoController.CC.$default$pause(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setAnimating(boolean z) {
        IVideoController.CC.$default$setAnimating(this, z);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setCurrentTime() {
        IVideoController.CC.$default$setCurrentTime(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setOptionMenu() {
        IVideoController.CC.$default$setOptionMenu(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setProgress(int i) {
        IVideoController.CC.$default$setProgress(this, i);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setTotalTime() {
        IVideoController.CC.$default$setTotalTime(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void start() {
        IVideoController.CC.$default$start(this);
    }

    public NVVideoListController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
        this.mContext = nVContext;
        this.mVideoView = nVVideoView;
        this.mPlayer = iNVPlayer;
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public int getLayoutId() {
        return R.layout.activity_exo_feed_list_controller;
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void init() {
        View viewInflate = LayoutInflater.from(this.mContext.getContext()).inflate(getLayoutId(), (ViewGroup) null, false);
        this.mLoadingView = (SpinningView) viewInflate.findViewById(R.id.video_loading);
        this.volumeBtn = (EasyButton) viewInflate.findViewById(R.id.volume_btn);
        this.volumeContainer = (FullHitFrameLayout) viewInflate.findViewById(R.id.volume_container);
        this.videoPlayButton = (NVImageView) viewInflate.findViewById(R.id.video_play_button);
        this.mVideoView.addView(viewInflate);
        this.volumeBtn.setOnClickListener(this);
        this.mErrorView = (LinearLayout) viewInflate.findViewById(R.id.video_error);
        LinearLayout linearLayout = this.mErrorView;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(this);
        }
        setVolumeImg();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        INVPlayer iNVPlayer;
        int id = view.getId();
        if (id == R.id.volume_btn) {
            mute = !mute;
            setVolumeImg();
        } else {
            if (id != R.id.video_error || (iNVPlayer = this.mPlayer) == null) {
                return;
            }
            iNVPlayer.retry();
        }
    }

    protected void setVolumeImg() {
        Resources resources;
        int i;
        this.mPlayer.setVolume(mute ? 0.0f : 1.0f);
        EasyButton easyButton = this.volumeBtn;
        if (mute) {
            resources = this.mContext.getContext().getResources();
            i = R.drawable.ic_volume_off;
        } else {
            resources = this.mContext.getContext().getResources();
            i = R.drawable.ic_volume_on;
        }
        easyButton.setImageDrawable(resources.getDrawable(i));
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onPlayerStateChanged(boolean z, int i) {
        if (i == 1 || i == 2) {
            if (this.mLoadingView.getVisibility() != 0) {
                this.mLoadingView.setVisibility(0);
            }
            LinearLayout linearLayout = this.mErrorView;
            if (linearLayout == null || linearLayout.getVisibility() != 0) {
                return;
            }
            this.mErrorView.setVisibility(4);
            return;
        }
        if (i != 3 || this.mLoadingView.getVisibility() == 4) {
            return;
        }
        this.mLoadingView.setVisibility(4);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onPlayerError(NVVideoException nVVideoException) {
        if (this.mErrorView == null || this.mPlayer.isPlaying()) {
            return;
        }
        this.mErrorView.setVisibility(0);
        this.mLoadingView.setVisibility(4);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void resume() {
        setVolumeImg();
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onActiveChanged(boolean z) {
        if (z) {
            setVolumeImg();
        }
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void setUIVisibility(int i) {
        this.volumeBtn.setVisibility(i);
    }

    public void setVolumeBtnTop(boolean z) {
        FullHitFrameLayout fullHitFrameLayout = this.volumeContainer;
        if (fullHitFrameLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) fullHitFrameLayout.getLayoutParams();
        if (z) {
            layoutParams.gravity = 8388661;
        } else {
            layoutParams.gravity = 8388693;
        }
        this.volumeContainer.setLayoutParams(layoutParams);
    }
}

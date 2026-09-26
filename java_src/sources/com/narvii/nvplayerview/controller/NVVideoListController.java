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
import com.narvii.widget.EasyButton;
import com.narvii.widget.FullHitFrameLayout;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
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
        a.a(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void destroy() {
        a.b(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public int getLayoutId() {
        return R.layout.activity_exo_feed_list_controller;
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ int getProgress() {
        return a.c(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void onOrientationChanged(int i10) {
        a.e(this, i10);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onPlayerStateChanged(boolean z6, int i10) {
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3 || this.mLoadingView.getVisibility() == 4) {
                return;
            }
            this.mLoadingView.setVisibility(4);
            return;
        }
        if (this.mLoadingView.getVisibility() != 0) {
            this.mLoadingView.setVisibility(0);
        }
        LinearLayout linearLayout = this.mErrorView;
        if (linearLayout == null || linearLayout.getVisibility() != 0) {
            return;
        }
        this.mErrorView.setVisibility(4);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void onPressBack() {
        a.h(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void onRenderedFirstFrame() {
        a.i(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void openVoice() {
        a.j(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void pause() {
        a.k(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setAnimating(boolean z6) {
        a.m(this, z6);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setCurrentTime() {
        a.n(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setOptionMenu() {
        a.o(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setProgress(int i10) {
        a.p(this, i10);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setTotalTime() {
        a.q(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void start() {
        a.s(this);
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
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.video_error);
        this.mErrorView = linearLayout;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(this);
        }
        setVolumeImg();
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onActiveChanged(boolean z6) {
        if (z6) {
            setVolumeImg();
        }
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
    public void setUIVisibility(int i10) {
        this.volumeBtn.setVisibility(i10);
    }

    public void setVolumeBtnTop(boolean z6) {
        FullHitFrameLayout fullHitFrameLayout = this.volumeContainer;
        if (fullHitFrameLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) fullHitFrameLayout.getLayoutParams();
        if (z6) {
            layoutParams.gravity = 8388661;
        } else {
            layoutParams.gravity = 8388693;
        }
        this.volumeContainer.setLayoutParams(layoutParams);
    }

    protected void setVolumeImg() {
        Resources resources;
        int i10;
        this.mPlayer.setVolume(mute ? 0.0f : 1.0f);
        EasyButton easyButton = this.volumeBtn;
        if (mute) {
            resources = this.mContext.getContext().getResources();
            i10 = R.drawable.ic_volume_off;
        } else {
            resources = this.mContext.getContext().getResources();
            i10 = R.drawable.ic_volume_on;
        }
        easyButton.setImageDrawable(resources.getDrawable(i10));
    }

    public NVVideoListController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
        this.mContext = nVContext;
        this.mVideoView = nVVideoView;
        this.mPlayer = iNVPlayer;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        INVPlayer iNVPlayer;
        int id = view.getId();
        if (id == R.id.volume_btn) {
            mute = !mute;
            setVolumeImg();
        } else if (id == R.id.video_error && (iNVPlayer = this.mPlayer) != null) {
            iNVPlayer.retry();
        }
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void resume() {
        setVolumeImg();
    }
}

package com.narvii.nvplayer.controller;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.NVVideoListController;
import com.narvii.widget.EasyButton;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public class FeedDetailVideoController extends NVVideoListController {
    private EasyButton shareBtn;

    @Override // com.narvii.nvplayerview.controller.NVVideoListController, com.narvii.nvplayerview.controller.IVideoController
    public void init() {
        View viewInflate = LayoutInflater.from(this.mContext.getContext()).inflate(getLayoutId(), (ViewGroup) null, false);
        this.mLoadingView = (SpinningView) viewInflate.findViewById(R.id.video_loading);
        this.volumeBtn = (EasyButton) viewInflate.findViewById(R.id.volume_btn);
        this.mVideoView.getContainer().addView(viewInflate);
        this.volumeBtn.setOnClickListener(this);
        setVolumeImg();
        EasyButton easyButton = (EasyButton) viewInflate.findViewById(R.id.share_btn);
        this.shareBtn = easyButton;
        easyButton.setVisibility(4);
    }

    @Override // com.narvii.nvplayerview.controller.NVVideoListController, com.narvii.nvplayerview.controller.IVideoController
    public void setUIVisibility(int i10) {
        this.volumeBtn.setVisibility(i10);
    }

    public FeedDetailVideoController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
        super(context, nVContext, nVVideoView, iNVPlayer);
    }
}

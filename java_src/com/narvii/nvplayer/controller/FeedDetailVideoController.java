package com.narvii.nvplayer.controller;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.NVVideoListController;
import com.narvii.widget.EasyButton;
import com.narvii.widget.SpinningView;

/* loaded from: classes3.dex */
public class FeedDetailVideoController extends NVVideoListController {
    private EasyButton shareBtn;

    public FeedDetailVideoController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
        super(context, nVContext, nVVideoView, iNVPlayer);
    }

    @Override // com.narvii.nvplayerview.controller.NVVideoListController, com.narvii.nvplayerview.controller.IVideoController
    public void init() {
        View viewInflate = LayoutInflater.from(this.mContext.getContext()).inflate(getLayoutId(), (ViewGroup) null, false);
        this.mLoadingView = (SpinningView) viewInflate.findViewById(R.id.video_loading);
        this.volumeBtn = (EasyButton) viewInflate.findViewById(R.id.volume_btn);
        this.mVideoView.getContainer().addView(viewInflate);
        this.volumeBtn.setOnClickListener(this);
        setVolumeImg();
        this.shareBtn = (EasyButton) viewInflate.findViewById(R.id.share_btn);
        this.shareBtn.setVisibility(4);
    }

    @Override // com.narvii.nvplayerview.controller.NVVideoListController, com.narvii.nvplayerview.controller.IVideoController
    public void setUIVisibility(int i) {
        this.volumeBtn.setVisibility(i);
    }
}

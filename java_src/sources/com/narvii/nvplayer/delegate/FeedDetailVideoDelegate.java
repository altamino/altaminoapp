package com.narvii.nvplayer.delegate;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.controller.FeedDetailVideoController;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.IVideoController;
import com.narvii.nvplayerview.delegate.IVideoListView;
import com.narvii.util.YoutubeUtils;

/* JADX INFO: loaded from: classes10.dex */
public class FeedDetailVideoDelegate extends NVFeedListVideoDelegate {
    @Override // com.narvii.nvplayer.delegate.NVFeedListVideoDelegate
    protected int getCaptionId() {
        return R.id.text;
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected boolean showBlurAsBackground() {
        return false;
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected IVideoController initVideoController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
        return new FeedDetailVideoController(context, nVContext, nVVideoView, iNVPlayer);
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected void initVideoView() {
        this.mVideoView.init(this, 1);
    }

    public FeedDetailVideoDelegate(NVContext nVContext, Activity activity) {
        super(nVContext, activity);
        this.areaName = "EngagementArea";
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate, com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onListViewCreated(IVideoListView iVideoListView) {
        super.onListViewCreated(iVideoListView);
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    public void refreshPlayerPosition() {
        int i10;
        super.refreshPlayerPosition();
        if (this.playerPositionChanged && (i10 = this.mPlayerPosition) != -1) {
            IVideoListView iVideoListView = this.listView;
            View childAt = iVideoListView.getChildAt(i10 - iVideoListView.getFirstVisiblePosition());
            if (childAt == null || childAt.getTag(R.id.video_tag_view_id) == null || ((Integer) childAt.getTag(R.id.video_tag_view_id)).intValue() == 0 || this.mVideoView == null) {
                return;
            }
            if (YoutubeUtils.isYtvScheme(this.mPlayer.getPlayingUrl())) {
                this.mVideoView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            } else {
                this.mVideoView.setBackgroundColor(0);
            }
        }
    }
}

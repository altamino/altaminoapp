package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.screenroom.SRHostAudioOnlyListener;
import com.narvii.chat.screenroom.SRHostLoadingListener;
import com.narvii.chat.screenroom.playlist.PlayListChangeListener;
import com.narvii.chat.screenroom.playlist.PlaylistUtils;
import com.narvii.chat.screenroom.widgets.SRVideoController;
import com.narvii.model.PlayList;
import com.narvii.model.PlayListItem;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class VideoWatchOverlayLayout extends FrameLayout implements PlayListChangeListener, SRHostLoadingListener, SRVideoController.VideoControllerVisibleChangeListener, SRHostAudioOnlyListener {
    boolean badConnection;
    PlayListItem current;
    boolean isAudioOnly;
    boolean loading;
    View loadingLayout;
    int playStatus;
    SRVideoController srVideoController;
    View statusLayout;
    TextView statusView;
    NVImageView thumbnail;

    public VideoWatchOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.loading = false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.srVideoController = (SRVideoController) findViewById(R.id.viewer_video_controller);
        this.srVideoController.addControllerVisibleChangeListener(this);
        this.statusView = (TextView) findViewById(R.id.viewer_play_status);
        this.statusLayout = findViewById(R.id.viewer_play_status_container);
        this.thumbnail = (NVImageView) findViewById(R.id.viewer_thumbnail);
        this.loadingLayout = findViewById(R.id.loading_layout);
    }

    @Override // com.narvii.chat.screenroom.playlist.PlayListChangeListener
    public void onPlayListChanged(PlayList playList) throws Throwable {
        this.playStatus = playList.currentItemStatus;
        this.current = playList.getCurrentPlayItem();
        this.srVideoController.onPlayItemChangedForViewer(this.current);
        updateThumbnail();
        updateStatus();
    }

    public void updateThumbnail() throws Throwable {
        this.thumbnail.setVisibility(8);
        if (this.current != null) {
            if (this.playStatus == 1 || this.isAudioOnly) {
                PlaylistUtils.setThumbnailImage(getContext(), this.thumbnail, this.current);
                this.thumbnail.setVisibility(0);
            }
        }
    }

    private void updateLoadingView() {
        this.loadingLayout.setVisibility(this.current != null && this.playStatus == 2 && this.loading && !this.isAudioOnly && !this.srVideoController.isShowing() ? 0 : 8);
    }

    private void updateStatus() {
        String string;
        if (this.current != null) {
            int i = this.playStatus;
            if (i == 3) {
                string = getContext().getString(R.string.paused_by_the_host);
            } else if (i == 1) {
                string = getContext().getString(R.string.waiting_host_to_start);
            } else {
                string = (i == 2 && this.badConnection) ? getContext().getString(R.string.bad_connection) : null;
            }
        } else {
            string = getContext().getString(R.string.waiting_host_to_start);
        }
        this.statusView.setText(string);
        this.statusLayout.setVisibility(string != null ? 0 : 8);
        updateLoadingView();
    }

    @Override // com.narvii.chat.screenroom.SRHostLoadingListener
    public void onHostLoading(boolean z) {
        this.loading = z;
        updateStatus();
    }

    public void onHostBadConnection(boolean z) {
        this.badConnection = z;
        updateStatus();
    }

    @Override // com.narvii.chat.screenroom.widgets.SRVideoController.VideoControllerVisibleChangeListener
    public void onVideoControllerVisibleChanged(boolean z) {
        updateLoadingView();
    }

    @Override // com.narvii.chat.screenroom.SRHostAudioOnlyListener
    public void onHostAudioOnlyChanged(boolean z) throws Throwable {
        this.isAudioOnly = z;
        updateThumbnail();
    }
}

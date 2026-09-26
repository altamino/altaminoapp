package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.chat.screenroom.SRHostAudioOnlyListener;
import com.narvii.chat.screenroom.SRHostLoadingListener;
import com.narvii.chat.screenroom.playlist.PlayListChangeListener;
import com.narvii.chat.screenroom.playlist.PlaylistUtils;
import com.narvii.model.PlayList;
import com.narvii.model.PlayListItem;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes2.dex */
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

    private void updateLoadingView() {
        this.loadingLayout.setVisibility(this.current != null && this.playStatus == 2 && this.loading && !this.isAudioOnly && !this.srVideoController.isShowing() ? 0 : 8);
    }

    private void updateStatus() {
        String string;
        if (this.current != null) {
            int i10 = this.playStatus;
            if (i10 == 3) {
                string = getContext().getString(R.string.paused_by_the_host);
            } else if (i10 == 1) {
                string = getContext().getString(R.string.waiting_host_to_start);
            } else {
                string = (i10 == 2 && this.badConnection) ? getContext().getString(R.string.bad_connection) : null;
            }
        } else {
            string = getContext().getString(R.string.waiting_host_to_start);
        }
        this.statusView.setText(string);
        this.statusLayout.setVisibility(string != null ? 0 : 8);
        updateLoadingView();
    }

    @Override // com.narvii.chat.screenroom.SRHostAudioOnlyListener
    public void onHostAudioOnlyChanged(boolean z6) throws Throwable {
        this.isAudioOnly = z6;
        updateThumbnail();
    }

    public void onHostBadConnection(boolean z6) {
        this.badConnection = z6;
        updateStatus();
    }

    @Override // com.narvii.chat.screenroom.SRHostLoadingListener
    public void onHostLoading(boolean z6) {
        this.loading = z6;
        updateStatus();
    }

    @Override // com.narvii.chat.screenroom.playlist.PlayListChangeListener
    public void onPlayListChanged(PlayList playList) throws Throwable {
        this.playStatus = playList.currentItemStatus;
        PlayListItem currentPlayItem = playList.getCurrentPlayItem();
        this.current = currentPlayItem;
        this.srVideoController.onPlayItemChangedForViewer(currentPlayItem);
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

    public VideoWatchOverlayLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.loading = false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        SRVideoController sRVideoController = (SRVideoController) findViewById(R.id.viewer_video_controller);
        this.srVideoController = sRVideoController;
        sRVideoController.addControllerVisibleChangeListener(this);
        this.statusView = (TextView) findViewById(R.id.viewer_play_status);
        this.statusLayout = findViewById(R.id.viewer_play_status_container);
        this.thumbnail = (NVImageView) findViewById(R.id.viewer_thumbnail);
        this.loadingLayout = findViewById(R.id.loading_layout);
    }

    @Override // com.narvii.chat.screenroom.widgets.SRVideoController.VideoControllerVisibleChangeListener
    public void onVideoControllerVisibleChanged(boolean z6) {
        updateLoadingView();
    }
}

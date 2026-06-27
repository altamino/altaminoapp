package com.narvii.chat.video.floating;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceView;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.screenroom.SRHostAudioOnlyListener;
import com.narvii.chat.screenroom.SRHostLoadingListener;
import com.narvii.chat.screenroom.VideoPlayListener;
import com.narvii.chat.screenroom.playlist.PlayListChangeListener;
import com.narvii.chat.screenroom.playlist.PlaylistUtils;
import com.narvii.chat.screenroom.widgets.GLVideoView;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.model.PlayList;
import com.narvii.model.PlayListItem;
import com.narvii.util.ViewUtils;
import com.narvii.video.ui.UserStatusData;
import com.narvii.video.ui.floating.FloatingWindowBaseLayout;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class SRFloatingLayout extends FloatingWindowBaseLayout implements PlayListChangeListener, VideoPlayListener, SRHostLoadingListener, SRHostAudioOnlyListener {
    FrameLayout HostViewContainer;
    boolean badConnection;
    PlayListItem current;
    boolean ended;
    boolean isAudioOnly;
    boolean isHost;
    boolean loading;
    FrameLayout mineSurfaceContainer;
    int playStatus;
    FrameLayout playerContainer;
    TextView statusView;
    NVImageView thumbnail;
    boolean userSeeked;

    public SRFloatingLayout(Context context) {
        super(context);
        this.loading = false;
    }

    public SRFloatingLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.loading = false;
    }

    @Override // com.narvii.video.ui.floating.FloatingWindowBaseLayout, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.HostViewContainer = (FrameLayout) findViewById(R.id.sr_floating_container);
        this.playerContainer = (FrameLayout) findViewById(R.id.video_player_container);
        this.statusView = (TextView) findViewById(R.id.viewer_play_status);
        this.thumbnail = (NVImageView) findViewById(R.id.viewer_thumbnail);
        this.mineSurfaceContainer = (FrameLayout) findViewById(R.id.mine_surface_container);
    }

    public void setUpHostView(GLVideoView gLVideoView) {
        this.isHost = true;
        if (gLVideoView != null) {
            ViewUtils.removeFromParent(gLVideoView);
            this.playerContainer.removeAllViews();
            this.playerContainer.addView(gLVideoView);
        }
        this.playerContainer.setVisibility(0);
    }

    public void setUpViewerView(SurfaceView surfaceView, SurfaceView surfaceView2) {
        this.isHost = false;
        this.HostViewContainer.removeAllViews();
        if (surfaceView != null) {
            ViewUtils.removeFromParent(surfaceView);
            this.HostViewContainer.addView(surfaceView);
        }
        if (surfaceView2 != null) {
            ViewUtils.removeFromParent(surfaceView2);
            this.mineSurfaceContainer.addView(surfaceView2);
        }
        this.HostViewContainer.setVisibility(0);
    }

    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        UserStatusData userStatusData;
        SurfaceView surfaceView;
        ChannelUser channelUser;
        if (this.isHost) {
            return;
        }
        if (!((channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true) || (userStatusData = channelUserWrapper.userStatus) == null || (surfaceView = userStatusData.mView) == null) {
            return;
        }
        if (this.HostViewContainer.getChildCount() == 0 || (this.HostViewContainer.getChildCount() == 1 && this.HostViewContainer.getChildAt(0) != surfaceView)) {
            this.HostViewContainer.removeAllViews();
            ViewUtils.removeFromParent(surfaceView);
            this.HostViewContainer.addView(surfaceView);
        }
    }

    @Override // com.narvii.chat.screenroom.playlist.PlayListChangeListener
    public void onPlayListChanged(PlayList playList) throws Throwable {
        this.current = playList.getCurrentPlayItem();
        this.playStatus = playList.currentItemStatus;
        updateThumbnail();
        updateStatus();
    }

    private void updateThumbnail() throws Throwable {
        this.thumbnail.setVisibility(8);
        if (!this.userSeeked && this.current != null && this.playStatus == 1) {
            PlaylistUtils.setThumbnailImage(getContext(), this.thumbnail, this.current);
            this.thumbnail.setVisibility(0);
            return;
        }
        PlayListItem playListItem = this.current;
        if (playListItem != null) {
            if (this.isAudioOnly || playListItem.type == 3) {
                PlaylistUtils.setThumbnailImage(getContext(), this.thumbnail, this.current);
                this.thumbnail.setVisibility(0);
            }
        }
    }

    @Override // com.narvii.chat.screenroom.VideoPlayListener
    public void onPlayListChanged(PlayList playList, boolean z, boolean z2) throws Throwable {
        onPlayListChanged(playList);
    }

    public void notifyForceQuit(int i) {
        this.ended = true;
        updateStatus();
    }

    @Override // com.narvii.chat.screenroom.SRHostLoadingListener
    public void onHostLoading(boolean z) {
        this.loading = z;
        updateStatus();
    }

    private void updateStatus() {
        if (this.ended) {
            this.statusView.setText(R.string.chat_ended);
            return;
        }
        String string = null;
        if (this.current != null) {
            int i = this.playStatus;
            if (i == 3) {
                string = getContext().getString(R.string.paused);
            } else if (i == 1) {
                string = getContext().getString(R.string.not_started);
            } else if (i == 2) {
                if (this.badConnection) {
                    string = getContext().getString(R.string.bad_connection);
                } else if (this.loading && !this.isAudioOnly) {
                    string = getContext().getString(R.string.loading);
                }
            }
        } else if (this.isHost) {
            string = getContext().getString(R.string.no_video);
        } else {
            string = getContext().getString(R.string.not_started);
        }
        this.statusView.setText(string);
    }

    public void onHostBadConnection(boolean z) {
        this.badConnection = z;
        updateStatus();
    }

    @Override // com.narvii.chat.screenroom.VideoPlayListener
    public void onBuffering(boolean z) {
        this.loading = z;
        updateStatus();
    }

    @Override // com.narvii.chat.screenroom.VideoPlayListener
    public void onUserSeeked(boolean z) throws Throwable {
        this.userSeeked = z;
        updateThumbnail();
    }

    @Override // com.narvii.chat.screenroom.SRHostAudioOnlyListener
    public void onHostAudioOnlyChanged(boolean z) throws Throwable {
        this.isAudioOnly = z;
        updateThumbnail();
    }
}

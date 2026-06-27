package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.screenroom.VideoButtonClickListener;
import com.narvii.chat.screenroom.VideoPlayListener;
import com.narvii.chat.screenroom.playlist.PlaylistUtils;
import com.narvii.chat.screenroom.widgets.SRVideoController;
import com.narvii.model.PlayList;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.RoundFrameLayout;

/* loaded from: classes2.dex */
public class VideoPlayView extends RoundFrameLayout implements VideoPlayListener, SRVideoController.VideoControllerVisibleChangeListener {
    public View addVideoView;
    boolean buffering;
    private GLVideoView glVideoView;
    public View loadingLayout;
    PlayList playList;
    ScreenRoomService screenRoomService;
    public NVImageView thumbnail;
    boolean userSeeked;
    VideoButtonClickListener videoButtonClickListener;
    public SRVideoController videoController;

    public VideoPlayView(Context context) {
        this(context, null);
    }

    public VideoPlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(context, R.layout.base_video_play_container, this);
        this.screenRoomService = (ScreenRoomService) Utils.getNVContext(getContext()).getService("screenRoom");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.VideoPlayView);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        ViewUtils.visible(findViewById(R.id.video_play_overlay), !z);
    }

    public void setVideoButtonClickListener(VideoButtonClickListener videoButtonClickListener) {
        this.videoButtonClickListener = videoButtonClickListener;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.loadingLayout = findViewById(R.id.loading_layout);
        this.thumbnail = (NVImageView) findViewById(R.id.thumbnail);
        this.videoController = (SRVideoController) findViewById(R.id.video_controller);
        this.videoController.addControllerVisibleChangeListener(this);
        this.addVideoView = findViewById(R.id.add_video_layout);
        this.addVideoView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.VideoPlayView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoButtonClickListener videoButtonClickListener = VideoPlayView.this.videoButtonClickListener;
                if (videoButtonClickListener != null) {
                    videoButtonClickListener.openPlaylist();
                }
            }
        });
    }

    public void setGlVideoView(GLVideoView gLVideoView, boolean z) {
        this.glVideoView = gLVideoView;
        ViewUtils.removeFromParent(gLVideoView);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.gl_video_container);
        frameLayout.removeAllViews();
        frameLayout.addView(gLVideoView);
        gLVideoView.setMediaController(this.videoController);
        if (z) {
            this.videoController.show();
        }
    }

    @Override // com.narvii.chat.screenroom.VideoPlayListener
    public void onPlayListChanged(PlayList playList, boolean z, boolean z2) throws Throwable {
        this.playList = playList;
        updateViews();
    }

    private void updateViews() throws Throwable {
        PlayList playList;
        PlayList playList2 = this.playList;
        if (playList2 != null) {
            if (!this.userSeeked && playList2.currentItemStatus == 1 && !playList2.itemList().isEmpty() && this.playList.getCurrentPlayItem() != null) {
                this.thumbnail.setVisibility(0);
                PlaylistUtils.setThumbnailImage(getContext(), this.thumbnail, this.playList.getCurrentPlayItem());
            } else if (!this.playList.itemList().isEmpty() && this.playList.getCurrentPlayItem() != null && this.playList.getCurrentPlayItem().type == 3) {
                this.thumbnail.setVisibility(0);
                PlaylistUtils.setThumbnailImage(getContext(), this.thumbnail, this.playList.getCurrentPlayItem());
            } else {
                this.thumbnail.setVisibility(8);
            }
            ViewUtils.visible(this.addVideoView, this.playList.itemList().isEmpty());
            ViewUtils.visible(this.glVideoView, !this.playList.itemList().isEmpty());
        }
        if ((!this.buffering || (playList = this.playList) == null || playList.getCurrentPlayItem() == null || this.playList.currentItemStatus != 2 || this.videoController.isShowing()) ? false : true) {
            this.loadingLayout.setVisibility(0);
            this.videoController.playButtonsLayout.setVisibility(4);
            this.videoController.updatePausePlay();
        } else {
            this.loadingLayout.setVisibility(4);
            this.videoController.playButtonsLayout.setVisibility(0);
        }
    }

    @Override // com.narvii.chat.screenroom.VideoPlayListener
    public void onBuffering(boolean z) throws Throwable {
        this.buffering = z;
        updateViews();
    }

    @Override // com.narvii.chat.screenroom.VideoPlayListener
    public void onUserSeeked(boolean z) throws Throwable {
        this.userSeeked = z;
        updateViews();
    }

    @Override // com.narvii.chat.screenroom.widgets.SRVideoController.VideoControllerVisibleChangeListener
    public void onVideoControllerVisibleChanged(boolean z) throws Throwable {
        updateViews();
    }
}

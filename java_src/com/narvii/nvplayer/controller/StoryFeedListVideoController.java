package com.narvii.nvplayer.controller;

import android.content.Context;
import com.narvii.amino.mastes.R;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.IVideoController;

/* loaded from: classes3.dex */
public class StoryFeedListVideoController implements IVideoController {
    INVPlayer player;

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void closeVoice() {
        IVideoController.CC.$default$closeVoice(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void destroy() {
        IVideoController.CC.$default$destroy(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public int getLayoutId() {
        return R.layout.story_feed_list_video_controller;
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
    public /* synthetic */ void onPlayerError(NVVideoException nVVideoException) {
        IVideoController.CC.$default$onPlayerError(this, nVVideoException);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onPlayerStateChanged(boolean z, int i) {
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
    public /* synthetic */ void setUIVisibility(int i) {
        IVideoController.CC.$default$setUIVisibility(this, i);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void start() {
        IVideoController.CC.$default$start(this);
    }

    public StoryFeedListVideoController(Context context, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
        this.player = iNVPlayer;
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void init() {
        this.player.setVolume(0.0f);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void resume() {
        this.player.setVolume(0.0f);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onActiveChanged(boolean z) {
        if (z) {
            this.player.setVolume(0.0f);
        }
    }
}

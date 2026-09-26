package com.narvii.nvplayerview.controller;

import com.narvii.nvplayer.NVVideoException;

/* JADX INFO: loaded from: classes8.dex */
public interface IVideoController {
    void closeVoice();

    void destroy();

    int getLayoutId();

    int getProgress();

    void init();

    void onActiveChanged(boolean z6);

    void onOrientationChanged(int i10);

    void onPlayerError(NVVideoException nVVideoException);

    void onPlayerStateChanged(boolean z6, int i10);

    void onPressBack();

    void onRenderedFirstFrame();

    void openVoice();

    void pause();

    void resume();

    void setAnimating(boolean z6);

    void setCurrentTime();

    void setOptionMenu();

    void setProgress(int i10);

    void setTotalTime();

    void setUIVisibility(int i10);

    void start();
}

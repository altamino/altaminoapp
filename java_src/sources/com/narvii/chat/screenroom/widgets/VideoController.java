package com.narvii.chat.screenroom.widgets;

import com.narvii.chat.screenroom.MediaPlayerControl;

/* JADX INFO: loaded from: classes5.dex */
public interface VideoController {
    void hide();

    boolean isShowing();

    void setEnabled(boolean z6);

    void setMediaPlayer(MediaPlayerControl mediaPlayerControl);

    void show();

    void show(int i10);
}

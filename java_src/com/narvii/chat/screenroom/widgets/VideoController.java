package com.narvii.chat.screenroom.widgets;

import com.narvii.chat.screenroom.MediaPlayerControl;

/* loaded from: classes2.dex */
public interface VideoController {
    void hide();

    boolean isShowing();

    void setEnabled(boolean z);

    void setMediaPlayer(MediaPlayerControl mediaPlayerControl);

    void show();

    void show(int i);
}

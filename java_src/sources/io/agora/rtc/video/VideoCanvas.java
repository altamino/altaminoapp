package io.agora.rtc.video;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public class VideoCanvas {

    @Deprecated
    public static final int RENDER_MODE_ADAPTIVE = 3;
    public static final int RENDER_MODE_FILL = 4;
    public static final int RENDER_MODE_FIT = 2;
    public static final int RENDER_MODE_HIDDEN = 1;
    public String channelId;
    public int mirrorMode;
    public int renderMode;
    public int uid;
    public View view;

    public VideoCanvas(View view) {
        this.view = view;
        this.renderMode = 1;
        this.mirrorMode = 0;
        this.uid = 0;
    }

    public VideoCanvas(View view, int renderMode, int uid) {
        this.view = view;
        this.renderMode = renderMode;
        this.uid = uid;
        this.mirrorMode = 0;
    }

    public VideoCanvas(View view, int renderMode, String channelId, int uid) {
        this.view = view;
        this.renderMode = renderMode;
        this.channelId = channelId;
        this.uid = uid;
        this.mirrorMode = 0;
    }

    public VideoCanvas(View view, int renderMode, int uid, int mirrorMode) {
        this.view = view;
        this.renderMode = renderMode;
        this.uid = uid;
        this.mirrorMode = mirrorMode;
    }

    public VideoCanvas(View view, int renderMode, String channelId, int uid, int mirrorMode) {
        this.view = view;
        this.renderMode = renderMode;
        this.mirrorMode = mirrorMode;
        this.channelId = channelId;
        this.uid = uid;
    }
}

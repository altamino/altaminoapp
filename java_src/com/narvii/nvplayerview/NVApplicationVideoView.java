package com.narvii.nvplayerview;

import android.app.Application;
import android.content.Context;
import android.util.AttributeSet;

/* loaded from: classes3.dex */
public class NVApplicationVideoView extends NVVideoView {
    private static NVApplicationVideoView videoView;

    public static NVApplicationVideoView getInstance(Application application) {
        if (videoView == null) {
            videoView = new NVApplicationVideoView(application);
        }
        return videoView;
    }

    public NVApplicationVideoView(Context context) {
        super(context);
    }

    public NVApplicationVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NVApplicationVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}

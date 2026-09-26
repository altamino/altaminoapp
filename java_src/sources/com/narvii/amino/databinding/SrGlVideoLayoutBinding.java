package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.chat.screenroom.widgets.GLVideoView;

/* JADX INFO: loaded from: classes8.dex */
public final class SrGlVideoLayoutBinding implements ViewBinding {

    @NonNull
    public final GLVideoView glVideo;

    @NonNull
    private final GLVideoView rootView;

    @NonNull
    public static SrGlVideoLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public GLVideoView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SrGlVideoLayoutBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        GLVideoView gLVideoView = (GLVideoView) view;
        return new SrGlVideoLayoutBinding(gLVideoView, gLVideoView);
    }

    @NonNull
    public static SrGlVideoLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sr_gl_video_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SrGlVideoLayoutBinding(@NonNull GLVideoView gLVideoView, @NonNull GLVideoView gLVideoView2) {
        this.rootView = gLVideoView;
        this.glVideo = gLVideoView2;
    }
}

package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.video.layout.VideoMainContainer;
import com.narvii.chat.video.layout.VideoParticipantLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class ContainerVideoMainBinding implements ViewBinding {

    @NonNull
    public final FrameLayout focusedContainer;

    @NonNull
    public final VideoMainContainer participantContainer;

    @NonNull
    private final VideoMainContainer rootView;

    @NonNull
    public final VideoParticipantLayout videoLayout;

    @NonNull
    public static ContainerVideoMainBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public VideoMainContainer getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ContainerVideoMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.container_video_main, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ContainerVideoMainBinding(@NonNull VideoMainContainer videoMainContainer, @NonNull FrameLayout frameLayout, @NonNull VideoMainContainer videoMainContainer2, @NonNull VideoParticipantLayout videoParticipantLayout) {
        this.rootView = videoMainContainer;
        this.focusedContainer = frameLayout;
        this.participantContainer = videoMainContainer2;
        this.videoLayout = videoParticipantLayout;
    }

    @NonNull
    public static ContainerVideoMainBinding bind(@NonNull View view) {
        int i10 = R.id.focused_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.focused_container);
        if (frameLayout != null) {
            VideoMainContainer videoMainContainer = (VideoMainContainer) view;
            VideoParticipantLayout videoParticipantLayout = (VideoParticipantLayout) ViewBindings.a(view, R.id.video_layout);
            if (videoParticipantLayout != null) {
                return new ContainerVideoMainBinding(videoMainContainer, frameLayout, videoMainContainer, videoParticipantLayout);
            }
            i10 = R.id.video_layout;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

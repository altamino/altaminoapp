package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.video.floating.VideoFloatingLayout;
import com.narvii.chat.video.layout.LiveCallingLayout;
import com.narvii.chat.video.layout.VideoMainLayout;
import com.narvii.chat.video.layout.VideoParticipantLayout;

/* JADX INFO: loaded from: classes11.dex */
public final class FloatingVideoWindowBinding implements ViewBinding {

    @NonNull
    public final ImageView close;

    @NonNull
    public final TextView ended;

    @NonNull
    private final VideoFloatingLayout rootView;

    @NonNull
    public final LiveCallingLayout videoCallLayout;

    @NonNull
    public final VideoParticipantLayout videoMinMain;

    @NonNull
    public final VideoMainLayout videoMiniContainer;

    @NonNull
    public final TextView warning;

    @NonNull
    public static FloatingVideoWindowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public VideoFloatingLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FloatingVideoWindowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.floating_video_window, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FloatingVideoWindowBinding(@NonNull VideoFloatingLayout videoFloatingLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LiveCallingLayout liveCallingLayout, @NonNull VideoParticipantLayout videoParticipantLayout, @NonNull VideoMainLayout videoMainLayout, @NonNull TextView textView2) {
        this.rootView = videoFloatingLayout;
        this.close = imageView;
        this.ended = textView;
        this.videoCallLayout = liveCallingLayout;
        this.videoMinMain = videoParticipantLayout;
        this.videoMiniContainer = videoMainLayout;
        this.warning = textView2;
    }

    @NonNull
    public static FloatingVideoWindowBinding bind(@NonNull View view) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.close);
        if (imageView != null) {
            i10 = R.id.ended;
            TextView textView = (TextView) ViewBindings.a(view, R.id.ended);
            if (textView != null) {
                i10 = R.id.video_call_layout;
                LiveCallingLayout liveCallingLayout = (LiveCallingLayout) ViewBindings.a(view, R.id.video_call_layout);
                if (liveCallingLayout != null) {
                    i10 = R.id.video_min_main;
                    VideoParticipantLayout videoParticipantLayout = (VideoParticipantLayout) ViewBindings.a(view, R.id.video_min_main);
                    if (videoParticipantLayout != null) {
                        i10 = R.id.video_mini_container;
                        VideoMainLayout videoMainLayout = (VideoMainLayout) ViewBindings.a(view, R.id.video_mini_container);
                        if (videoMainLayout != null) {
                            i10 = R.id.warning;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.warning);
                            if (textView2 != null) {
                                return new FloatingVideoWindowBinding((VideoFloatingLayout) view, imageView, textView, liveCallingLayout, videoParticipantLayout, videoMainLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

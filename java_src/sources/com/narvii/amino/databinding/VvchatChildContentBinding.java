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
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class VvchatChildContentBinding implements ViewBinding {

    @NonNull
    public final FrameLayout channelMiniContent;

    @NonNull
    public final FrameLayout channelOverlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SpinningView rtcLanding;

    @NonNull
    public final FrameLayout subChannelFrame;

    @NonNull
    public final FrameLayout vvContent;

    @NonNull
    public static VvchatChildContentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static VvchatChildContentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.vvchat_child_content, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private VvchatChildContentBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout4, @NonNull FrameLayout frameLayout5) {
        this.rootView = frameLayout;
        this.channelMiniContent = frameLayout2;
        this.channelOverlay = frameLayout3;
        this.rtcLanding = spinningView;
        this.subChannelFrame = frameLayout4;
        this.vvContent = frameLayout5;
    }

    @NonNull
    public static VvchatChildContentBinding bind(@NonNull View view) {
        int i10 = R.id.channel_mini_content;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.channel_mini_content);
        if (frameLayout != null) {
            i10 = R.id.channel_overlay;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.channel_overlay);
            if (frameLayout2 != null) {
                i10 = R.id.rtc_landing;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.rtc_landing);
                if (spinningView != null) {
                    i10 = R.id.sub_channel_frame;
                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.sub_channel_frame);
                    if (frameLayout3 != null) {
                        FrameLayout frameLayout4 = (FrameLayout) view;
                        return new VvchatChildContentBinding(frameLayout4, frameLayout, frameLayout2, spinningView, frameLayout3, frameLayout4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

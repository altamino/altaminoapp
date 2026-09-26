package com.narvii.amino.databinding;

import android.R;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentHeadlineListLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout videoOverlay;

    @NonNull
    public static FragmentHeadlineListLayoutBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.progress;
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
        if (spinningView != null) {
            i10 = com.narvii.amino.master.R.id.video_overlay;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, com.narvii.amino.master.R.id.video_overlay);
            if (frameLayout2 != null) {
                return new FragmentHeadlineListLayoutBinding(frameLayout, frameLayout, spinningView, frameLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentHeadlineListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentHeadlineListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(com.narvii.amino.master.R.layout.fragment_headline_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentHeadlineListLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.listFrame = frameLayout2;
        this.progress = spinningView;
        this.videoOverlay = frameLayout3;
    }
}

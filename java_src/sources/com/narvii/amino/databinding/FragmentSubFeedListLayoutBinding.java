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
public final class FragmentSubFeedListLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout attachFragment;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout videoOverlay;

    @NonNull
    public static FragmentSubFeedListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSubFeedListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_sub_feed_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSubFeedListLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout4) {
        this.rootView = frameLayout;
        this.attachFragment = frameLayout2;
        this.listFrame = frameLayout3;
        this.progress = spinningView;
        this.videoOverlay = frameLayout4;
    }

    @NonNull
    public static FragmentSubFeedListLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.attach_fragment;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.attach_fragment);
        if (frameLayout != null) {
            FrameLayout frameLayout2 = (FrameLayout) view;
            i10 = android.R.id.progress;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
            if (spinningView != null) {
                i10 = R.id.video_overlay;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.video_overlay);
                if (frameLayout3 != null) {
                    return new FragmentSubFeedListLayoutBinding(frameLayout2, frameLayout, frameLayout2, spinningView, frameLayout3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

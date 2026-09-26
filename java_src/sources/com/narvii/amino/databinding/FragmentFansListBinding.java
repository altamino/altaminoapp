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
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentFansListBinding implements ViewBinding {

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final OverlayLayout overlay;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentFansListBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.overlay;
        OverlayLayout overlayLayout = (OverlayLayout) ViewBindings.a(view, R.id.overlay);
        if (overlayLayout != null) {
            i10 = android.R.id.progress;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
            if (spinningView != null) {
                return new FragmentFansListBinding(frameLayout, frameLayout, overlayLayout, spinningView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentFansListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentFansListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_fans_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentFansListBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull OverlayLayout overlayLayout, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.listFrame = frameLayout2;
        this.overlay = overlayLayout;
        this.progress = spinningView;
    }
}

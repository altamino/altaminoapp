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
import com.narvii.widget.SlideshowView;

/* JADX INFO: loaded from: classes8.dex */
public final class LayoutFragmentAchievementsBinding implements ViewBinding {

    @NonNull
    public final View bg;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SlideshowView slideshow;

    @NonNull
    public static LayoutFragmentAchievementsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutFragmentAchievementsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_fragment_achievements, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutFragmentAchievementsBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull SlideshowView slideshowView) {
        this.rootView = frameLayout;
        this.bg = view;
        this.slideshow = slideshowView;
    }

    @NonNull
    public static LayoutFragmentAchievementsBinding bind(@NonNull View view) {
        int i10 = R.id.bg;
        View viewA = ViewBindings.a(view, R.id.bg);
        if (viewA != null) {
            i10 = R.id.slideshow;
            SlideshowView slideshowView = (SlideshowView) ViewBindings.a(view, R.id.slideshow);
            if (slideshowView != null) {
                return new LayoutFragmentAchievementsBinding((FrameLayout) view, viewA, slideshowView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

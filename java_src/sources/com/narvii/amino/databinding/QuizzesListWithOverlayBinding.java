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
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes9.dex */
public final class QuizzesListWithOverlayBinding implements ViewBinding {

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final OverlayLayout overlay;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public static QuizzesListWithOverlayBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.overlay;
        OverlayLayout overlayLayout = (OverlayLayout) ViewBindings.a(view, R.id.overlay);
        if (overlayLayout != null) {
            i10 = android.R.id.progress;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
            if (spinningView != null) {
                i10 = R.id.swipe_refresh;
                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.a(view, R.id.swipe_refresh);
                if (swipeRefreshLayout != null) {
                    return new QuizzesListWithOverlayBinding(frameLayout, frameLayout, overlayLayout, spinningView, swipeRefreshLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static QuizzesListWithOverlayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizzesListWithOverlayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quizzes_list_with_overlay, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizzesListWithOverlayBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull OverlayLayout overlayLayout, @NonNull SpinningView spinningView, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.rootView = frameLayout;
        this.listFrame = frameLayout2;
        this.overlay = overlayLayout;
        this.progress = spinningView;
        this.swipeRefresh = swipeRefreshLayout;
    }
}

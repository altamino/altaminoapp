package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.widget.FullscreenBackgroundView;

/* JADX INFO: loaded from: classes8.dex */
public final class ListOverlayUserLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout FrameLayoutRoot;

    @NonNull
    public final TextView activate;

    @NonNull
    public final FullscreenBackgroundView background;

    @NonNull
    public final DetailDisabledBarBinding disabledBar;

    @NonNull
    public final LinearLayout notActivated;

    @NonNull
    public final OverlayLayout overlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public static ListOverlayUserLayoutBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.activate;
        TextView textView = (TextView) ViewBindings.a(view, R.id.activate);
        if (textView != null) {
            i10 = R.id.background;
            FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) ViewBindings.a(view, R.id.background);
            if (fullscreenBackgroundView != null) {
                i10 = R.id.disabled_bar;
                View viewA = ViewBindings.a(view, R.id.disabled_bar);
                if (viewA != null) {
                    DetailDisabledBarBinding detailDisabledBarBindingBind = DetailDisabledBarBinding.bind(viewA);
                    i10 = R.id.not_activated;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.not_activated);
                    if (linearLayout != null) {
                        i10 = R.id.overlay;
                        OverlayLayout overlayLayout = (OverlayLayout) ViewBindings.a(view, R.id.overlay);
                        if (overlayLayout != null) {
                            i10 = R.id.swipe_refresh;
                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.a(view, R.id.swipe_refresh);
                            if (swipeRefreshLayout != null) {
                                return new ListOverlayUserLayoutBinding(frameLayout, frameLayout, textView, fullscreenBackgroundView, detailDisabledBarBindingBind, linearLayout, overlayLayout, swipeRefreshLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ListOverlayUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ListOverlayUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.list_overlay_user_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ListOverlayUserLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull FullscreenBackgroundView fullscreenBackgroundView, @NonNull DetailDisabledBarBinding detailDisabledBarBinding, @NonNull LinearLayout linearLayout, @NonNull OverlayLayout overlayLayout, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.rootView = frameLayout;
        this.FrameLayoutRoot = frameLayout2;
        this.activate = textView;
        this.background = fullscreenBackgroundView;
        this.disabledBar = detailDisabledBarBinding;
        this.notActivated = linearLayout;
        this.overlay = overlayLayout;
        this.swipeRefresh = swipeRefreshLayout;
    }
}

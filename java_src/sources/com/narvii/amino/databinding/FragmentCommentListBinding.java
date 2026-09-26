package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.FullscreenBackgroundView;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentCommentListBinding implements ViewBinding {

    @NonNull
    public final OverlayListPlaceholder actionBarOverlay;

    @NonNull
    public final FullscreenBackgroundView background;

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final OverlayListPlaceholder fakeActionBar;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentCommentListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentCommentListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_comment_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentCommentListBinding(@NonNull LinearLayout linearLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull FullscreenBackgroundView fullscreenBackgroundView, @NonNull RealtimeBlurView realtimeBlurView, @NonNull OverlayListPlaceholder overlayListPlaceholder2) {
        this.rootView = linearLayout;
        this.actionBarOverlay = overlayListPlaceholder;
        this.background = fullscreenBackgroundView;
        this.blur = realtimeBlurView;
        this.fakeActionBar = overlayListPlaceholder2;
    }

    @NonNull
    public static FragmentCommentListBinding bind(@NonNull View view) {
        int i10 = R.id.action_bar_overlay;
        OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.action_bar_overlay);
        if (overlayListPlaceholder != null) {
            i10 = R.id.background;
            FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) ViewBindings.a(view, R.id.background);
            if (fullscreenBackgroundView != null) {
                i10 = R.id.blur;
                RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur);
                if (realtimeBlurView != null) {
                    i10 = R.id.fake_action_bar;
                    OverlayListPlaceholder overlayListPlaceholder2 = (OverlayListPlaceholder) ViewBindings.a(view, R.id.fake_action_bar);
                    if (overlayListPlaceholder2 != null) {
                        return new FragmentCommentListBinding((LinearLayout) view, overlayListPlaceholder, fullscreenBackgroundView, realtimeBlurView, overlayListPlaceholder2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

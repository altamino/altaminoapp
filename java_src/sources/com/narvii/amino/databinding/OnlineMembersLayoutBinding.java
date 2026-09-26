package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class OnlineMembersLayoutBinding implements ViewBinding {

    @NonNull
    public final RealtimeBlurView blurBg;

    @NonNull
    public final FrameLayout create;

    @NonNull
    public final View darkThemeOverlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVImageView themeBackground;

    @NonNull
    public static OnlineMembersLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static OnlineMembersLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.online_members_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private OnlineMembersLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull RealtimeBlurView realtimeBlurView, @NonNull FrameLayout frameLayout2, @NonNull View view, @NonNull NVImageView nVImageView) {
        this.rootView = frameLayout;
        this.blurBg = realtimeBlurView;
        this.create = frameLayout2;
        this.darkThemeOverlay = view;
        this.themeBackground = nVImageView;
    }

    @NonNull
    public static OnlineMembersLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.blur_bg;
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur_bg);
        if (realtimeBlurView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i10 = R.id.dark_theme_overlay;
            View viewA = ViewBindings.a(view, R.id.dark_theme_overlay);
            if (viewA != null) {
                i10 = R.id.theme_background;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.theme_background);
                if (nVImageView != null) {
                    return new OnlineMembersLayoutBinding(frameLayout, realtimeBlurView, frameLayout, viewA, nVImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

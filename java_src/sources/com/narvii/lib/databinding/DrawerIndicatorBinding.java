package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class DrawerIndicatorBinding implements ViewBinding {

    @NonNull
    public final TintButton indicatorBg;

    @NonNull
    public final FrameLayout indicatorClickArea;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DrawerIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerIndicatorBinding bind(@NonNull View view) {
        int i10 = R.id.indicator_bg;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            i10 = R.id.indicator_click_area;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                return new DrawerIndicatorBinding((LinearLayout) view, tintButton, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DrawerIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_indicator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerIndicatorBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.indicatorBg = tintButton;
        this.indicatorClickArea = frameLayout;
    }
}

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
import com.narvii.master.MasterAppearanceView;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentMasterThemeBinding implements ViewBinding {

    @NonNull
    public final MasterAppearanceView masterBackground;

    @NonNull
    public final View masterBackgroundOverlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentMasterThemeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMasterThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_master_theme, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMasterThemeBinding(@NonNull FrameLayout frameLayout, @NonNull MasterAppearanceView masterAppearanceView, @NonNull View view) {
        this.rootView = frameLayout;
        this.masterBackground = masterAppearanceView;
        this.masterBackgroundOverlay = view;
    }

    @NonNull
    public static FragmentMasterThemeBinding bind(@NonNull View view) {
        int i10 = R.id.master_background;
        MasterAppearanceView masterAppearanceView = (MasterAppearanceView) ViewBindings.a(view, R.id.master_background);
        if (masterAppearanceView != null) {
            i10 = R.id.master_background_overlay;
            View viewA = ViewBindings.a(view, R.id.master_background_overlay);
            if (viewA != null) {
                return new FragmentMasterThemeBinding((FrameLayout) view, masterAppearanceView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

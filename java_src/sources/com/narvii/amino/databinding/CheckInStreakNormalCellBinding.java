package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes.dex */
public final class CheckInStreakNormalCellBinding implements ViewBinding {

    @NonNull
    public final View bg;

    @NonNull
    public final View green;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final FrameLayout mainLayout;

    @NonNull
    public final FrameLayout notCheckedToday;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ImageView white;

    @NonNull
    public static CheckInStreakNormalCellBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CheckInStreakNormalCellBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.check_in_streak_normal_cell, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CheckInStreakNormalCellBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull View view2, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.bg = view;
        this.green = view2;
        this.icon = imageView;
        this.mainLayout = frameLayout2;
        this.notCheckedToday = frameLayout3;
        this.white = imageView2;
    }

    @NonNull
    public static CheckInStreakNormalCellBinding bind(@NonNull View view) {
        int i10 = R.id.bg;
        View viewA = ViewBindings.a(view, R.id.bg);
        if (viewA != null) {
            i10 = R.id.green;
            View viewA2 = ViewBindings.a(view, R.id.green);
            if (viewA2 != null) {
                i10 = R.id.icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
                if (imageView != null) {
                    i10 = R.id.main_layout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.main_layout);
                    if (frameLayout != null) {
                        i10 = R.id.not_checked_today;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.not_checked_today);
                        if (frameLayout2 != null) {
                            i10 = R.id.white;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.white);
                            if (imageView2 != null) {
                                return new CheckInStreakNormalCellBinding((FrameLayout) view, viewA, viewA2, imageView, frameLayout, frameLayout2, imageView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

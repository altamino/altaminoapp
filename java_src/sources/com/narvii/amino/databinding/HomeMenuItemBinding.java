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
import com.narvii.widget.ScaleView;

/* JADX INFO: loaded from: classes7.dex */
public final class HomeMenuItemBinding implements ViewBinding {

    @NonNull
    public final ScaleView homeMenuActionView;

    @NonNull
    public final ImageView homeMenuIcon;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static HomeMenuItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HomeMenuItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.home_menu_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HomeMenuItemBinding(@NonNull FrameLayout frameLayout, @NonNull ScaleView scaleView, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.homeMenuActionView = scaleView;
        this.homeMenuIcon = imageView;
    }

    @NonNull
    public static HomeMenuItemBinding bind(@NonNull View view) {
        int i10 = R.id.home_menu_action_view;
        ScaleView scaleView = (ScaleView) ViewBindings.a(view, R.id.home_menu_action_view);
        if (scaleView != null) {
            i10 = R.id.home_menu_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.home_menu_icon);
            if (imageView != null) {
                return new HomeMenuItemBinding((FrameLayout) view, scaleView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes6.dex */
public final class FavoriteUserSectionHeaderBinding implements ViewBinding {

    @NonNull
    public final ImageView icon;

    @NonNull
    public final TintButton manage;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static FavoriteUserSectionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FavoriteUserSectionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.favorite_user_section_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FavoriteUserSectionHeaderBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TintButton tintButton) {
        this.rootView = relativeLayout;
        this.icon = imageView;
        this.manage = tintButton;
    }

    @NonNull
    public static FavoriteUserSectionHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
        if (imageView != null) {
            i10 = R.id.manage;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.manage);
            if (tintButton != null) {
                return new FavoriteUserSectionHeaderBinding((RelativeLayout) view, imageView, tintButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

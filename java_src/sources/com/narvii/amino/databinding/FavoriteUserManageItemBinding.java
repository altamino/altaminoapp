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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes6.dex */
public final class FavoriteUserManageItemBinding implements ViewBinding {

    @NonNull
    public final TintButton button;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FavoriteUserManageItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FavoriteUserManageItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.favorite_user_manage_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FavoriteUserManageItemBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton) {
        this.rootView = frameLayout;
        this.button = tintButton;
    }

    @NonNull
    public static FavoriteUserManageItemBinding bind(@NonNull View view) {
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.button);
        if (tintButton != null) {
            return new FavoriteUserManageItemBinding((FrameLayout) view, tintButton);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.button)));
    }
}

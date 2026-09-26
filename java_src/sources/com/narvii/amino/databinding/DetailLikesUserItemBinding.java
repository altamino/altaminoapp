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

/* JADX INFO: loaded from: classes8.dex */
public final class DetailLikesUserItemBinding implements ViewBinding {

    @NonNull
    public final ImageView avatarBadge;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DetailLikesUserItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailLikesUserItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_likes_user_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailLikesUserItemBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.avatarBadge = imageView;
    }

    @NonNull
    public static DetailLikesUserItemBinding bind(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.avatar_badge);
        if (imageView != null) {
            return new DetailLikesUserItemBinding((FrameLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.avatar_badge)));
    }
}

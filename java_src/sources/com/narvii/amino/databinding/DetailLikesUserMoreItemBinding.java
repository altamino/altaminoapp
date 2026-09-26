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
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class DetailLikesUserMoreItemBinding implements ViewBinding {

    @NonNull
    public final ImageView avatarBadge;

    @NonNull
    public final FontAwesomeView more;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DetailLikesUserMoreItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailLikesUserMoreItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_likes_user_more_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailLikesUserMoreItemBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = frameLayout;
        this.avatarBadge = imageView;
        this.more = fontAwesomeView;
    }

    @NonNull
    public static DetailLikesUserMoreItemBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_badge;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.avatar_badge);
        if (imageView != null) {
            i10 = R.id.more;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.more);
            if (fontAwesomeView != null) {
                return new DetailLikesUserMoreItemBinding((FrameLayout) view, imageView, fontAwesomeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

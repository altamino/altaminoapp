package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemPostMediaBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView photo;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final ImageView select;

    @NonNull
    public static ItemPostMediaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPostMediaBinding bind(@NonNull View view) {
        int i10 = R.id.photo;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
        if (thumbImageView != null) {
            i10 = R.id.select;
            ImageView imageView = (ImageView) ViewBindings.a(view, i10);
            if (imageView != null) {
                return new ItemPostMediaBinding((FlexLayout) view, thumbImageView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemPostMediaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_post_media, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemPostMediaBinding(@NonNull FlexLayout flexLayout, @NonNull ThumbImageView thumbImageView, @NonNull ImageView imageView) {
        this.rootView = flexLayout;
        this.photo = thumbImageView;
        this.select = imageView;
    }
}

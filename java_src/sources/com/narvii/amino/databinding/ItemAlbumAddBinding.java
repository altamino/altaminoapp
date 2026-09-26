package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemAlbumAddBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView cover;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemAlbumAddBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemAlbumAddBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_album_add, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemAlbumAddBinding(@NonNull FlexLayout flexLayout, @NonNull ThumbImageView thumbImageView) {
        this.rootView = flexLayout;
        this.cover = thumbImageView;
    }

    @NonNull
    public static ItemAlbumAddBinding bind(@NonNull View view) {
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.cover);
        if (thumbImageView != null) {
            return new ItemAlbumAddBinding((FlexLayout) view, thumbImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.cover)));
    }
}

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

/* JADX INFO: loaded from: classes7.dex */
public final class ItemSummarySharedPhotoBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView photo;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemSummarySharedPhotoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSummarySharedPhotoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_summary_shared_photo, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSummarySharedPhotoBinding(@NonNull FlexLayout flexLayout, @NonNull ThumbImageView thumbImageView) {
        this.rootView = flexLayout;
        this.photo = thumbImageView;
    }

    @NonNull
    public static ItemSummarySharedPhotoBinding bind(@NonNull View view) {
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.photo);
        if (thumbImageView != null) {
            return new ItemSummarySharedPhotoBinding((FlexLayout) view, thumbImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.photo)));
    }
}

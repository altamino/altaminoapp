package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemUploadMorePhotosBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FrameLayout uploadLayout;

    @NonNull
    public static ItemUploadMorePhotosBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemUploadMorePhotosBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_upload_more_photos, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemUploadMorePhotosBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.uploadLayout = frameLayout;
    }

    @NonNull
    public static ItemUploadMorePhotosBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.upload_layout);
        if (frameLayout != null) {
            return new ItemUploadMorePhotosBinding((LinearLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.upload_layout)));
    }
}

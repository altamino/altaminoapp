package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class DraftUserItemBinding implements ViewBinding {

    @NonNull
    public final ImageView delete;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DraftUserItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DraftUserItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.draft_user_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DraftUserItemBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ThumbImageView thumbImageView) {
        this.rootView = linearLayout;
        this.delete = imageView;
        this.image = thumbImageView;
    }

    @NonNull
    public static DraftUserItemBinding bind(@NonNull View view) {
        int i10 = R.id.delete;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.delete);
        if (imageView != null) {
            i10 = R.id.image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
            if (thumbImageView != null) {
                return new DraftUserItemBinding((LinearLayout) view, imageView, thumbImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

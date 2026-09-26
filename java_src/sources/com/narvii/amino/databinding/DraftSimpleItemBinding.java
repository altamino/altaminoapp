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

/* JADX INFO: loaded from: classes11.dex */
public final class DraftSimpleItemBinding implements ViewBinding {

    @NonNull
    public final ImageView delete;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final ImageView playButton;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DraftSimpleItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DraftSimpleItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.draft_simple_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DraftSimpleItemBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ThumbImageView thumbImageView, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.delete = imageView;
        this.image = thumbImageView;
        this.playButton = imageView2;
    }

    @NonNull
    public static DraftSimpleItemBinding bind(@NonNull View view) {
        int i10 = R.id.delete;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.delete);
        if (imageView != null) {
            i10 = R.id.image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
            if (thumbImageView != null) {
                i10 = R.id.play_button;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.play_button);
                if (imageView2 != null) {
                    return new DraftSimpleItemBinding((LinearLayout) view, imageView, thumbImageView, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

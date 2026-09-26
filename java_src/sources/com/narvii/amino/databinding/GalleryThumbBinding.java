package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class GalleryThumbBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView image;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static GalleryThumbBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GalleryThumbBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.gallery_thumb, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GalleryThumbBinding(@NonNull FrameLayout frameLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.image = thumbImageView;
        this.text = textView;
    }

    @NonNull
    public static GalleryThumbBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
        if (thumbImageView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.text);
            if (textView != null) {
                return new GalleryThumbBinding((FrameLayout) view, thumbImageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class MediaOrganizeListItemBinding implements ViewBinding {

    @NonNull
    public final ImageView coverMark;

    @NonNull
    public final ImageView edit;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final TextView mask;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static MediaOrganizeListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaOrganizeListItemBinding bind(@NonNull View view) {
        int i10 = R.id.cover_mark;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.edit;
            ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
            if (imageView2 != null) {
                i10 = R.id.image;
                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
                if (thumbImageView != null) {
                    i10 = R.id.mask;
                    TextView textView = (TextView) ViewBindings.a(view, i10);
                    if (textView != null) {
                        i10 = R.id.text;
                        TextView textView2 = (TextView) ViewBindings.a(view, i10);
                        if (textView2 != null) {
                            return new MediaOrganizeListItemBinding((FrameLayout) view, imageView, imageView2, thumbImageView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaOrganizeListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_organize_list_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaOrganizeListItemBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.coverMark = imageView;
        this.edit = imageView2;
        this.image = thumbImageView;
        this.mask = textView;
        this.text = textView2;
    }
}

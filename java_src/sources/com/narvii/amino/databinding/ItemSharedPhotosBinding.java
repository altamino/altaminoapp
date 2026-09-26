package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemSharedPhotosBinding implements ViewBinding {

    @NonNull
    public final LinearLayout disabledAmino;

    @NonNull
    public final View disabledOverlay;

    @NonNull
    public final TextView newText;

    @NonNull
    public final ThumbImageView photo;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final ImageView select;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemSharedPhotosBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSharedPhotosBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_shared_photos, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSharedPhotosBinding(@NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.rootView = flexLayout;
        this.disabledAmino = linearLayout;
        this.disabledOverlay = view;
        this.newText = textView;
        this.photo = thumbImageView;
        this.select = imageView;
        this.title = textView2;
    }

    @NonNull
    public static ItemSharedPhotosBinding bind(@NonNull View view) {
        int i10 = R.id.disabled_amino;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.disabled_amino);
        if (linearLayout != null) {
            i10 = R.id.disabled_overlay;
            View viewA = ViewBindings.a(view, R.id.disabled_overlay);
            if (viewA != null) {
                i10 = R.id.new_text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.new_text);
                if (textView != null) {
                    i10 = R.id.photo;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.photo);
                    if (thumbImageView != null) {
                        i10 = R.id.select;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.select);
                        if (imageView != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                return new ItemSharedPhotosBinding((FlexLayout) view, linearLayout, viewA, textView, thumbImageView, imageView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

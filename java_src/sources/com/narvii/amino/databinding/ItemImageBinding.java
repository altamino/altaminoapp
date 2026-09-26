package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemImageBinding implements ViewBinding {

    @NonNull
    public final TextView caption;

    @NonNull
    public final NVImageView image;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_image, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemImageBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull NVImageView nVImageView) {
        this.rootView = flexLayout;
        this.caption = textView;
        this.image = nVImageView;
    }

    @NonNull
    public static ItemImageBinding bind(@NonNull View view) {
        int i10 = R.id.caption;
        TextView textView = (TextView) ViewBindings.a(view, R.id.caption);
        if (textView != null) {
            i10 = R.id.image;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image);
            if (nVImageView != null) {
                return new ItemImageBinding((FlexLayout) view, textView, nVImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
